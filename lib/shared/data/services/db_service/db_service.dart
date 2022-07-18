import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:pokedex/shared/data/models/pokemon.dart';
import 'package:pokedex/shared/data/services/db_service/db_service_interface.dart';

const dbName = 'favoriteBox';

class DBService implements DBServiceInterface {
  late Box<Pokemon> box;
  late Stream<BoxEvent> boxEventStream;

  final StreamController<void> _boxEventStreamController =
      StreamController<void>();

  @override
  Stream<void> get isDbChanged {
    return _boxEventStreamController.stream;
  }

  Future<void> init() async {
    Hive
      ..registerAdapter<Pokemon>(PokemonAdapter())
      ..registerAdapter<PokemonType>(PokemonTypeAdapter())
      ..registerAdapter<Stat>(
        StatAdapter(),
      )
      ..registerAdapter<TypeDetails>(
        TypeDetailsAdapter(),
      )
      ..registerAdapter<Color>(ColorAdapter());

    await Hive.initFlutter();
    await Hive.openBox<Pokemon>(dbName);

    box = Hive.box<Pokemon>(dbName);
    boxEventStream = box.watch();

    boxEventStream.listen((event) {
      _boxEventStreamController.add(null);
    });
  }

  @override
  List<Pokemon> getFavoritePokemons() {
    final keys = box.keys.cast<int>().toList();
    final ans = <Pokemon>[];
    for (final key in keys) {
      if (box.get(key) != null) {
        ans.add(box.get(key)!);
      }
    }
    return ans;
  }

  @override
  void removePokemonFromFavorites({required Pokemon pokemon}) {
    box.deleteAll([pokemon.id]);
  }

  @override
  void savePokemonToFavorites({required Pokemon pokemon}) {
    box.put(pokemon.id, pokemon);
  }

  @override
  bool isContainsElement({required Pokemon pokemon}) {
    return box.containsKey(pokemon.id);
  }

  @override
  void updatePokemon({required Pokemon pokemon}) {
    box.put(pokemon.id, pokemon);
  }
}
