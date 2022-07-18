import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokedex/features/pokemon/domain/repositories/pokemon_repository_interface.dart';
import 'package:pokedex/shared/data/models/pokemon.dart';

part 'pokemon_cubit.freezed.dart';
part 'pokemon_state.dart';

class PokemonCubit extends Cubit<PokemonState> {
  PokemonCubit({required Pokemon pokemon, required this.pokemonRepository})
      : super(PokemonState(pokemon: pokemon)) {
    emit(state.copyWith(isFavorite: pokemonRepository.isFavorite(pokemon)));
  }

  final PokemonRepositoryInterface pokemonRepository;

  void removePokemonFromFavorites() {
    pokemonRepository.removePokemonFromFavorites(state.pokemon);
    emit(state.copyWith(isFavorite: false));
  }

  void savePokemonToFavorites() {
    pokemonRepository.savePokemonToFavorites(state.pokemon);
    emit(state.copyWith(isFavorite: true));
  }
}
