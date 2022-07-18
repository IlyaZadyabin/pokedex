import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokedex/features/all_pokemons/view/widgets/pokemon_card.dart';
import 'package:pokedex/features/favorites/cubit/favorites_cubit.dart';
import 'package:pokedex/l10n/l10n.dart';
import 'package:pokedex/shared/config/core_styles.dart';

class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FavoritesCubit, FavoritesState>(
      builder: (context, state) {
        if (state.status.isInitial) {
          if (state.favorites.isNotEmpty) {
            return GridView.builder(
              key: PageStorageKey(UniqueKey()),
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 10,
                mainAxisSpacing: 12,
                childAspectRatio: 0.6,
              ),
              itemCount: state.favorites.length,
              shrinkWrap: true,
              itemBuilder: (BuildContext context, int idx) =>
                  PokemonCard(pokemon: state.favorites[idx]),
            );
          } else {
            return Center(
              child: Text(
                context.l10n.noFavorites,
                style: Theme.of(context)
                    .textTheme
                    .headline4
                    ?.copyWith(color: CoreStyles.black),
              ),
            );
          }
        } else if (state.status.isLoading) {
          return const Center(child: CircularProgressIndicator());
        } else {
          return Center(
            child: Text(
              context.l10n.errorFetchingPokemons,
              style: Theme.of(context)
                  .textTheme
                  .headline4
                  ?.copyWith(color: CoreStyles.black),
            ),
          );
        }
      },
    );
  }
}
