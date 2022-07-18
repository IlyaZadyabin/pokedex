import 'package:pokedex/shared/data/models/pokemon.dart';

abstract class DBServiceInterface {
  List<Pokemon> getFavoritePokemons();

  void removePokemonFromFavorites({required Pokemon pokemon});

  void savePokemonToFavorites({required Pokemon pokemon});

  void updatePokemon({required Pokemon pokemon});

  bool isContainsElement({required Pokemon pokemon});

  Stream<void> get isDbChanged;
}
