part of 'all_pokemons_cubit.dart';

enum AllPokemonsStateStatus { result, loading, error }

@freezed
class AllPokemonsState with _$AllPokemonsState {
  const factory AllPokemonsState({
    @Default([]) List<Pokemon> pokemons,
    @Default(0) int offset,
    @Default(true) bool isMoreDataAvailable,
    @Default(AllPokemonsStateStatus.result) AllPokemonsStateStatus status,
  }) = _AllPokemonsState;
}
