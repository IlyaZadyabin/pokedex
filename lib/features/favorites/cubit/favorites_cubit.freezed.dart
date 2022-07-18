// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'favorites_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FavoritesState {
  List<Pokemon> get favorites => throw _privateConstructorUsedError;
  FavoritesStateStatus get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FavoritesStateCopyWith<FavoritesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoritesStateCopyWith<$Res> {
  factory $FavoritesStateCopyWith(
          FavoritesState value, $Res Function(FavoritesState) then) =
      _$FavoritesStateCopyWithImpl<$Res>;
  $Res call({List<Pokemon> favorites, FavoritesStateStatus status});
}

/// @nodoc
class _$FavoritesStateCopyWithImpl<$Res>
    implements $FavoritesStateCopyWith<$Res> {
  _$FavoritesStateCopyWithImpl(this._value, this._then);

  final FavoritesState _value;
  // ignore: unused_field
  final $Res Function(FavoritesState) _then;

  @override
  $Res call({
    Object? favorites = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      favorites: favorites == freezed
          ? _value.favorites
          : favorites // ignore: cast_nullable_to_non_nullable
              as List<Pokemon>,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FavoritesStateStatus,
    ));
  }
}

/// @nodoc
abstract class _$$_FavoritesStateCopyWith<$Res>
    implements $FavoritesStateCopyWith<$Res> {
  factory _$$_FavoritesStateCopyWith(
          _$_FavoritesState value, $Res Function(_$_FavoritesState) then) =
      __$$_FavoritesStateCopyWithImpl<$Res>;
  @override
  $Res call({List<Pokemon> favorites, FavoritesStateStatus status});
}

/// @nodoc
class __$$_FavoritesStateCopyWithImpl<$Res>
    extends _$FavoritesStateCopyWithImpl<$Res>
    implements _$$_FavoritesStateCopyWith<$Res> {
  __$$_FavoritesStateCopyWithImpl(
      _$_FavoritesState _value, $Res Function(_$_FavoritesState) _then)
      : super(_value, (v) => _then(v as _$_FavoritesState));

  @override
  _$_FavoritesState get _value => super._value as _$_FavoritesState;

  @override
  $Res call({
    Object? favorites = freezed,
    Object? status = freezed,
  }) {
    return _then(_$_FavoritesState(
      favorites: favorites == freezed
          ? _value._favorites
          : favorites // ignore: cast_nullable_to_non_nullable
              as List<Pokemon>,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FavoritesStateStatus,
    ));
  }
}

/// @nodoc

class _$_FavoritesState implements _FavoritesState {
  const _$_FavoritesState(
      {required final List<Pokemon> favorites, required this.status})
      : _favorites = favorites;

  final List<Pokemon> _favorites;
  @override
  List<Pokemon> get favorites {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_favorites);
  }

  @override
  final FavoritesStateStatus status;

  @override
  String toString() {
    return 'FavoritesState(favorites: $favorites, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FavoritesState &&
            const DeepCollectionEquality()
                .equals(other._favorites, _favorites) &&
            const DeepCollectionEquality().equals(other.status, status));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_favorites),
      const DeepCollectionEquality().hash(status));

  @JsonKey(ignore: true)
  @override
  _$$_FavoritesStateCopyWith<_$_FavoritesState> get copyWith =>
      __$$_FavoritesStateCopyWithImpl<_$_FavoritesState>(this, _$identity);
}

abstract class _FavoritesState implements FavoritesState {
  const factory _FavoritesState(
      {required final List<Pokemon> favorites,
      required final FavoritesStateStatus status}) = _$_FavoritesState;

  @override
  List<Pokemon> get favorites;
  @override
  FavoritesStateStatus get status;
  @override
  @JsonKey(ignore: true)
  _$$_FavoritesStateCopyWith<_$_FavoritesState> get copyWith =>
      throw _privateConstructorUsedError;
}
