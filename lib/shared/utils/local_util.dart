import 'package:pokedex/shared/data/models/pokemon.dart';
import 'package:pokedex/shared/utils/string_util.dart';

List<String> capitalizedPowers({required Pokemon pokemon}) {
  final types = <String>[];

  for (final type in pokemon.types) {
    types.add(type.typeDetails.name.capitalize());
  }
  return types;
}
