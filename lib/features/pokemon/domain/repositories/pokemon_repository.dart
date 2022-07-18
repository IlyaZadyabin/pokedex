import 'package:pokedex/features/pokemon/domain/repositories/pokemon_repository_interface.dart';
import 'package:pokedex/shared/data/models/pokemon.dart';
import 'package:pokedex/shared/data/services/db_service/db_service_interface.dart';

class PokemonRepository implements PokemonRepositoryInterface {
  PokemonRepository({required this.dbService});

  final DBServiceInterface dbService;

  @override
  void removePokemonFromFavorites(Pokemon pokemon) {
    dbService.removePokemonFromFavorites(pokemon: pokemon);
  }

  @override
  void savePokemonToFavorites(Pokemon pokemon) {
    dbService.savePokemonToFavorites(pokemon: pokemon);
  }

  @override
  bool isFavorite(Pokemon pokemon) {
    return dbService.isContainsElement(pokemon: pokemon);
  }
}
