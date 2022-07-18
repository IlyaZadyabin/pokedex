import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokedex/shared/data/models/pokemon.dart';

part 'pokemons_response.freezed.dart';
part 'pokemons_response.g.dart';

@freezed
class PokemonsResponse with _$PokemonsResponse {
  const factory PokemonsResponse({
    required int count,
    required String? nextUrl,
    required String? previousUrl,
    required List<Pokemon> pokemons,
  }) = _PokemonsResponse;

  factory PokemonsResponse.fromJson(Map<String, Object?> json) =>
      _$PokemonsResponseFromJson(json);
}
