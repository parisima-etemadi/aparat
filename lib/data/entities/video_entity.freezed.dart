// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'video_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

VideoEntity _$VideoEntityFromJson(Map<String, dynamic> json) {
  return _VideoEntity.fromJson(json);
}

/// @nodoc
mixin _$VideoEntity {
  String get small_poster => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VideoEntityCopyWith<VideoEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoEntityCopyWith<$Res> {
  factory $VideoEntityCopyWith(
          VideoEntity value, $Res Function(VideoEntity) then) =
      _$VideoEntityCopyWithImpl<$Res>;
  $Res call({String small_poster});
}

/// @nodoc
class _$VideoEntityCopyWithImpl<$Res> implements $VideoEntityCopyWith<$Res> {
  _$VideoEntityCopyWithImpl(this._value, this._then);

  final VideoEntity _value;
  // ignore: unused_field
  final $Res Function(VideoEntity) _then;

  @override
  $Res call({
    Object? small_poster = freezed,
  }) {
    return _then(_value.copyWith(
      small_poster: small_poster == freezed
          ? _value.small_poster
          : small_poster // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_VideoEntityCopyWith<$Res>
    implements $VideoEntityCopyWith<$Res> {
  factory _$$_VideoEntityCopyWith(
          _$_VideoEntity value, $Res Function(_$_VideoEntity) then) =
      __$$_VideoEntityCopyWithImpl<$Res>;
  @override
  $Res call({String small_poster});
}

/// @nodoc
class __$$_VideoEntityCopyWithImpl<$Res> extends _$VideoEntityCopyWithImpl<$Res>
    implements _$$_VideoEntityCopyWith<$Res> {
  __$$_VideoEntityCopyWithImpl(
      _$_VideoEntity _value, $Res Function(_$_VideoEntity) _then)
      : super(_value, (v) => _then(v as _$_VideoEntity));

  @override
  _$_VideoEntity get _value => super._value as _$_VideoEntity;

  @override
  $Res call({
    Object? small_poster = freezed,
  }) {
    return _then(_$_VideoEntity(
      small_poster: small_poster == freezed
          ? _value.small_poster
          : small_poster // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VideoEntity implements _VideoEntity {
  const _$_VideoEntity({required this.small_poster});

  factory _$_VideoEntity.fromJson(Map<String, dynamic> json) =>
      _$$_VideoEntityFromJson(json);

  @override
  final String small_poster;

  @override
  String toString() {
    return 'VideoEntity(small_poster: $small_poster)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VideoEntity &&
            const DeepCollectionEquality()
                .equals(other.small_poster, small_poster));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(small_poster));

  @JsonKey(ignore: true)
  @override
  _$$_VideoEntityCopyWith<_$_VideoEntity> get copyWith =>
      __$$_VideoEntityCopyWithImpl<_$_VideoEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VideoEntityToJson(
      this,
    );
  }
}

abstract class _VideoEntity implements VideoEntity {
  const factory _VideoEntity({required final String small_poster}) =
      _$_VideoEntity;

  factory _VideoEntity.fromJson(Map<String, dynamic> json) =
      _$_VideoEntity.fromJson;

  @override
  String get small_poster;
  @override
  @JsonKey(ignore: true)
  _$$_VideoEntityCopyWith<_$_VideoEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
