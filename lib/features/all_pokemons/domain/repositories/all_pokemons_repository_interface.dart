import 'package:dartz/dartz.dart';
import 'package:pokedex/core/error_handling/failure.dart';
import 'package:pokedex/shared/data/models/pokemon.dart';
import 'package:pokedex/shared/data/models/pokemons_response.dart';

abstract class AllPokemonsRepositoryInterface {
  Future<Either<Failure, PokemonsResponse>> getPokemons({
    int limit,
    int offset,
  });

  Future<Pokemon> getPokemon({required int id});
}
