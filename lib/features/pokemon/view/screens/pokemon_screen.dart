import 'dart:math';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:pokedex/features/pokemon/cubit/pokemon_cubit.dart';
import 'package:pokedex/features/pokemon/domain/repositories/pokemon_repository.dart';
import 'package:pokedex/l10n/l10n.dart';
import 'package:pokedex/shared/config/core_styles.dart';
import 'package:pokedex/shared/data/models/pokemon.dart';
import 'package:pokedex/shared/data/services/db_service/db_service_interface.dart';
import 'package:pokedex/shared/utils/color_util.dart';
import 'package:pokedex/shared/utils/number_util.dart';
import 'package:pokedex/shared/utils/string_util.dart';

class PokemonScreen extends StatelessWidget {
  const PokemonScreen({super.key, required this.pokemon});

  final Pokemon pokemon;

  @override
  Widget build(BuildContext context) {
    final service = context.watch<DBServiceInterface>();

    return BlocProvider(
      create: (context) => PokemonCubit(
        pokemon: pokemon,
        pokemonRepository: PokemonRepository(dbService: service),
      ),
      child: _PokemonScreen(),
    );
  }
}

class _PokemonScreen extends StatelessWidget {
  Widget _summary(Size size, Pokemon pokemon, BuildContext context) {
    final types = <String>[];
    if (pokemon.types.isNotEmpty) {
      types.add(pokemon.types[0].typeDetails.name.capitalize());
    }
    if (pokemon.types.length > 1) {
      types.add(pokemon.types[1].typeDetails.name.capitalize());
    }

    return ColoredBox(
      color: pokemon.color?.lighten(50) ?? Colors.white,
      child: Padding(
        padding: const EdgeInsets.only(left: 16, top: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              pokemon.name.capitalize(),
              style: Theme.of(context)
                  .textTheme
                  .headline4
                  ?.copyWith(color: CoreStyles.black),
            ),
            const SizedBox(height: 8),
            Text(
              types.join(', '),
              style: Theme.of(context)
                  .textTheme
                  .subtitle1
                  ?.copyWith(color: CoreStyles.black),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 14),
                  child: Text(
                    pokemon.id.toSharpID(),
                    style: Theme.of(context)
                        .textTheme
                        .subtitle1
                        ?.copyWith(color: CoreStyles.black),
                  ),
                ),
                CachedNetworkImage(
                  imageUrl: pokemon.image,
                  width: size.width * .36,
                  height: size.height * .14,
                  placeholder: (context, url) =>
                      const CircularProgressIndicator(),
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _stat({
    required String statName,
    required String stat,
    required BuildContext context,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          statName,
          style: Theme.of(context)
              .textTheme
              .overline
              ?.copyWith(color: CoreStyles.darkGrey),
        ),
        const SizedBox(height: 8),
        Text(
          stat,
          style: Theme.of(context)
              .textTheme
              .caption
              ?.copyWith(color: CoreStyles.black),
        ),
      ],
    );
  }

  Widget _stats(Pokemon pokemon, BuildContext context) {
    final bmi = (pokemon.weight / pow(pokemon.height, 2)).toStringAsFixed(2);
    return ColoredBox(
      color: CoreStyles.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              flex: 2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _stat(
                    statName: context.l10n.height,
                    stat: pokemon.height.toString(),
                    context: context,
                  ),
                  _stat(
                    statName: context.l10n.weight,
                    stat: pokemon.weight.toString(),
                    context: context,
                  ),
                  _stat(
                    statName: context.l10n.bmi,
                    stat: bmi,
                    context: context,
                  ),
                ],
              ),
            ),
            const Spacer()
          ],
        ),
      ),
    );
  }

  Widget _baseStat({required Stat stat, required BuildContext context}) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              stat.name.capitalize(),
              style: Theme.of(context).textTheme.bodyText2?.copyWith(
                    fontWeight: FontWeight.w400,
                    color: CoreStyles.darkGrey,
                  ),
            ),
            const SizedBox(width: 4),
            Text(
              stat.stat.toString(),
              style: Theme.of(context).textTheme.bodyText2?.copyWith(
                    fontWeight: FontWeight.w500,
                    color: CoreStyles.black,
                  ),
            )
          ],
        ),
        const SizedBox(height: 8),
        ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          child: LinearProgressIndicator(
            backgroundColor: CoreStyles.grey,
            value: stat.stat / 100,
            color: statColor(stat: stat.stat.toDouble()),
          ),
        )
      ],
    );
  }

  Widget _baseStats(Pokemon pokemon, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8),
      child: ColoredBox(
        color: CoreStyles.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 12),
              Text(
                context.l10n.baseStats,
                style: Theme.of(context).textTheme.bodyText1,
              ),
              const SizedBox(height: 29),
              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                padding: EdgeInsets.zero,
                itemCount: pokemon.stats.length,
                itemBuilder: (context, idx) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 24),
                    child:
                        _baseStat(stat: pokemon.stats[idx], context: context),
                  );
                },
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 24),
                child: _baseStat(
                  stat: Stat(
                    name: context.l10n.averagePower,
                    stat: pokemon.stats.fold<int>(
                          0,
                          (sum, item) => sum + item.stat,
                        ) ~/
                        6,
                  ),
                  context: context,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PokemonCubit, PokemonState>(
      builder: (context, state) => Scaffold(
        backgroundColor: CoreStyles.grey,
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              leading: IconButton(
                icon: const Icon(Icons.arrow_back),
                onPressed: () => context.pop(),
              ),
              backgroundColor: state.pokemon.color?.lighten(50),
              shadowColor: CoreStyles.black,
              stretch: true,
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  _summary(MediaQuery.of(context).size, state.pokemon, context),
                  _stats(state.pokemon, context),
                  _baseStats(state.pokemon, context)
                ],
              ),
            )
          ],
        ),
        floatingActionButton: FloatingActionButton.extended(
          backgroundColor:
              state.isFavorite ? CoreStyles.violet : CoreStyles.blue,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(36),
          ),
          onPressed: () {
            if (state.isFavorite) {
              context.read<PokemonCubit>().removePokemonFromFavorites();
            } else {
              context.read<PokemonCubit>().savePokemonToFavorites();
            }
          },
          label: Text(
            state.isFavorite
                ? context.l10n.removeFromFavorites
                : context.l10n.markAsFavorite,
            style: Theme.of(context).textTheme.button?.copyWith(
                  color: state.isFavorite ? CoreStyles.blue : CoreStyles.white,
                ),
          ),
        ),
      ),
    );
  }
}
