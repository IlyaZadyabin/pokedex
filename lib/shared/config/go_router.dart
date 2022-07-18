import 'package:go_router/go_router.dart';
import 'package:pokedex/features/home/view/screens/home_screen.dart';
import 'package:pokedex/features/home/view/screens/splash_screen.dart';
import 'package:pokedex/features/pokemon/view/screens/pokemon_screen.dart';
import 'package:pokedex/shared/data/models/pokemon.dart';

final goRouter = GoRouter(
  routes: [
    GoRoute(
      name: Routes.splash,
      path: '/',
      builder: (context, state) => const SplashScreen(),
    ),
    GoRoute(
      name: Routes.home,
      path: '/home',
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      name: Routes.pokemon,
      path: '/pokemon',
      builder: (context, state) {
        final pokemon = state.extra! as Pokemon;
        return PokemonScreen(pokemon: pokemon);
      },
    ),
  ],
);

abstract class Routes {
  static const String splash = '/';
  static const String home = 'home';
  static const String pokemon = 'pokemon';
}
