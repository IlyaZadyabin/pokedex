import 'package:dartz/dartz.dart';
import 'package:pokedex/core/error_handling/exceptions.dart';
import 'package:pokedex/core/error_handling/failure.dart';
import 'package:pokedex/features/all_pokemons/domain/repositories/all_pokemons_repository_interface.dart';
import 'package:pokedex/shared/data/models/pokemon.dart';
import 'package:pokedex/shared/data/models/pokemons_response.dart';
import 'package:pokedex/shared/data/services/api_service/api_service_interface.dart';

class AllPokemonsRepository implements AllPokemonsRepositoryInterface {
  AllPokemonsRepository({required this.apiService});

  final ApiServiceInterface apiService;

  @override
  Future<Either<Failure, PokemonsResponse>> getPokemons({
    int limit = 100,
    int offset = 0,
  }) async {
    try {
      final data = await apiService.getPokemons(limit: limit, offset: offset);
      return Right(data);
    } on ServerException {
      return const Left(Failure(message: 'server problem'));
    } on DataParsingException {
      return const Left(Failure(message: 'bad data'));
    } on NoConnectionException {
      return const Left(Failure(message: 'no connection'));
    }
  }

  @override
  Future<Pokemon> getPokemon({required int id}) {
    return apiService.getPokemon(id: id);
  }
}
