// ignore_for_file: invalid_annotation_target

import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'pokemon.freezed.dart';
part 'pokemon.g.dart';

typedef Json = Map<String, dynamic>;

String _decodeSprites(Json input) {
  return ((input['other'] as Json)['official-artwork'] as Json)['front_default']
      .toString();
}

String _decodeStat(Json input) {
  return input['name'].toString();
}

@freezed
@HiveType(typeId: 0, adapterName: 'PokemonAdapter')
class Pokemon with _$Pokemon {
  const factory Pokemon({
    @HiveField(0) required String name,
    @HiveField(1) required int id,
    @HiveField(2) required int height,
    @HiveField(3) required int weight,
    @HiveField(4) required List<PokemonType> types,
    @HiveField(5)
    @JsonKey(name: 'sprites', fromJson: _decodeSprites)
        required String image,
    @HiveField(6) @JsonKey(ignore: true) Color? color,
    @HiveField(7) required List<Stat> stats,
  }) = _Pokemon;

  factory Pokemon.fromJson(Map<String, Object?> json) =>
      _$PokemonFromJson(json);
}

@freezed
@HiveType(typeId: 1, adapterName: 'PokemonTypeAdapter')
class PokemonType with _$PokemonType {
  const factory PokemonType({
    @HiveField(0) required int slot,
    @HiveField(1) @JsonKey(name: 'type') required TypeDetails typeDetails,
  }) = _PokemonType;

  factory PokemonType.fromJson(Map<String, Object?> json) =>
      _$PokemonTypeFromJson(json);
}

@freezed
@HiveType(typeId: 2, adapterName: 'TypeDetailsAdapter')
class TypeDetails with _$TypeDetails {
  const factory TypeDetails({
    @HiveField(0) required String name,
    @HiveField(1) required String url,
  }) = _TypeDetails;

  factory TypeDetails.fromJson(Map<String, Object?> json) =>
      _$TypeDetailsFromJson(json);
}

@freezed
@HiveType(typeId: 3, adapterName: 'StatAdapter')
class Stat with _$Stat {
  const factory Stat({
    @HiveField(0) @JsonKey(name: 'base_stat') required int stat,
    @HiveField(1)
    @JsonKey(name: 'stat', fromJson: _decodeStat)
        required String name,
  }) = _Stat;

  factory Stat.fromJson(Map<String, Object?> json) => _$StatFromJson(json);
}

class ColorAdapter extends TypeAdapter<Color> {
  @override
  Color read(BinaryReader reader) => Color(reader.readInt());

  @override
  void write(BinaryWriter writer, Color obj) => writer.writeInt(obj.value);

  @override
  int get typeId => 4;
}
