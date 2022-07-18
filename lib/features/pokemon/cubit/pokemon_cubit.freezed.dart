// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'pokemon_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PokemonState {
  Pokemon get pokemon => throw _privateConstructorUsedError;
  bool get isFavorite => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PokemonStateCopyWith<PokemonState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonStateCopyWith<$Res> {
  factory $PokemonStateCopyWith(
          PokemonState value, $Res Function(PokemonState) then) =
      _$PokemonStateCopyWithImpl<$Res>;
  $Res call({Pokemon pokemon, bool isFavorite});

  $PokemonCopyWith<$Res> get pokemon;
}

/// @nodoc
class _$PokemonStateCopyWithImpl<$Res> implements $PokemonStateCopyWith<$Res> {
  _$PokemonStateCopyWithImpl(this._value, this._then);

  final PokemonState _value;
  // ignore: unused_field
  final $Res Function(PokemonState) _then;

  @override
  $Res call({
    Object? pokemon = freezed,
    Object? isFavorite = freezed,
  }) {
    return _then(_value.copyWith(
      pokemon: pokemon == freezed
          ? _value.pokemon
          : pokemon // ignore: cast_nullable_to_non_nullable
              as Pokemon,
      isFavorite: isFavorite == freezed
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  $PokemonCopyWith<$Res> get pokemon {
    return $PokemonCopyWith<$Res>(_value.pokemon, (value) {
      return _then(_value.copyWith(pokemon: value));
    });
  }
}

/// @nodoc
abstract class _$$_PokemonStateCopyWith<$Res>
    implements $PokemonStateCopyWith<$Res> {
  factory _$$_PokemonStateCopyWith(
          _$_PokemonState value, $Res Function(_$_PokemonState) then) =
      __$$_PokemonStateCopyWithImpl<$Res>;
  @override
  $Res call({Pokemon pokemon, bool isFavorite});

  @override
  $PokemonCopyWith<$Res> get pokemon;
}

/// @nodoc
class __$$_PokemonStateCopyWithImpl<$Res>
    extends _$PokemonStateCopyWithImpl<$Res>
    implements _$$_PokemonStateCopyWith<$Res> {
  __$$_PokemonStateCopyWithImpl(
      _$_PokemonState _value, $Res Function(_$_PokemonState) _then)
      : super(_value, (v) => _then(v as _$_PokemonState));

  @override
  _$_PokemonState get _value => super._value as _$_PokemonState;

  @override
  $Res call({
    Object? pokemon = freezed,
    Object? isFavorite = freezed,
  }) {
    return _then(_$_PokemonState(
      pokemon: pokemon == freezed
          ? _value.pokemon
          : pokemon // ignore: cast_nullable_to_non_nullable
              as Pokemon,
      isFavorite: isFavorite == freezed
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_PokemonState implements _PokemonState {
  const _$_PokemonState({required this.pokemon, this.isFavorite = false});

  @override
  final Pokemon pokemon;
  @override
  @JsonKey()
  final bool isFavorite;

  @override
  String toString() {
    return 'PokemonState(pokemon: $pokemon, isFavorite: $isFavorite)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PokemonState &&
            const DeepCollectionEquality().equals(other.pokemon, pokemon) &&
            const DeepCollectionEquality()
                .equals(other.isFavorite, isFavorite));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(pokemon),
      const DeepCollectionEquality().hash(isFavorite));

  @JsonKey(ignore: true)
  @override
  _$$_PokemonStateCopyWith<_$_PokemonState> get copyWith =>
      __$$_PokemonStateCopyWithImpl<_$_PokemonState>(this, _$identity);
}

abstract class _PokemonState implements PokemonState {
  const factory _PokemonState(
      {required final Pokemon pokemon,
      final bool isFavorite}) = _$_PokemonState;

  @override
  Pokemon get pokemon;
  @override
  bool get isFavorite;
  @override
  @JsonKey(ignore: true)
  _$$_PokemonStateCopyWith<_$_PokemonState> get copyWith =>
      throw _privateConstructorUsedError;
}
