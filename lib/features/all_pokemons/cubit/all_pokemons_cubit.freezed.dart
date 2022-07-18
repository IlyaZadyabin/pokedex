// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'all_pokemons_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AllPokemonsState {
  List<Pokemon> get pokemons => throw _privateConstructorUsedError;
  int get offset => throw _privateConstructorUsedError;
  bool get isMoreDataAvailable => throw _privateConstructorUsedError;
  AllPokemonsStateStatus get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AllPokemonsStateCopyWith<AllPokemonsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AllPokemonsStateCopyWith<$Res> {
  factory $AllPokemonsStateCopyWith(
          AllPokemonsState value, $Res Function(AllPokemonsState) then) =
      _$AllPokemonsStateCopyWithImpl<$Res>;
  $Res call(
      {List<Pokemon> pokemons,
      int offset,
      bool isMoreDataAvailable,
      AllPokemonsStateStatus status});
}

/// @nodoc
class _$AllPokemonsStateCopyWithImpl<$Res>
    implements $AllPokemonsStateCopyWith<$Res> {
  _$AllPokemonsStateCopyWithImpl(this._value, this._then);

  final AllPokemonsState _value;
  // ignore: unused_field
  final $Res Function(AllPokemonsState) _then;

  @override
  $Res call({
    Object? pokemons = freezed,
    Object? offset = freezed,
    Object? isMoreDataAvailable = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      pokemons: pokemons == freezed
          ? _value.pokemons
          : pokemons // ignore: cast_nullable_to_non_nullable
              as List<Pokemon>,
      offset: offset == freezed
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
      isMoreDataAvailable: isMoreDataAvailable == freezed
          ? _value.isMoreDataAvailable
          : isMoreDataAvailable // ignore: cast_nullable_to_non_nullable
              as bool,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AllPokemonsStateStatus,
    ));
  }
}

/// @nodoc
abstract class _$$_AllPokemonsStateCopyWith<$Res>
    implements $AllPokemonsStateCopyWith<$Res> {
  factory _$$_AllPokemonsStateCopyWith(
          _$_AllPokemonsState value, $Res Function(_$_AllPokemonsState) then) =
      __$$_AllPokemonsStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<Pokemon> pokemons,
      int offset,
      bool isMoreDataAvailable,
      AllPokemonsStateStatus status});
}

/// @nodoc
class __$$_AllPokemonsStateCopyWithImpl<$Res>
    extends _$AllPokemonsStateCopyWithImpl<$Res>
    implements _$$_AllPokemonsStateCopyWith<$Res> {
  __$$_AllPokemonsStateCopyWithImpl(
      _$_AllPokemonsState _value, $Res Function(_$_AllPokemonsState) _then)
      : super(_value, (v) => _then(v as _$_AllPokemonsState));

  @override
  _$_AllPokemonsState get _value => super._value as _$_AllPokemonsState;

  @override
  $Res call({
    Object? pokemons = freezed,
    Object? offset = freezed,
    Object? isMoreDataAvailable = freezed,
    Object? status = freezed,
  }) {
    return _then(_$_AllPokemonsState(
      pokemons: pokemons == freezed
          ? _value._pokemons
          : pokemons // ignore: cast_nullable_to_non_nullable
              as List<Pokemon>,
      offset: offset == freezed
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
      isMoreDataAvailable: isMoreDataAvailable == freezed
          ? _value.isMoreDataAvailable
          : isMoreDataAvailable // ignore: cast_nullable_to_non_nullable
              as bool,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AllPokemonsStateStatus,
    ));
  }
}

/// @nodoc

class _$_AllPokemonsState implements _AllPokemonsState {
  const _$_AllPokemonsState(
      {final List<Pokemon> pokemons = const [],
      this.offset = 0,
      this.isMoreDataAvailable = true,
      this.status = AllPokemonsStateStatus.result})
      : _pokemons = pokemons;

  final List<Pokemon> _pokemons;
  @override
  @JsonKey()
  List<Pokemon> get pokemons {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pokemons);
  }

  @override
  @JsonKey()
  final int offset;
  @override
  @JsonKey()
  final bool isMoreDataAvailable;
  @override
  @JsonKey()
  final AllPokemonsStateStatus status;

  @override
  String toString() {
    return 'AllPokemonsState(pokemons: $pokemons, offset: $offset, isMoreDataAvailable: $isMoreDataAvailable, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AllPokemonsState &&
            const DeepCollectionEquality().equals(other._pokemons, _pokemons) &&
            const DeepCollectionEquality().equals(other.offset, offset) &&
            const DeepCollectionEquality()
                .equals(other.isMoreDataAvailable, isMoreDataAvailable) &&
            const DeepCollectionEquality().equals(other.status, status));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_pokemons),
      const DeepCollectionEquality().hash(offset),
      const DeepCollectionEquality().hash(isMoreDataAvailable),
      const DeepCollectionEquality().hash(status));

  @JsonKey(ignore: true)
  @override
  _$$_AllPokemonsStateCopyWith<_$_AllPokemonsState> get copyWith =>
      __$$_AllPokemonsStateCopyWithImpl<_$_AllPokemonsState>(this, _$identity);
}

abstract class _AllPokemonsState implements AllPokemonsState {
  const factory _AllPokemonsState(
      {final List<Pokemon> pokemons,
      final int offset,
      final bool isMoreDataAvailable,
      final AllPokemonsStateStatus status}) = _$_AllPokemonsState;

  @override
  List<Pokemon> get pokemons;
  @override
  int get offset;
  @override
  bool get isMoreDataAvailable;
  @override
  AllPokemonsStateStatus get status;
  @override
  @JsonKey(ignore: true)
  _$$_AllPokemonsStateCopyWith<_$_AllPokemonsState> get copyWith =>
      throw _privateConstructorUsedError;
}
