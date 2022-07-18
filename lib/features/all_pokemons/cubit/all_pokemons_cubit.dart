import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokedex/features/all_pokemons/domain/repositories/all_pokemons_repository_interface.dart';
import 'package:pokedex/shared/data/models/pokemon.dart';

part 'all_pokemons_cubit.freezed.dart';
part 'all_pokemons_state.dart';

class AllPokemonsCubit extends Cubit<AllPokemonsState> {
  AllPokemonsCubit({required this.allPokemonsRepository})
      : super(const AllPokemonsState());

  final AllPokemonsRepositoryInterface allPokemonsRepository;

  Future<void> getPokemons() async {
    if (state.status != AllPokemonsStateStatus.loading) {
      emit(state.copyWith(status: AllPokemonsStateStatus.loading));

      final response = await allPokemonsRepository.getPokemons(
        offset: state.offset,
        limit: 20,
      );

      response.fold((failure) {
        emit(state.copyWith(status: AllPokemonsStateStatus.error));
      }, (response) {
        final newPokemons = [...state.pokemons, ...response.pokemons];

        emit(
          state.copyWith(
            offset: newPokemons.length - 1,
            isMoreDataAvailable: response.nextUrl != null,
            pokemons: newPokemons,
            status: AllPokemonsStateStatus.result,
          ),
        );
      });
    }
  }
}
