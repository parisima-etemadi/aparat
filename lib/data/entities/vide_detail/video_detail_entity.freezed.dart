// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'video_detail_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

VideoDetailEntity _$VideoDetailEntityFromJson(Map<String, dynamic> json) {
  return _VideoDetailEntity.fromJson(json);
}

/// @nodoc
mixin _$VideoDetailEntity {
  String get title => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  int get visit_cnt => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  int get cat_id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VideoDetailEntityCopyWith<VideoDetailEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoDetailEntityCopyWith<$Res> {
  factory $VideoDetailEntityCopyWith(
          VideoDetailEntity value, $Res Function(VideoDetailEntity) then) =
      _$VideoDetailEntityCopyWithImpl<$Res>;
  $Res call(
      {String title,
      String username,
      int visit_cnt,
      String? description,
      int cat_id});
}

/// @nodoc
class _$VideoDetailEntityCopyWithImpl<$Res>
    implements $VideoDetailEntityCopyWith<$Res> {
  _$VideoDetailEntityCopyWithImpl(this._value, this._then);

  final VideoDetailEntity _value;
  // ignore: unused_field
  final $Res Function(VideoDetailEntity) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? username = freezed,
    Object? visit_cnt = freezed,
    Object? description = freezed,
    Object? cat_id = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      visit_cnt: visit_cnt == freezed
          ? _value.visit_cnt
          : visit_cnt // ignore: cast_nullable_to_non_nullable
              as int,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      cat_id: cat_id == freezed
          ? _value.cat_id
          : cat_id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_VideoDetailEntityCopyWith<$Res>
    implements $VideoDetailEntityCopyWith<$Res> {
  factory _$$_VideoDetailEntityCopyWith(_$_VideoDetailEntity value,
          $Res Function(_$_VideoDetailEntity) then) =
      __$$_VideoDetailEntityCopyWithImpl<$Res>;
  @override
  $Res call(
      {String title,
      String username,
      int visit_cnt,
      String? description,
      int cat_id});
}

/// @nodoc
class __$$_VideoDetailEntityCopyWithImpl<$Res>
    extends _$VideoDetailEntityCopyWithImpl<$Res>
    implements _$$_VideoDetailEntityCopyWith<$Res> {
  __$$_VideoDetailEntityCopyWithImpl(
      _$_VideoDetailEntity _value, $Res Function(_$_VideoDetailEntity) _then)
      : super(_value, (v) => _then(v as _$_VideoDetailEntity));

  @override
  _$_VideoDetailEntity get _value => super._value as _$_VideoDetailEntity;

  @override
  $Res call({
    Object? title = freezed,
    Object? username = freezed,
    Object? visit_cnt = freezed,
    Object? description = freezed,
    Object? cat_id = freezed,
  }) {
    return _then(_$_VideoDetailEntity(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      visit_cnt: visit_cnt == freezed
          ? _value.visit_cnt
          : visit_cnt // ignore: cast_nullable_to_non_nullable
              as int,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      cat_id: cat_id == freezed
          ? _value.cat_id
          : cat_id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VideoDetailEntity implements _VideoDetailEntity {
  const _$_VideoDetailEntity(
      {required this.title,
      required this.username,
      required this.visit_cnt,
      required this.description,
      required this.cat_id});

  factory _$_VideoDetailEntity.fromJson(Map<String, dynamic> json) =>
      _$$_VideoDetailEntityFromJson(json);

  @override
  final String title;
  @override
  final String username;
  @override
  final int visit_cnt;
  @override
  final String? description;
  @override
  final int cat_id;

  @override
  String toString() {
    return 'VideoDetailEntity(title: $title, username: $username, visit_cnt: $visit_cnt, description: $description, cat_id: $cat_id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VideoDetailEntity &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.username, username) &&
            const DeepCollectionEquality().equals(other.visit_cnt, visit_cnt) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.cat_id, cat_id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(username),
      const DeepCollectionEquality().hash(visit_cnt),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(cat_id));

  @JsonKey(ignore: true)
  @override
  _$$_VideoDetailEntityCopyWith<_$_VideoDetailEntity> get copyWith =>
      __$$_VideoDetailEntityCopyWithImpl<_$_VideoDetailEntity>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VideoDetailEntityToJson(
      this,
    );
  }
}

abstract class _VideoDetailEntity implements VideoDetailEntity {
  const factory _VideoDetailEntity(
      {required final String title,
      required final String username,
      required final int visit_cnt,
      required final String? description,
      required final int cat_id}) = _$_VideoDetailEntity;

  factory _VideoDetailEntity.fromJson(Map<String, dynamic> json) =
      _$_VideoDetailEntity.fromJson;

  @override
  String get title;
  @override
  String get username;
  @override
  int get visit_cnt;
  @override
  String? get description;
  @override
  int get cat_id;
  @override
  @JsonKey(ignore: true)
  _$$_VideoDetailEntityCopyWith<_$_VideoDetailEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
