// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class PokemonAdapter extends TypeAdapter<Pokemon> {
  @override
  final int typeId = 0;

  @override
  Pokemon read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Pokemon(
      name: fields[0] as String,
      id: fields[1] as int,
      height: fields[2] as int,
      weight: fields[3] as int,
      types: (fields[4] as List).cast<PokemonType>(),
      image: fields[5] as String,
      color: fields[6] as Color?,
      stats: (fields[7] as List).cast<Stat>(),
    );
  }

  @override
  void write(BinaryWriter writer, Pokemon obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.id)
      ..writeByte(2)
      ..write(obj.height)
      ..writeByte(3)
      ..write(obj.weight)
      ..writeByte(4)
      ..write(obj.types)
      ..writeByte(5)
      ..write(obj.image)
      ..writeByte(6)
      ..write(obj.color)
      ..writeByte(7)
      ..write(obj.stats);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PokemonAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class PokemonTypeAdapter extends TypeAdapter<PokemonType> {
  @override
  final int typeId = 1;

  @override
  PokemonType read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return PokemonType(
      slot: fields[0] as int,
      typeDetails: fields[1] as TypeDetails,
    );
  }

  @override
  void write(BinaryWriter writer, PokemonType obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.slot)
      ..writeByte(1)
      ..write(obj.typeDetails);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PokemonTypeAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class TypeDetailsAdapter extends TypeAdapter<TypeDetails> {
  @override
  final int typeId = 2;

  @override
  TypeDetails read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return TypeDetails(
      name: fields[0] as String,
      url: fields[1] as String,
    );
  }

  @override
  void write(BinaryWriter writer, TypeDetails obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.url);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TypeDetailsAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class StatAdapter extends TypeAdapter<Stat> {
  @override
  final int typeId = 3;

  @override
  Stat read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Stat(
      stat: fields[0] as int,
      name: fields[1] as String,
    );
  }

  @override
  void write(BinaryWriter writer, Stat obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.stat)
      ..writeByte(1)
      ..write(obj.name);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is StatAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Pokemon _$$_PokemonFromJson(Map<String, dynamic> json) => _$_Pokemon(
      name: json['name'] as String,
      id: json['id'] as int,
      height: json['height'] as int,
      weight: json['weight'] as int,
      types: (json['types'] as List<dynamic>)
          .map((e) => PokemonType.fromJson(e as Map<String, dynamic>))
          .toList(),
      image: _decodeSprites(json['sprites'] as Map<String, dynamic>),
      stats: (json['stats'] as List<dynamic>)
          .map((e) => Stat.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_PokemonToJson(_$_Pokemon instance) =>
    <String, dynamic>{
      'name': instance.name,
      'id': instance.id,
      'height': instance.height,
      'weight': instance.weight,
      'types': instance.types,
      'sprites': instance.image,
      'stats': instance.stats,
    };

_$_PokemonType _$$_PokemonTypeFromJson(Map<String, dynamic> json) =>
    _$_PokemonType(
      slot: json['slot'] as int,
      typeDetails: TypeDetails.fromJson(json['type'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_PokemonTypeToJson(_$_PokemonType instance) =>
    <String, dynamic>{
      'slot': instance.slot,
      'type': instance.typeDetails,
    };

_$_TypeDetails _$$_TypeDetailsFromJson(Map<String, dynamic> json) =>
    _$_TypeDetails(
      name: json['name'] as String,
      url: json['url'] as String,
    );

Map<String, dynamic> _$$_TypeDetailsToJson(_$_TypeDetails instance) =>
    <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
    };

_$_Stat _$$_StatFromJson(Map<String, dynamic> json) => _$_Stat(
      stat: json['base_stat'] as int,
      name: _decodeStat(json['stat'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_StatToJson(_$_Stat instance) => <String, dynamic>{
      'base_stat': instance.stat,
      'stat': instance.name,
    };
