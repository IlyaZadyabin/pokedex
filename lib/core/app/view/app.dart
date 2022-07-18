import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get_it/get_it.dart';
import 'package:pokedex/features/all_pokemons/cubit/all_pokemons_cubit.dart';
import 'package:pokedex/features/all_pokemons/domain/repositories/all_pokemons_repository.dart';
import 'package:pokedex/features/all_pokemons/domain/repositories/all_pokemons_repository_interface.dart';
import 'package:pokedex/features/favorites/cubit/favorites_cubit.dart';
import 'package:pokedex/l10n/l10n.dart';
import 'package:pokedex/shared/config/core_styles.dart';
import 'package:pokedex/shared/config/go_router.dart';
import 'package:pokedex/shared/data/services/api_service/api_service.dart';
import 'package:pokedex/shared/data/services/api_service/api_service_interface.dart';
import 'package:pokedex/shared/data/services/db_service/db_service.dart';
import 'package:pokedex/shared/data/services/db_service/db_service_interface.dart';

GetIt getIt = GetIt.instance;

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  /// Services
  late Dio dio;
  late ApiServiceInterface _apiService;
  late DBServiceInterface _dbService;

  /// Repositories
  late AllPokemonsRepositoryInterface _allPokemonsRepository;

  @override
  void initState() {
    super.initState();

    /// Register dependencies
    getIt.registerLazySingleton<DBService>(DBService.new);

    dio = Dio();

    /// Services initializations
    _apiService = ApiService(dio: dio);
    _dbService = getIt.get<DBService>();

    /// Repositories initializations
    _allPokemonsRepository = AllPokemonsRepository(apiService: _apiService);
  }

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider<AllPokemonsRepositoryInterface>.value(
          value: _allPokemonsRepository,
        ),
        RepositoryProvider<DBServiceInterface>.value(value: _dbService),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider<AllPokemonsCubit>(
            create: (context) => AllPokemonsCubit(
              allPokemonsRepository: _allPokemonsRepository,
            ),
          ),
          BlocProvider<FavoritesCubit>(
            create: (context) => FavoritesCubit(
              dbService: _dbService,
              allPokemonsRepository: _allPokemonsRepository,
            ),
          ),
        ],
        child: MaterialApp.router(
          debugShowCheckedModeBanner: false,
          routeInformationParser: goRouter.routeInformationParser,
          routerDelegate: goRouter.routerDelegate,
          routeInformationProvider: goRouter.routeInformationProvider,
          theme: ThemeData(
            textTheme: CoreStyles.textTheme,
            useMaterial3: true,
          ),
          localizationsDelegates: const [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
          ],
          supportedLocales: AppLocalizations.supportedLocales,
        ),
      ),
    );
  }
}
