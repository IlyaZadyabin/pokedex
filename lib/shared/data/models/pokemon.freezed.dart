// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'pokemon.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Pokemon _$PokemonFromJson(Map<String, dynamic> json) {
  return _Pokemon.fromJson(json);
}

/// @nodoc
mixin _$Pokemon {
  @HiveField(0)
  String get name => throw _privateConstructorUsedError;
  @HiveField(1)
  int get id => throw _privateConstructorUsedError;
  @HiveField(2)
  int get height => throw _privateConstructorUsedError;
  @HiveField(3)
  int get weight => throw _privateConstructorUsedError;
  @HiveField(4)
  List<PokemonType> get types => throw _privateConstructorUsedError;
  @HiveField(5)
  @JsonKey(name: 'sprites', fromJson: _decodeSprites)
  String get image => throw _privateConstructorUsedError;
  @HiveField(6)
  @JsonKey(ignore: true)
  Color? get color => throw _privateConstructorUsedError;
  @HiveField(7)
  List<Stat> get stats => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokemonCopyWith<Pokemon> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonCopyWith<$Res> {
  factory $PokemonCopyWith(Pokemon value, $Res Function(Pokemon) then) =
      _$PokemonCopyWithImpl<$Res>;
  $Res call(
      {@HiveField(0)
          String name,
      @HiveField(1)
          int id,
      @HiveField(2)
          int height,
      @HiveField(3)
          int weight,
      @HiveField(4)
          List<PokemonType> types,
      @HiveField(5)
      @JsonKey(name: 'sprites', fromJson: _decodeSprites)
          String image,
      @HiveField(6)
      @JsonKey(ignore: true)
          Color? color,
      @HiveField(7)
          List<Stat> stats});
}

/// @nodoc
class _$PokemonCopyWithImpl<$Res> implements $PokemonCopyWith<$Res> {
  _$PokemonCopyWithImpl(this._value, this._then);

  final Pokemon _value;
  // ignore: unused_field
  final $Res Function(Pokemon) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? id = freezed,
    Object? height = freezed,
    Object? weight = freezed,
    Object? types = freezed,
    Object? image = freezed,
    Object? color = freezed,
    Object? stats = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      height: height == freezed
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      weight: weight == freezed
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int,
      types: types == freezed
          ? _value.types
          : types // ignore: cast_nullable_to_non_nullable
              as List<PokemonType>,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color?,
      stats: stats == freezed
          ? _value.stats
          : stats // ignore: cast_nullable_to_non_nullable
              as List<Stat>,
    ));
  }
}

/// @nodoc
abstract class _$$_PokemonCopyWith<$Res> implements $PokemonCopyWith<$Res> {
  factory _$$_PokemonCopyWith(
          _$_Pokemon value, $Res Function(_$_Pokemon) then) =
      __$$_PokemonCopyWithImpl<$Res>;
  @override
  $Res call(
      {@HiveField(0)
          String name,
      @HiveField(1)
          int id,
      @HiveField(2)
          int height,
      @HiveField(3)
          int weight,
      @HiveField(4)
          List<PokemonType> types,
      @HiveField(5)
      @JsonKey(name: 'sprites', fromJson: _decodeSprites)
          String image,
      @HiveField(6)
      @JsonKey(ignore: true)
          Color? color,
      @HiveField(7)
          List<Stat> stats});
}

