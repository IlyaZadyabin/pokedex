import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokedex/features/all_pokemons/cubit/all_pokemons_cubit.dart';
import 'package:pokedex/features/all_pokemons/view/widgets/pokemon_card.dart';
import 'package:pokedex/l10n/l10n.dart';
import 'package:pokedex/shared/config/core_styles.dart';

class AllPokemonsScreen extends StatefulWidget {
  const AllPokemonsScreen({super.key});

  @override
  State<AllPokemonsScreen> createState() => _AllPokemonsScreenState();
}

class _AllPokemonsScreenState extends State<AllPokemonsScreen> {
  late AllPokemonsCubit _cubit;

  @override
  void initState() {
    super.initState();

    _cubit = BlocProvider.of<AllPokemonsCubit>(context);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AllPokemonsCubit, AllPokemonsState>(
      builder: (context, state) => CustomScrollView(
        key: PageStorageKey(UniqueKey()),
        slivers: [
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
            sliver: SliverGrid(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 12,
                crossAxisSpacing: 10,
                childAspectRatio: 0.6,
              ),
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int idx) {
                  if (idx == state.pokemons.length) {
                    if (state.status != AllPokemonsStateStatus.loading &&
                        state.isMoreDataAvailable) {
                      _cubit.getPokemons();
                    }
                    return const SizedBox();
                  }
                  return PokemonCard(pokemon: state.pokemons[idx]);
                },
                childCount: state.pokemons.length + 1,
              ),
            ),
          ),
          if (state.status == AllPokemonsStateStatus.loading)
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 32),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        SizedBox(
                          width: 50,
                          height: 50,
                          child: CircularProgressIndicator(
                            color: CoreStyles.blue,
                          ),
                        ),
                      ],
                    ),
                  );
                },
                childCount: 1,
              ),
            ),
          if (state.status == AllPokemonsStateStatus.error)
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return Center(
                    child: Text(
                      context.l10n.errorFetchingPokemons,
                      style: Theme.of(context)
                          .textTheme
                          .headline5
                          ?.copyWith(color: CoreStyles.black),
                    ),
                  );
                },
                childCount: 1,
              ),
            ),
        ],
      ),
    );
  }
}
