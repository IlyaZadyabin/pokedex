import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokedex/features/all_pokemons/view/screens/all_pokemons_screen.dart';
import 'package:pokedex/features/favorites/cubit/favorites_cubit.dart';
import 'package:pokedex/features/favorites/view/screens/favorites_screen.dart';
import 'package:pokedex/gen/assets.gen.dart';
import 'package:pokedex/l10n/l10n.dart';
import 'package:pokedex/shared/config/core_styles.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CoreStyles.grey,
      body: DefaultTabController(
        length: 2,
        child: NestedScrollView(
          headerSliverBuilder: (context, value) {
            return [
              SliverAppBar(
                backgroundColor: CoreStyles.white,
                title: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Assets.launcherIcon.image(width: 24, height: 24),
                        const SizedBox(width: 8),
                        Text(
                          context.l10n.pokedex,
                          style: Theme.of(context)
                              .textTheme
                              .headline5
                              ?.copyWith(color: CoreStyles.black),
                        ),
                      ],
                    ),
                  ],
                ),
                floating: true,
                snap: true,
                bottom: TabBar(
                  labelStyle: Theme.of(context).textTheme.subtitle1,
                  unselectedLabelColor: CoreStyles.darkGrey,
                  labelColor: CoreStyles.black,
                  tabs: [
                    Tab(text: context.l10n.allPokemons),
                    Tab(
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Text('Favorites'),
                          const SizedBox(width: 8),
                          Container(
                            width: 24,
                            height: 24,
                            decoration: const BoxDecoration(
                              color: CoreStyles.blue,
                              shape: BoxShape.circle,
                            ),
                            child: Center(
                              child:
                                  BlocBuilder<FavoritesCubit, FavoritesState>(
                                builder: (context, state) {
                                  return Text(
                                    '${state.favorites.length}',
                                    style: Theme.of(context)
                                        .textTheme
                                        .caption
                                        ?.copyWith(color: CoreStyles.white),
                                  );
                                },
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ];
          },
          body: const TabBarView(
            children: [
              AllPokemonsScreen(),
              FavoritesScreen(),
            ],
          ),
        ),
      ),
    );
  }
}