/// @nodoc
class __$$_PokemonCopyWithImpl<$Res> extends _$PokemonCopyWithImpl<$Res>
    implements _$$_PokemonCopyWith<$Res> {
  __$$_PokemonCopyWithImpl(_$_Pokemon _value, $Res Function(_$_Pokemon) _then)
      : super(_value, (v) => _then(v as _$_Pokemon));

  @override
  _$_Pokemon get _value => super._value as _$_Pokemon;

  @override
  $Res call({
    Object? name = freezed,
    Object? id = freezed,
    Object? height = freezed,
    Object? weight = freezed,
    Object? types = freezed,
    Object? image = freezed,
    Object? color = freezed,
    Object? stats = freezed,
  }) {
    return _then(_$_Pokemon(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      height: height == freezed
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      weight: weight == freezed
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int,
      types: types == freezed
          ? _value._types
          : types // ignore: cast_nullable_to_non_nullable
              as List<PokemonType>,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color?,
      stats: stats == freezed
          ? _value._stats
          : stats // ignore: cast_nullable_to_non_nullable
              as List<Stat>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Pokemon implements _Pokemon {
  const _$_Pokemon(
      {@HiveField(0)
          required this.name,
      @HiveField(1)
          required this.id,
      @HiveField(2)
          required this.height,
      @HiveField(3)
          required this.weight,
      @HiveField(4)
          required final List<PokemonType> types,
      @HiveField(5)
      @JsonKey(name: 'sprites', fromJson: _decodeSprites)
          required this.image,
      @HiveField(6)
      @JsonKey(ignore: true)
          this.color,
      @HiveField(7)
          required final List<Stat> stats})
      : _types = types,
        _stats = stats;

  factory _$_Pokemon.fromJson(Map<String, dynamic> json) =>
      _$$_PokemonFromJson(json);

  @override
  @HiveField(0)
  final String name;
  @override
  @HiveField(1)
  final int id;
  @override
  @HiveField(2)
  final int height;
  @override
  @HiveField(3)
  final int weight;
  final List<PokemonType> _types;
  @override
  @HiveField(4)
  List<PokemonType> get types {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_types);
  }

  @override
  @HiveField(5)
  @JsonKey(name: 'sprites', fromJson: _decodeSprites)
  final String image;
  @override
  @HiveField(6)
  @JsonKey(ignore: true)
  final Color? color;
  final List<Stat> _stats;
  @override
  @HiveField(7)
  List<Stat> get stats {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_stats);
  }

  @override
  String toString() {
    return 'Pokemon(name: $name, id: $id, height: $height, weight: $weight, types: $types, image: $image, color: $color, stats: $stats)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Pokemon &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.height, height) &&
            const DeepCollectionEquality().equals(other.weight, weight) &&
            const DeepCollectionEquality().equals(other._types, _types) &&
            const DeepCollectionEquality().equals(other.image, image) &&
            const DeepCollectionEquality().equals(other.color, color) &&
            const DeepCollectionEquality().equals(other._stats, _stats));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(height),
      const DeepCollectionEquality().hash(weight),
      const DeepCollectionEquality().hash(_types),
      const DeepCollectionEquality().hash(image),
      const DeepCollectionEquality().hash(color),
      const DeepCollectionEquality().hash(_stats));

  @JsonKey(ignore: true)
  @override
  _$$_PokemonCopyWith<_$_Pokemon> get copyWith =>
      __$$_PokemonCopyWithImpl<_$_Pokemon>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PokemonToJson(
      this,
    );
  }
}

abstract class _Pokemon implements Pokemon {
  const factory _Pokemon(
      {@HiveField(0)
          required final String name,
      @HiveField(1)
          required final int id,
      @HiveField(2)
          required final int height,
      @HiveField(3)
          required final int weight,
      @HiveField(4)
          required final List<PokemonType> types,
      @HiveField(5)
      @JsonKey(name: 'sprites', fromJson: _decodeSprites)
          required final String image,
      @HiveField(6)
      @JsonKey(ignore: true)
          final Color? color,
      @HiveField(7)
          required final List<Stat> stats}) = _$_Pokemon;

  factory _Pokemon.fromJson(Map<String, dynamic> json) = _$_Pokemon.fromJson;

  @override
  @HiveField(0)
  String get name;
  @override
  @HiveField(1)
  int get id;
  @override
  @HiveField(2)
  int get height;
  @override
  @HiveField(3)
  int get weight;
  @override
  @HiveField(4)
  List<PokemonType> get types;
  @override
  @HiveField(5)
  @JsonKey(name: 'sprites', fromJson: _decodeSprites)
  String get image;
  @override
  @HiveField(6)
  @JsonKey(ignore: true)
  Color? get color;
  @override
  @HiveField(7)
  List<Stat> get stats;
  @override
  @JsonKey(ignore: true)
  _$$_PokemonCopyWith<_$_Pokemon> get copyWith =>
      throw _privateConstructorUsedError;
}

