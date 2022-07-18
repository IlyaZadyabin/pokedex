import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:pokedex/features/all_pokemons/cubit/all_pokemons_cubit.dart';
import 'package:pokedex/features/all_pokemons/domain/repositories/all_pokemons_repository.dart';
import 'package:pokedex/features/all_pokemons/domain/repositories/all_pokemons_repository_interface.dart';
import 'package:pokedex/features/all_pokemons/view/screens/all_pokemons_screen.dart';
import 'package:pokedex/shared/data/models/pokemon.dart';
import 'package:pokedex/shared/data/models/pokemons_response.dart';

import '../../helpers/helpers.dart';

class MockAllPokemonsCubit extends MockCubit<AllPokemonsState>
    implements AllPokemonsCubit {
  MockAllPokemonsCubit({required this.allPokemonsRepository});

  @override
  final AllPokemonsRepositoryInterface allPokemonsRepository;
}

class MockRepository extends Mock implements AllPokemonsRepository {}

void main() {
  group('AllPokemonsScreen', () {
    late AllPokemonsCubit allPokemonsCubit;
    late AllPokemonsRepository repository;

    setUp(() {
      repository = MockRepository();
      allPokemonsCubit =
          MockAllPokemonsCubit(allPokemonsRepository: repository);
    });

    const mockPokemon = Pokemon(
      name: 'Bulbasaur',
      types: [],
      weight: 1,
      id: 1,
      stats: [],
      image: '',
      height: 1,
    );

    testWidgets('renders current state', (tester) async {
      const state = AllPokemonsState(pokemons: [mockPokemon]);

      when(() => repository.getPokemons()).thenAnswer(
        (_) async => Future.value(
          const Right(
            PokemonsResponse(
              pokemons: [mockPokemon],
              previousUrl: '',
              count: 1,
              nextUrl: '',
            ),
          ),
        ),
      );
      when(() => allPokemonsCubit.state).thenReturn(state);
      when(() => allPokemonsCubit.getPokemons())
          .thenAnswer((_) => Future.value());
      await tester.pumpApp(
        BlocProvider.value(
          value: allPokemonsCubit,
          child: const AllPokemonsScreen(),
        ),
      );
      expect(find.text('Bulbasaur'), findsOneWidget);
      verify(() => allPokemonsCubit.getPokemons()).called(1);
    });
  });
}
