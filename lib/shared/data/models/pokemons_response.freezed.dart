// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'pokemons_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PokemonsResponse _$PokemonsResponseFromJson(Map<String, dynamic> json) {
  return _PokemonsResponse.fromJson(json);
}

/// @nodoc
mixin _$PokemonsResponse {
  int get count => throw _privateConstructorUsedError;
  String? get nextUrl => throw _privateConstructorUsedError;
  String? get previousUrl => throw _privateConstructorUsedError;
  List<Pokemon> get pokemons => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokemonsResponseCopyWith<PokemonsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonsResponseCopyWith<$Res> {
  factory $PokemonsResponseCopyWith(
          PokemonsResponse value, $Res Function(PokemonsResponse) then) =
      _$PokemonsResponseCopyWithImpl<$Res>;
  $Res call(
      {int count,
      String? nextUrl,
      String? previousUrl,
      List<Pokemon> pokemons});
}

/// @nodoc
class _$PokemonsResponseCopyWithImpl<$Res>
    implements $PokemonsResponseCopyWith<$Res> {
  _$PokemonsResponseCopyWithImpl(this._value, this._then);

  final PokemonsResponse _value;
  // ignore: unused_field
  final $Res Function(PokemonsResponse) _then;

  @override
  $Res call({
    Object? count = freezed,
    Object? nextUrl = freezed,
    Object? previousUrl = freezed,
    Object? pokemons = freezed,
  }) {
    return _then(_value.copyWith(
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      nextUrl: nextUrl == freezed
          ? _value.nextUrl
          : nextUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      previousUrl: previousUrl == freezed
          ? _value.previousUrl
          : previousUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      pokemons: pokemons == freezed
          ? _value.pokemons
          : pokemons // ignore: cast_nullable_to_non_nullable
              as List<Pokemon>,
    ));
  }
}

/// @nodoc
abstract class _$$_PokemonsResponseCopyWith<$Res>
    implements $PokemonsResponseCopyWith<$Res> {
  factory _$$_PokemonsResponseCopyWith(
          _$_PokemonsResponse value, $Res Function(_$_PokemonsResponse) then) =
      __$$_PokemonsResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {int count,
      String? nextUrl,
      String? previousUrl,
      List<Pokemon> pokemons});
}

/// @nodoc
class __$$_PokemonsResponseCopyWithImpl<$Res>
    extends _$PokemonsResponseCopyWithImpl<$Res>
    implements _$$_PokemonsResponseCopyWith<$Res> {
  __$$_PokemonsResponseCopyWithImpl(
      _$_PokemonsResponse _value, $Res Function(_$_PokemonsResponse) _then)
      : super(_value, (v) => _then(v as _$_PokemonsResponse));

  @override
  _$_PokemonsResponse get _value => super._value as _$_PokemonsResponse;

  @override
  $Res call({
    Object? count = freezed,
    Object? nextUrl = freezed,
    Object? previousUrl = freezed,
    Object? pokemons = freezed,
  }) {
    return _then(_$_PokemonsResponse(
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      nextUrl: nextUrl == freezed
          ? _value.nextUrl
          : nextUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      previousUrl: previousUrl == freezed
          ? _value.previousUrl
          : previousUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      pokemons: pokemons == freezed
          ? _value._pokemons
          : pokemons // ignore: cast_nullable_to_non_nullable
              as List<Pokemon>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PokemonsResponse implements _PokemonsResponse {
  const _$_PokemonsResponse(
      {required this.count,
      required this.nextUrl,
      required this.previousUrl,
      required final List<Pokemon> pokemons})
      : _pokemons = pokemons;

  factory _$_PokemonsResponse.fromJson(Map<String, dynamic> json) =>
      _$$_PokemonsResponseFromJson(json);

  @override
  final int count;
  @override
  final String? nextUrl;
  @override
  final String? previousUrl;
  final List<Pokemon> _pokemons;
  @override
  List<Pokemon> get pokemons {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pokemons);
  }

  @override
  String toString() {
    return 'PokemonsResponse(count: $count, nextUrl: $nextUrl, previousUrl: $previousUrl, pokemons: $pokemons)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PokemonsResponse &&
            const DeepCollectionEquality().equals(other.count, count) &&
            const DeepCollectionEquality().equals(other.nextUrl, nextUrl) &&
            const DeepCollectionEquality()
                .equals(other.previousUrl, previousUrl) &&
            const DeepCollectionEquality().equals(other._pokemons, _pokemons));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(count),
      const DeepCollectionEquality().hash(nextUrl),
      const DeepCollectionEquality().hash(previousUrl),
      const DeepCollectionEquality().hash(_pokemons));

  @JsonKey(ignore: true)
  @override
  _$$_PokemonsResponseCopyWith<_$_PokemonsResponse> get copyWith =>
      __$$_PokemonsResponseCopyWithImpl<_$_PokemonsResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PokemonsResponseToJson(
      this,
    );
  }
}

abstract class _PokemonsResponse implements PokemonsResponse {
  const factory _PokemonsResponse(
      {required final int count,
      required final String? nextUrl,
      required final String? previousUrl,
      required final List<Pokemon> pokemons}) = _$_PokemonsResponse;

  factory _PokemonsResponse.fromJson(Map<String, dynamic> json) =
      _$_PokemonsResponse.fromJson;

  @override
  int get count;
  @override
  String? get nextUrl;
  @override
  String? get previousUrl;
  @override
  List<Pokemon> get pokemons;
  @override
  @JsonKey(ignore: true)
  _$$_PokemonsResponseCopyWith<_$_PokemonsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
