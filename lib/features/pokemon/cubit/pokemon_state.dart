part of 'pokemon_cubit.dart';

@freezed
class PokemonState with _$PokemonState {
  const factory PokemonState({
    required Pokemon pokemon,
    @Default(false) bool isFavorite,
  }) = _PokemonState;
}
