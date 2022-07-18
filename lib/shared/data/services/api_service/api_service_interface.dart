import 'package:pokedex/shared/data/models/pokemon.dart';
import 'package:pokedex/shared/data/models/pokemons_response.dart';

abstract class ApiServiceInterface {
  Future<PokemonsResponse> getPokemons({int offset, int limit});
  Future<Pokemon> getPokemon({required int id});
}