PokemonType _$PokemonTypeFromJson(Map<String, dynamic> json) {
  return _PokemonType.fromJson(json);
}

/// @nodoc
mixin _$PokemonType {
  @HiveField(0)
  int get slot => throw _privateConstructorUsedError;
  @HiveField(1)
  @JsonKey(name: 'type')
  TypeDetails get typeDetails => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokemonTypeCopyWith<PokemonType> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonTypeCopyWith<$Res> {
  factory $PokemonTypeCopyWith(
          PokemonType value, $Res Function(PokemonType) then) =
      _$PokemonTypeCopyWithImpl<$Res>;
  $Res call(
      {@HiveField(0) int slot,
      @HiveField(1) @JsonKey(name: 'type') TypeDetails typeDetails});

  $TypeDetailsCopyWith<$Res> get typeDetails;
}

/// @nodoc
class _$PokemonTypeCopyWithImpl<$Res> implements $PokemonTypeCopyWith<$Res> {
  _$PokemonTypeCopyWithImpl(this._value, this._then);

  final PokemonType _value;
  // ignore: unused_field
  final $Res Function(PokemonType) _then;

  @override
  $Res call({
    Object? slot = freezed,
    Object? typeDetails = freezed,
  }) {
    return _then(_value.copyWith(
      slot: slot == freezed
          ? _value.slot
          : slot // ignore: cast_nullable_to_non_nullable
              as int,
      typeDetails: typeDetails == freezed
          ? _value.typeDetails
          : typeDetails // ignore: cast_nullable_to_non_nullable
              as TypeDetails,
    ));
  }

  @override
  $TypeDetailsCopyWith<$Res> get typeDetails {
    return $TypeDetailsCopyWith<$Res>(_value.typeDetails, (value) {
      return _then(_value.copyWith(typeDetails: value));
    });
  }
}

/// @nodoc
abstract class _$$_PokemonTypeCopyWith<$Res>
    implements $PokemonTypeCopyWith<$Res> {
  factory _$$_PokemonTypeCopyWith(
          _$_PokemonType value, $Res Function(_$_PokemonType) then) =
      __$$_PokemonTypeCopyWithImpl<$Res>;
  @override
  $Res call(
      {@HiveField(0) int slot,
      @HiveField(1) @JsonKey(name: 'type') TypeDetails typeDetails});

  @override
  $TypeDetailsCopyWith<$Res> get typeDetails;
}

/// @nodoc
class __$$_PokemonTypeCopyWithImpl<$Res> extends _$PokemonTypeCopyWithImpl<$Res>
    implements _$$_PokemonTypeCopyWith<$Res> {
  __$$_PokemonTypeCopyWithImpl(
      _$_PokemonType _value, $Res Function(_$_PokemonType) _then)
      : super(_value, (v) => _then(v as _$_PokemonType));

  @override
  _$_PokemonType get _value => super._value as _$_PokemonType;

  @override
  $Res call({
    Object? slot = freezed,
    Object? typeDetails = freezed,
  }) {
    return _then(_$_PokemonType(
      slot: slot == freezed
          ? _value.slot
          : slot // ignore: cast_nullable_to_non_nullable
              as int,
      typeDetails: typeDetails == freezed
          ? _value.typeDetails
          : typeDetails // ignore: cast_nullable_to_non_nullable
              as TypeDetails,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PokemonType implements _PokemonType {
  const _$_PokemonType(
      {@HiveField(0) required this.slot,
      @HiveField(1) @JsonKey(name: 'type') required this.typeDetails});

  factory _$_PokemonType.fromJson(Map<String, dynamic> json) =>
      _$$_PokemonTypeFromJson(json);

  @override
  @HiveField(0)
  final int slot;
  @override
  @HiveField(1)
  @JsonKey(name: 'type')
  final TypeDetails typeDetails;

  @override
  String toString() {
    return 'PokemonType(slot: $slot, typeDetails: $typeDetails)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PokemonType &&
            const DeepCollectionEquality().equals(other.slot, slot) &&
            const DeepCollectionEquality()
                .equals(other.typeDetails, typeDetails));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(slot),
      const DeepCollectionEquality().hash(typeDetails));

  @JsonKey(ignore: true)
  @override
  _$$_PokemonTypeCopyWith<_$_PokemonType> get copyWith =>
      __$$_PokemonTypeCopyWithImpl<_$_PokemonType>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PokemonTypeToJson(
      this,
    );
  }
}

abstract class _PokemonType implements PokemonType {
  const factory _PokemonType(
      {@HiveField(0)
          required final int slot,
      @HiveField(1)
      @JsonKey(name: 'type')
          required final TypeDetails typeDetails}) = _$_PokemonType;

  factory _PokemonType.fromJson(Map<String, dynamic> json) =
      _$_PokemonType.fromJson;

  @override
  @HiveField(0)
  int get slot;
  @override
  @HiveField(1)
  @JsonKey(name: 'type')
  TypeDetails get typeDetails;
  @override
  @JsonKey(ignore: true)
  _$$_PokemonTypeCopyWith<_$_PokemonType> get copyWith =>
      throw _privateConstructorUsedError;
}

TypeDetails _$TypeDetailsFromJson(Map<String, dynamic> json) {
  return _TypeDetails.fromJson(json);
}

/// @nodoc
mixin _$TypeDetails {
  @HiveField(0)
  String get name => throw _privateConstructorUsedError;
  @HiveField(1)
  String get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TypeDetailsCopyWith<TypeDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TypeDetailsCopyWith<$Res> {
  factory $TypeDetailsCopyWith(
          TypeDetails value, $Res Function(TypeDetails) then) =
      _$TypeDetailsCopyWithImpl<$Res>;
  $Res call({@HiveField(0) String name, @HiveField(1) String url});
}

/// @nodoc
class _$TypeDetailsCopyWithImpl<$Res> implements $TypeDetailsCopyWith<$Res> {
  _$TypeDetailsCopyWithImpl(this._value, this._then);

  final TypeDetails _value;
  // ignore: unused_field
  final $Res Function(TypeDetails) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_TypeDetailsCopyWith<$Res>
    implements $TypeDetailsCopyWith<$Res> {
  factory _$$_TypeDetailsCopyWith(
          _$_TypeDetails value, $Res Function(_$_TypeDetails) then) =
      __$$_TypeDetailsCopyWithImpl<$Res>;
  @override
  $Res call({@HiveField(0) String name, @HiveField(1) String url});
}

/// @nodoc
class __$$_TypeDetailsCopyWithImpl<$Res> extends _$TypeDetailsCopyWithImpl<$Res>
    implements _$$_TypeDetailsCopyWith<$Res> {
  __$$_TypeDetailsCopyWithImpl(
      _$_TypeDetails _value, $Res Function(_$_TypeDetails) _then)
      : super(_value, (v) => _then(v as _$_TypeDetails));

  @override
  _$_TypeDetails get _value => super._value as _$_TypeDetails;

  @override
  $Res call({
    Object? name = freezed,
    Object? url = freezed,
  }) {
    return _then(_$_TypeDetails(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TypeDetails implements _TypeDetails {
  const _$_TypeDetails(
      {@HiveField(0) required this.name, @HiveField(1) required this.url});

  factory _$_TypeDetails.fromJson(Map<String, dynamic> json) =>
      _$$_TypeDetailsFromJson(json);

  @override
  @HiveField(0)
  final String name;
  @override
  @HiveField(1)
  final String url;

  @override
  String toString() {
    return 'TypeDetails(name: $name, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TypeDetails &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.url, url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(url));

  @JsonKey(ignore: true)
  @override
  _$$_TypeDetailsCopyWith<_$_TypeDetails> get copyWith =>
      __$$_TypeDetailsCopyWithImpl<_$_TypeDetails>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TypeDetailsToJson(
      this,
    );
  }
}

abstract class _TypeDetails implements TypeDetails {
  const factory _TypeDetails(
      {@HiveField(0) required final String name,
      @HiveField(1) required final String url}) = _$_TypeDetails;

  factory _TypeDetails.fromJson(Map<String, dynamic> json) =
      _$_TypeDetails.fromJson;

  @override
  @HiveField(0)
  String get name;
  @override
  @HiveField(1)
  String get url;
  @override
  @JsonKey(ignore: true)
  _$$_TypeDetailsCopyWith<_$_TypeDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

Stat _$StatFromJson(Map<String, dynamic> json) {
  return _Stat.fromJson(json);
}

/// @nodoc
mixin _$Stat {
  @HiveField(0)
  @JsonKey(name: 'base_stat')
  int get stat => throw _privateConstructorUsedError;
  @HiveField(1)
  @JsonKey(name: 'stat', fromJson: _decodeStat)
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StatCopyWith<Stat> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatCopyWith<$Res> {
  factory $StatCopyWith(Stat value, $Res Function(Stat) then) =
      _$StatCopyWithImpl<$Res>;
  $Res call(
      {@HiveField(0) @JsonKey(name: 'base_stat') int stat,
      @HiveField(1) @JsonKey(name: 'stat', fromJson: _decodeStat) String name});
}

/// @nodoc
class _$StatCopyWithImpl<$Res> implements $StatCopyWith<$Res> {
  _$StatCopyWithImpl(this._value, this._then);

  final Stat _value;
  // ignore: unused_field
  final $Res Function(Stat) _then;

  @override
  $Res call({
    Object? stat = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      stat: stat == freezed
          ? _value.stat
          : stat // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_StatCopyWith<$Res> implements $StatCopyWith<$Res> {
  factory _$$_StatCopyWith(_$_Stat value, $Res Function(_$_Stat) then) =
      __$$_StatCopyWithImpl<$Res>;
  @override
  $Res call(
      {@HiveField(0) @JsonKey(name: 'base_stat') int stat,
      @HiveField(1) @JsonKey(name: 'stat', fromJson: _decodeStat) String name});
}

/// @nodoc
class __$$_StatCopyWithImpl<$Res> extends _$StatCopyWithImpl<$Res>
    implements _$$_StatCopyWith<$Res> {
  __$$_StatCopyWithImpl(_$_Stat _value, $Res Function(_$_Stat) _then)
      : super(_value, (v) => _then(v as _$_Stat));

  @override
  _$_Stat get _value => super._value as _$_Stat;

  @override
  $Res call({
    Object? stat = freezed,
    Object? name = freezed,
  }) {
    return _then(_$_Stat(
      stat: stat == freezed
          ? _value.stat
          : stat // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Stat implements _Stat {
  const _$_Stat(
      {@HiveField(0)
      @JsonKey(name: 'base_stat')
          required this.stat,
      @HiveField(1)
      @JsonKey(name: 'stat', fromJson: _decodeStat)
          required this.name});

  factory _$_Stat.fromJson(Map<String, dynamic> json) => _$$_StatFromJson(json);

  @override
  @HiveField(0)
  @JsonKey(name: 'base_stat')
  final int stat;
  @override
  @HiveField(1)
  @JsonKey(name: 'stat', fromJson: _decodeStat)
  final String name;

  @override
  String toString() {
    return 'Stat(stat: $stat, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Stat &&
            const DeepCollectionEquality().equals(other.stat, stat) &&
            const DeepCollectionEquality().equals(other.name, name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(stat),
      const DeepCollectionEquality().hash(name));

  @JsonKey(ignore: true)
  @override
  _$$_StatCopyWith<_$_Stat> get copyWith =>
      __$$_StatCopyWithImpl<_$_Stat>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StatToJson(
      this,
    );
  }
}

abstract class _Stat implements Stat {
  const factory _Stat(
      {@HiveField(0)
      @JsonKey(name: 'base_stat')
          required final int stat,
      @HiveField(1)
      @JsonKey(name: 'stat', fromJson: _decodeStat)
          required final String name}) = _$_Stat;

  factory _Stat.fromJson(Map<String, dynamic> json) = _$_Stat.fromJson;

  @override
  @HiveField(0)
  @JsonKey(name: 'base_stat')
  int get stat;
  @override
  @HiveField(1)
  @JsonKey(name: 'stat', fromJson: _decodeStat)
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_StatCopyWith<_$_Stat> get copyWith => throw _privateConstructorUsedError;
}
