import 'package:bloc_test/bloc_test.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';
import 'package:pokedex/features/all_pokemons/cubit/all_pokemons_cubit.dart';
import 'package:pokedex/features/all_pokemons/domain/repositories/all_pokemons_repository.dart';
import 'package:pokedex/shared/data/services/api_service/api_service.dart';

import '../../helpers/test_data.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  final dio = Dio();
  final dioAdapter = DioAdapter(dio: dio);
  dio.httpClientAdapter = dioAdapter;

  dioAdapter
    ..onGet(
      'https://pokeapi.co/api/v2/pokemon',
      (request) => request.reply(200, testGetPokemonResponse),
    )
    ..onGet(
      'https://pokeapi.co/api/v2/pokemon/1/',
      (request) => request.reply(200, testFirstPokemon),
    )
    ..onGet(
      'https://pokeapi.co/api/v2/pokemon/2/',
      (request) => request.reply(200, testSecondPokemon),
    );

  group('AllPokemonsCubit', () {
    final repository = AllPokemonsRepository(apiService: ApiService(dio: dio));

    test('initial pokemons are empty', () {
      expect(
        AllPokemonsCubit(allPokemonsRepository: repository).state.pokemons,
        equals([]),
      );
    });

    blocTest<AllPokemonsCubit, AllPokemonsState>(
      'return pokemons when getPokemons() is called',
      build: () => AllPokemonsCubit(allPokemonsRepository: repository),
      act: (cubit) => cubit.getPokemons(),
      skip: 0,
      expect: () => [
        isA<AllPokemonsState>().having(
          (state) => state.status,
          'status',
          equals(AllPokemonsStateStatus.loading),
        ),
        isA<AllPokemonsState>()
            .having((state) => state.pokemons, 'pokemons', isNotEmpty)
      ],
    );
  });
}
