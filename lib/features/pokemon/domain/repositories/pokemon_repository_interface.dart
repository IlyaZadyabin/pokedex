import 'package:pokedex/shared/data/models/pokemon.dart';

abstract class PokemonRepositoryInterface {
  void removePokemonFromFavorites(Pokemon pokemon);
  void savePokemonToFavorites(Pokemon pokemon);
  bool isFavorite(Pokemon pokemon);
}
