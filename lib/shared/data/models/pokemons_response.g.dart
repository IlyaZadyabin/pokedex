// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemons_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PokemonsResponse _$$_PokemonsResponseFromJson(Map<String, dynamic> json) =>
    _$_PokemonsResponse(
      count: json['count'] as int,
      nextUrl: json['nextUrl'] as String?,
      previousUrl: json['previousUrl'] as String?,
      pokemons: (json['pokemons'] as List<dynamic>)
          .map((e) => Pokemon.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_PokemonsResponseToJson(_$_PokemonsResponse instance) =>
    <String, dynamic>{
      'count': instance.count,
      'nextUrl': instance.nextUrl,
      'previousUrl': instance.previousUrl,
      'pokemons': instance.pokemons,
    };
