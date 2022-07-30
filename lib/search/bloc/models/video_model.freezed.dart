// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'video_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

VideoModel _$VideoModelFromJson(Map<String, dynamic> json) {
  return _VideoModel.fromJson(json);
}

/// @nodoc
mixin _$VideoModel {
  String get small_poster => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VideoModelCopyWith<VideoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoModelCopyWith<$Res> {
  factory $VideoModelCopyWith(
          VideoModel value, $Res Function(VideoModel) then) =
      _$VideoModelCopyWithImpl<$Res>;
  $Res call({String small_poster});
}

/// @nodoc
class _$VideoModelCopyWithImpl<$Res> implements $VideoModelCopyWith<$Res> {
  _$VideoModelCopyWithImpl(this._value, this._then);

  final VideoModel _value;
  // ignore: unused_field
  final $Res Function(VideoModel) _then;

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
abstract class _$$_VideoModelCopyWith<$Res>
    implements $VideoModelCopyWith<$Res> {
  factory _$$_VideoModelCopyWith(
          _$_VideoModel value, $Res Function(_$_VideoModel) then) =
      __$$_VideoModelCopyWithImpl<$Res>;
  @override
  $Res call({String small_poster});
}

/// @nodoc
class __$$_VideoModelCopyWithImpl<$Res> extends _$VideoModelCopyWithImpl<$Res>
    implements _$$_VideoModelCopyWith<$Res> {
  __$$_VideoModelCopyWithImpl(
      _$_VideoModel _value, $Res Function(_$_VideoModel) _then)
      : super(_value, (v) => _then(v as _$_VideoModel));

  @override
  _$_VideoModel get _value => super._value as _$_VideoModel;

  @override
  $Res call({
    Object? small_poster = freezed,
  }) {
    return _then(_$_VideoModel(
      small_poster: small_poster == freezed
          ? _value.small_poster
          : small_poster // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VideoModel implements _VideoModel {
  const _$_VideoModel({required this.small_poster});

  factory _$_VideoModel.fromJson(Map<String, dynamic> json) =>
      _$$_VideoModelFromJson(json);

  @override
  final String small_poster;

  @override
  String toString() {
    return 'VideoModel(small_poster: $small_poster)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VideoModel &&
            const DeepCollectionEquality()
                .equals(other.small_poster, small_poster));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(small_poster));

  @JsonKey(ignore: true)
  @override
  _$$_VideoModelCopyWith<_$_VideoModel> get copyWith =>
      __$$_VideoModelCopyWithImpl<_$_VideoModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VideoModelToJson(
      this,
    );
  }
}

abstract class _VideoModel implements VideoModel {
  const factory _VideoModel({required final String small_poster}) =
      _$_VideoModel;

  factory _VideoModel.fromJson(Map<String, dynamic> json) =
      _$_VideoModel.fromJson;

  @override
  String get small_poster;
  @override
  @JsonKey(ignore: true)
  _$$_VideoModelCopyWith<_$_VideoModel> get copyWith =>
      throw _privateConstructorUsedError;
}
