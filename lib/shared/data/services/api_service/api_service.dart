import 'package:dio/dio.dart';
import 'package:pokedex/core/error_handling/exceptions.dart';
import 'package:pokedex/shared/config/api_config.dart';
import 'package:pokedex/shared/data/models/pokemon.dart';
import 'package:pokedex/shared/data/models/pokemons_response.dart';
import 'package:pokedex/shared/data/services/api_service/api_service_interface.dart';
import 'package:pokedex/shared/utils/image_util.dart';

typedef Json = Map<String, Object?>;

class ApiService implements ApiServiceInterface {
  ApiService({required this.dio});

  final Dio dio;

  Future<Pokemon> _getPokemonDetails({required String url}) async {
    try {
      final response = await dio.get<Json>(url);

      if (response.statusCode == 200 && response.data != null) {
        try {
          return Pokemon.fromJson(response.data!);
        } catch (e) {
          throw DataParsingException();
        }
      } else {
        throw ServerException();
      }
    } catch (e) {
      if ((e is ServerException) || (e is DataParsingException)) {
        rethrow;
      } else {
        throw NoConnectionException();
      }
    }
  }

  @override
  Future<PokemonsResponse> getPokemons({
    int limit = 100,
    int offset = 0,
  }) async {
    const url = ApiConfig.endpointGetPokemons;

    try {
      final response = await dio.get<Json>(
        url,
        queryParameters: {
          'limit': limit.toString(),
          'offset': offset.toString(),
        },
      );

      if (response.statusCode == 200 && response.data != null) {
        try {
          final pokemons = <Pokemon>[];
          final data = response.data!;
          final results = List<Json>.from(data['results']! as List<dynamic>);

          for (final res in results) {
            final pokemon =
                await _getPokemonDetails(url: res['url'].toString());
            pokemons.add(
              pokemon.copyWith(color: await getImagePalette(pokemon.image)),
            );
          }
          return PokemonsResponse(
            count: int.parse(data['count'].toString()),
            nextUrl: data['next'].toString(),
            previousUrl: data['previous'].toString(),
            pokemons: pokemons,
          );
        } on Exception {
          throw DataParsingException();
        }
      } else {
        throw ServerException();
      }
    } catch (e) {
      if ((e is ServerException) || (e is DataParsingException)) {
        rethrow;
      } else {
        throw NoConnectionException();
      }
    }
  }

  @override
  Future<Pokemon> getPokemon({required int id}) async {
    final url = ApiConfig.endpointGetPokemon + id.toString();
    final pokemon = await _getPokemonDetails(url: url);

    return pokemon.copyWith(
      color: await getImagePalette(pokemon.image),
    );
  }
}
