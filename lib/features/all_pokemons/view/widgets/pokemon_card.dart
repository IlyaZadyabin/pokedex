import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pokedex/shared/config/core_styles.dart';
import 'package:pokedex/shared/config/go_router.dart';
import 'package:pokedex/shared/data/models/pokemon.dart';
import 'package:pokedex/shared/utils/local_util.dart';
import 'package:pokedex/shared/utils/number_util.dart';
import 'package:pokedex/shared/utils/string_util.dart';

class PokemonCard extends StatelessWidget {
  const PokemonCard({super.key, required this.pokemon});

  final Pokemon pokemon;

  @override
  Widget build(BuildContext context) {
    final types = capitalizedPowers(pokemon: pokemon);

    return GestureDetector(
      onTap: () => context.pushNamed(Routes.pokemon, extra: pokemon),
      child: DecoratedBox(
        decoration: const BoxDecoration(
          color: CoreStyles.white,
          borderRadius: BorderRadius.all(Radius.circular(4)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ColoredBox(
              color: pokemon.color?.withOpacity(0.5) ?? Colors.white,
              child: CachedNetworkImage(
                imageUrl: pokemon.image,
                placeholder: (context, url) =>
                    const CircularProgressIndicator(),
                errorWidget: (context, url, error) => const Icon(Icons.error),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 9,
                  right: 9,
                  bottom: 10,
                  top: 8,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      pokemon.id.toSharpID(),
                      style: Theme.of(context)
                          .textTheme
                          .caption
                          ?.copyWith(color: CoreStyles.darkGrey),
                    ),
                    const SizedBox(height: 2),
                    Text(
                      pokemon.name.capitalize(),
                      style: Theme.of(context)
                          .textTheme
                          .bodyText2
                          ?.copyWith(color: CoreStyles.darkest),
                    ),
                    const Spacer(),
                    Text(
                      types.join(', '),
                      style: Theme.of(context)
                          .textTheme
                          .caption
                          ?.copyWith(color: CoreStyles.darkGrey),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
