import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokedex/features/all_pokemons/domain/repositories/all_pokemons_repository_interface.dart';
import 'package:pokedex/shared/data/models/pokemon.dart';
import 'package:pokedex/shared/data/services/db_service/db_service_interface.dart';

part 'favorites_cubit.freezed.dart';
part 'favorites_state.dart';

class FavoritesCubit extends Cubit<FavoritesState> {
  FavoritesCubit({
    required this.allPokemonsRepository,
    required this.dbService,
  }) : super(
          const FavoritesState(
            favorites: [],
            status: FavoritesStateStatus.initial,
          ),
        ) {
    _init();
  }

  Future<void> _init() async {
    await updateFavorites();

    dbService.isDbChanged.listen((favorites) {
      loadFavouritesFromDataBase();
    });
  }

  final DBServiceInterface dbService;
  final AllPokemonsRepositoryInterface allPokemonsRepository;

  Future<void> updateFavorites() async {
    emit(state.copyWith(status: FavoritesStateStatus.loading));
    final favorites = dbService.getFavoritePokemons();
    final updatedFavorites = <Pokemon>[];

    for (final favorite in favorites) {
      final pokemon = await allPokemonsRepository.getPokemon(id: favorite.id);
      dbService.updatePokemon(pokemon: pokemon);
      updatedFavorites.add(pokemon);
    }
    emit(
      state.copyWith(
        favorites: updatedFavorites,
        status: FavoritesStateStatus.initial,
      ),
    );
  }

  Future<void> loadFavouritesFromDataBase() async {
    emit(state.copyWith(status: FavoritesStateStatus.loading));

    emit(
      state.copyWith(
        favorites: dbService.getFavoritePokemons(),
        status: FavoritesStateStatus.initial,
      ),
    );
  }
}
