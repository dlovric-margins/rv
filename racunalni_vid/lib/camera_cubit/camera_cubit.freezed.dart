// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'camera_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CameraState {
  ImageData get imageData => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  CameraController? get controller => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            ImageData imageData, bool isLoading, CameraController? controller)
        imageState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            ImageData imageData, bool isLoading, CameraController? controller)?
        imageState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            ImageData imageData, bool isLoading, CameraController? controller)?
        imageState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loaded value) imageState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loaded value)? imageState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loaded value)? imageState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CameraStateCopyWith<CameraState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CameraStateCopyWith<$Res> {
  factory $CameraStateCopyWith(
          CameraState value, $Res Function(CameraState) then) =
      _$CameraStateCopyWithImpl<$Res, CameraState>;
  @useResult
  $Res call(
      {ImageData imageData, bool isLoading, CameraController? controller});

  $ImageDataCopyWith<$Res> get imageData;
}

/// @nodoc
class _$CameraStateCopyWithImpl<$Res, $Val extends CameraState>
    implements $CameraStateCopyWith<$Res> {
  _$CameraStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageData = null,
    Object? isLoading = null,
    Object? controller = freezed,
  }) {
    return _then(_value.copyWith(
      imageData: null == imageData
          ? _value.imageData
          : imageData // ignore: cast_nullable_to_non_nullable
              as ImageData,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      controller: freezed == controller
          ? _value.controller
          : controller // ignore: cast_nullable_to_non_nullable
              as CameraController?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ImageDataCopyWith<$Res> get imageData {
    return $ImageDataCopyWith<$Res>(_value.imageData, (value) {
      return _then(_value.copyWith(imageData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_LoadedCopyWith<$Res> implements $CameraStateCopyWith<$Res> {
  factory _$$_LoadedCopyWith(_$_Loaded value, $Res Function(_$_Loaded) then) =
      __$$_LoadedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ImageData imageData, bool isLoading, CameraController? controller});

  @override
  $ImageDataCopyWith<$Res> get imageData;
}

/// @nodoc
class __$$_LoadedCopyWithImpl<$Res>
    extends _$CameraStateCopyWithImpl<$Res, _$_Loaded>
    implements _$$_LoadedCopyWith<$Res> {
  __$$_LoadedCopyWithImpl(_$_Loaded _value, $Res Function(_$_Loaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageData = null,
    Object? isLoading = null,
    Object? controller = freezed,
  }) {
    return _then(_$_Loaded(
      null == imageData
          ? _value.imageData
          : imageData // ignore: cast_nullable_to_non_nullable
              as ImageData,
      null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      freezed == controller
          ? _value.controller
          : controller // ignore: cast_nullable_to_non_nullable
              as CameraController?,
    ));
  }
}

/// @nodoc

class _$_Loaded implements _Loaded {
  const _$_Loaded(this.imageData, this.isLoading, this.controller);

  @override
  final ImageData imageData;
  @override
  final bool isLoading;
  @override
  final CameraController? controller;

  @override
  String toString() {
    return 'CameraState.imageState(imageData: $imageData, isLoading: $isLoading, controller: $controller)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Loaded &&
            (identical(other.imageData, imageData) ||
                other.imageData == imageData) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.controller, controller) ||
                other.controller == controller));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, imageData, isLoading, controller);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadedCopyWith<_$_Loaded> get copyWith =>
      __$$_LoadedCopyWithImpl<_$_Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            ImageData imageData, bool isLoading, CameraController? controller)
        imageState,
  }) {
    return imageState(imageData, isLoading, controller);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            ImageData imageData, bool isLoading, CameraController? controller)?
        imageState,
  }) {
    return imageState?.call(imageData, isLoading, controller);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            ImageData imageData, bool isLoading, CameraController? controller)?
        imageState,
    required TResult orElse(),
  }) {
    if (imageState != null) {
      return imageState(imageData, isLoading, controller);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loaded value) imageState,
  }) {
    return imageState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loaded value)? imageState,
  }) {
    return imageState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loaded value)? imageState,
    required TResult orElse(),
  }) {
    if (imageState != null) {
      return imageState(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements CameraState {
  const factory _Loaded(final ImageData imageData, final bool isLoading,
      final CameraController? controller) = _$_Loaded;

  @override
  ImageData get imageData;
  @override
  bool get isLoading;
  @override
  CameraController? get controller;
  @override
  @JsonKey(ignore: true)
  _$$_LoadedCopyWith<_$_Loaded> get copyWith =>
      throw _privateConstructorUsedError;
}
