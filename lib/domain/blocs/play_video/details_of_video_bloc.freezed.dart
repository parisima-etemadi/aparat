// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'details_of_video_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DetailsOfVideoEvent {
  String get uId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String uId) GetVideoDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String uId)? GetVideoDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String uId)? GetVideoDetails,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetVideoDetails value) GetVideoDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetVideoDetails value)? GetVideoDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetVideoDetails value)? GetVideoDetails,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DetailsOfVideoEventCopyWith<DetailsOfVideoEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailsOfVideoEventCopyWith<$Res> {
  factory $DetailsOfVideoEventCopyWith(
          DetailsOfVideoEvent value, $Res Function(DetailsOfVideoEvent) then) =
      _$DetailsOfVideoEventCopyWithImpl<$Res>;
  $Res call({String uId});
}

/// @nodoc
class _$DetailsOfVideoEventCopyWithImpl<$Res>
    implements $DetailsOfVideoEventCopyWith<$Res> {
  _$DetailsOfVideoEventCopyWithImpl(this._value, this._then);

  final DetailsOfVideoEvent _value;
  // ignore: unused_field
  final $Res Function(DetailsOfVideoEvent) _then;

  @override
  $Res call({
    Object? uId = freezed,
  }) {
    return _then(_value.copyWith(
      uId: uId == freezed
          ? _value.uId
          : uId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$GetVideoDetailsCopyWith<$Res>
    implements $DetailsOfVideoEventCopyWith<$Res> {
  factory _$$GetVideoDetailsCopyWith(
          _$GetVideoDetails value, $Res Function(_$GetVideoDetails) then) =
      __$$GetVideoDetailsCopyWithImpl<$Res>;
  @override
  $Res call({String uId});
}

/// @nodoc
class __$$GetVideoDetailsCopyWithImpl<$Res>
    extends _$DetailsOfVideoEventCopyWithImpl<$Res>
    implements _$$GetVideoDetailsCopyWith<$Res> {
  __$$GetVideoDetailsCopyWithImpl(
      _$GetVideoDetails _value, $Res Function(_$GetVideoDetails) _then)
      : super(_value, (v) => _then(v as _$GetVideoDetails));

  @override
  _$GetVideoDetails get _value => super._value as _$GetVideoDetails;

  @override
  $Res call({
    Object? uId = freezed,
  }) {
    return _then(_$GetVideoDetails(
      uId: uId == freezed
          ? _value.uId
          : uId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetVideoDetails implements GetVideoDetails {
  const _$GetVideoDetails({required this.uId});

  @override
  final String uId;

  @override
  String toString() {
    return 'DetailsOfVideoEvent.GetVideoDetails(uId: $uId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetVideoDetails &&
            const DeepCollectionEquality().equals(other.uId, uId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(uId));

  @JsonKey(ignore: true)
  @override
  _$$GetVideoDetailsCopyWith<_$GetVideoDetails> get copyWith =>
      __$$GetVideoDetailsCopyWithImpl<_$GetVideoDetails>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String uId) GetVideoDetails,
  }) {
    return GetVideoDetails(uId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String uId)? GetVideoDetails,
  }) {
    return GetVideoDetails?.call(uId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String uId)? GetVideoDetails,
    required TResult orElse(),
  }) {
    if (GetVideoDetails != null) {
      return GetVideoDetails(uId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetVideoDetails value) GetVideoDetails,
  }) {
    return GetVideoDetails(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetVideoDetails value)? GetVideoDetails,
  }) {
    return GetVideoDetails?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetVideoDetails value)? GetVideoDetails,
    required TResult orElse(),
  }) {
    if (GetVideoDetails != null) {
      return GetVideoDetails(this);
    }
    return orElse();
  }
}

abstract class GetVideoDetails implements DetailsOfVideoEvent {
  const factory GetVideoDetails({required final String uId}) =
      _$GetVideoDetails;

  @override
  String get uId;
  @override
  @JsonKey(ignore: true)
  _$$GetVideoDetailsCopyWith<_$GetVideoDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DetailsOfVideoState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(VideoDetailModel videoDetailModel) Loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(VideoDetailModel videoDetailModel)? Loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(VideoDetailModel videoDetailModel)? Loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DetailsOfVideoInitial value) initial,
    required TResult Function(_DetailsOfVideoLoaded value) Loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_DetailsOfVideoInitial value)? initial,
    TResult Function(_DetailsOfVideoLoaded value)? Loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DetailsOfVideoInitial value)? initial,
    TResult Function(_DetailsOfVideoLoaded value)? Loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailsOfVideoStateCopyWith<$Res> {
  factory $DetailsOfVideoStateCopyWith(
          DetailsOfVideoState value, $Res Function(DetailsOfVideoState) then) =
      _$DetailsOfVideoStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$DetailsOfVideoStateCopyWithImpl<$Res>
    implements $DetailsOfVideoStateCopyWith<$Res> {
  _$DetailsOfVideoStateCopyWithImpl(this._value, this._then);

  final DetailsOfVideoState _value;
  // ignore: unused_field
  final $Res Function(DetailsOfVideoState) _then;
}

/// @nodoc
abstract class _$$_DetailsOfVideoInitialCopyWith<$Res> {
  factory _$$_DetailsOfVideoInitialCopyWith(_$_DetailsOfVideoInitial value,
          $Res Function(_$_DetailsOfVideoInitial) then) =
      __$$_DetailsOfVideoInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_DetailsOfVideoInitialCopyWithImpl<$Res>
    extends _$DetailsOfVideoStateCopyWithImpl<$Res>
    implements _$$_DetailsOfVideoInitialCopyWith<$Res> {
  __$$_DetailsOfVideoInitialCopyWithImpl(_$_DetailsOfVideoInitial _value,
      $Res Function(_$_DetailsOfVideoInitial) _then)
      : super(_value, (v) => _then(v as _$_DetailsOfVideoInitial));

  @override
  _$_DetailsOfVideoInitial get _value =>
      super._value as _$_DetailsOfVideoInitial;
}

/// @nodoc

class _$_DetailsOfVideoInitial implements _DetailsOfVideoInitial {
  const _$_DetailsOfVideoInitial();

  @override
  String toString() {
    return 'DetailsOfVideoState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_DetailsOfVideoInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(VideoDetailModel videoDetailModel) Loaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(VideoDetailModel videoDetailModel)? Loaded,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(VideoDetailModel videoDetailModel)? Loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DetailsOfVideoInitial value) initial,
    required TResult Function(_DetailsOfVideoLoaded value) Loaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_DetailsOfVideoInitial value)? initial,
    TResult Function(_DetailsOfVideoLoaded value)? Loaded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DetailsOfVideoInitial value)? initial,
    TResult Function(_DetailsOfVideoLoaded value)? Loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _DetailsOfVideoInitial implements DetailsOfVideoState {
  const factory _DetailsOfVideoInitial() = _$_DetailsOfVideoInitial;
}

/// @nodoc
abstract class _$$_DetailsOfVideoLoadedCopyWith<$Res> {
  factory _$$_DetailsOfVideoLoadedCopyWith(_$_DetailsOfVideoLoaded value,
          $Res Function(_$_DetailsOfVideoLoaded) then) =
      __$$_DetailsOfVideoLoadedCopyWithImpl<$Res>;
  $Res call({VideoDetailModel videoDetailModel});
}

/// @nodoc
class __$$_DetailsOfVideoLoadedCopyWithImpl<$Res>
    extends _$DetailsOfVideoStateCopyWithImpl<$Res>
    implements _$$_DetailsOfVideoLoadedCopyWith<$Res> {
  __$$_DetailsOfVideoLoadedCopyWithImpl(_$_DetailsOfVideoLoaded _value,
      $Res Function(_$_DetailsOfVideoLoaded) _then)
      : super(_value, (v) => _then(v as _$_DetailsOfVideoLoaded));

  @override
  _$_DetailsOfVideoLoaded get _value => super._value as _$_DetailsOfVideoLoaded;

  @override
  $Res call({
    Object? videoDetailModel = freezed,
  }) {
    return _then(_$_DetailsOfVideoLoaded(
      videoDetailModel: videoDetailModel == freezed
          ? _value.videoDetailModel
          : videoDetailModel // ignore: cast_nullable_to_non_nullable
              as VideoDetailModel,
    ));
  }
}

/// @nodoc

class _$_DetailsOfVideoLoaded implements _DetailsOfVideoLoaded {
  const _$_DetailsOfVideoLoaded({required this.videoDetailModel});

  @override
  final VideoDetailModel videoDetailModel;

  @override
  String toString() {
    return 'DetailsOfVideoState.Loaded(videoDetailModel: $videoDetailModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DetailsOfVideoLoaded &&
            const DeepCollectionEquality()
                .equals(other.videoDetailModel, videoDetailModel));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(videoDetailModel));

  @JsonKey(ignore: true)
  @override
  _$$_DetailsOfVideoLoadedCopyWith<_$_DetailsOfVideoLoaded> get copyWith =>
      __$$_DetailsOfVideoLoadedCopyWithImpl<_$_DetailsOfVideoLoaded>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(VideoDetailModel videoDetailModel) Loaded,
  }) {
    return Loaded(videoDetailModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(VideoDetailModel videoDetailModel)? Loaded,
  }) {
    return Loaded?.call(videoDetailModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(VideoDetailModel videoDetailModel)? Loaded,
    required TResult orElse(),
  }) {
    if (Loaded != null) {
      return Loaded(videoDetailModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DetailsOfVideoInitial value) initial,
    required TResult Function(_DetailsOfVideoLoaded value) Loaded,
  }) {
    return Loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_DetailsOfVideoInitial value)? initial,
    TResult Function(_DetailsOfVideoLoaded value)? Loaded,
  }) {
    return Loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DetailsOfVideoInitial value)? initial,
    TResult Function(_DetailsOfVideoLoaded value)? Loaded,
    required TResult orElse(),
  }) {
    if (Loaded != null) {
      return Loaded(this);
    }
    return orElse();
  }
}

abstract class _DetailsOfVideoLoaded implements DetailsOfVideoState {
  const factory _DetailsOfVideoLoaded(
          {required final VideoDetailModel videoDetailModel}) =
      _$_DetailsOfVideoLoaded;

  VideoDetailModel get videoDetailModel;
  @JsonKey(ignore: true)
  _$$_DetailsOfVideoLoadedCopyWith<_$_DetailsOfVideoLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}
