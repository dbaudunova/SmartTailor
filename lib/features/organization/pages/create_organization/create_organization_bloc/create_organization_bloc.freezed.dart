// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_organization_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CreateOrganizationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CreateOrganizationModel createModel)
        createOrganization,
    required TResult Function(File image) addImage,
    required TResult Function() resetState,
    required TResult Function() selectPhoto,
    required TResult Function() capturePhots,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CreateOrganizationModel createModel)? createOrganization,
    TResult? Function(File image)? addImage,
    TResult? Function()? resetState,
    TResult? Function()? selectPhoto,
    TResult? Function()? capturePhots,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CreateOrganizationModel createModel)? createOrganization,
    TResult Function(File image)? addImage,
    TResult Function()? resetState,
    TResult Function()? selectPhoto,
    TResult Function()? capturePhots,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateOrganization value) createOrganization,
    required TResult Function(_AddImage value) addImage,
    required TResult Function(_ResetState value) resetState,
    required TResult Function(_SelectPhoto value) selectPhoto,
    required TResult Function(_CapturePhoto value) capturePhots,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateOrganization value)? createOrganization,
    TResult? Function(_AddImage value)? addImage,
    TResult? Function(_ResetState value)? resetState,
    TResult? Function(_SelectPhoto value)? selectPhoto,
    TResult? Function(_CapturePhoto value)? capturePhots,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateOrganization value)? createOrganization,
    TResult Function(_AddImage value)? addImage,
    TResult Function(_ResetState value)? resetState,
    TResult Function(_SelectPhoto value)? selectPhoto,
    TResult Function(_CapturePhoto value)? capturePhots,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateOrganizationEventCopyWith<$Res> {
  factory $CreateOrganizationEventCopyWith(CreateOrganizationEvent value,
          $Res Function(CreateOrganizationEvent) then) =
      _$CreateOrganizationEventCopyWithImpl<$Res, CreateOrganizationEvent>;
}

/// @nodoc
class _$CreateOrganizationEventCopyWithImpl<$Res,
        $Val extends CreateOrganizationEvent>
    implements $CreateOrganizationEventCopyWith<$Res> {
  _$CreateOrganizationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CreateOrganizationImplCopyWith<$Res> {
  factory _$$CreateOrganizationImplCopyWith(_$CreateOrganizationImpl value,
          $Res Function(_$CreateOrganizationImpl) then) =
      __$$CreateOrganizationImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CreateOrganizationModel createModel});

  $CreateOrganizationModelCopyWith<$Res> get createModel;
}

/// @nodoc
class __$$CreateOrganizationImplCopyWithImpl<$Res>
    extends _$CreateOrganizationEventCopyWithImpl<$Res,
        _$CreateOrganizationImpl>
    implements _$$CreateOrganizationImplCopyWith<$Res> {
  __$$CreateOrganizationImplCopyWithImpl(_$CreateOrganizationImpl _value,
      $Res Function(_$CreateOrganizationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createModel = null,
  }) {
    return _then(_$CreateOrganizationImpl(
      createModel: null == createModel
          ? _value.createModel
          : createModel // ignore: cast_nullable_to_non_nullable
              as CreateOrganizationModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CreateOrganizationModelCopyWith<$Res> get createModel {
    return $CreateOrganizationModelCopyWith<$Res>(_value.createModel, (value) {
      return _then(_value.copyWith(createModel: value));
    });
  }
}

/// @nodoc

class _$CreateOrganizationImpl implements _CreateOrganization {
  const _$CreateOrganizationImpl({required this.createModel});

  @override
  final CreateOrganizationModel createModel;

  @override
  String toString() {
    return 'CreateOrganizationEvent.createOrganization(createModel: $createModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateOrganizationImpl &&
            (identical(other.createModel, createModel) ||
                other.createModel == createModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, createModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateOrganizationImplCopyWith<_$CreateOrganizationImpl> get copyWith =>
      __$$CreateOrganizationImplCopyWithImpl<_$CreateOrganizationImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CreateOrganizationModel createModel)
        createOrganization,
    required TResult Function(File image) addImage,
    required TResult Function() resetState,
    required TResult Function() selectPhoto,
    required TResult Function() capturePhots,
  }) {
    return createOrganization(createModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CreateOrganizationModel createModel)? createOrganization,
    TResult? Function(File image)? addImage,
    TResult? Function()? resetState,
    TResult? Function()? selectPhoto,
    TResult? Function()? capturePhots,
  }) {
    return createOrganization?.call(createModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CreateOrganizationModel createModel)? createOrganization,
    TResult Function(File image)? addImage,
    TResult Function()? resetState,
    TResult Function()? selectPhoto,
    TResult Function()? capturePhots,
    required TResult orElse(),
  }) {
    if (createOrganization != null) {
      return createOrganization(createModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateOrganization value) createOrganization,
    required TResult Function(_AddImage value) addImage,
    required TResult Function(_ResetState value) resetState,
    required TResult Function(_SelectPhoto value) selectPhoto,
    required TResult Function(_CapturePhoto value) capturePhots,
  }) {
    return createOrganization(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateOrganization value)? createOrganization,
    TResult? Function(_AddImage value)? addImage,
    TResult? Function(_ResetState value)? resetState,
    TResult? Function(_SelectPhoto value)? selectPhoto,
    TResult? Function(_CapturePhoto value)? capturePhots,
  }) {
    return createOrganization?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateOrganization value)? createOrganization,
    TResult Function(_AddImage value)? addImage,
    TResult Function(_ResetState value)? resetState,
    TResult Function(_SelectPhoto value)? selectPhoto,
    TResult Function(_CapturePhoto value)? capturePhots,
    required TResult orElse(),
  }) {
    if (createOrganization != null) {
      return createOrganization(this);
    }
    return orElse();
  }
}

abstract class _CreateOrganization implements CreateOrganizationEvent {
  const factory _CreateOrganization(
          {required final CreateOrganizationModel createModel}) =
      _$CreateOrganizationImpl;

  CreateOrganizationModel get createModel;
  @JsonKey(ignore: true)
  _$$CreateOrganizationImplCopyWith<_$CreateOrganizationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddImageImplCopyWith<$Res> {
  factory _$$AddImageImplCopyWith(
          _$AddImageImpl value, $Res Function(_$AddImageImpl) then) =
      __$$AddImageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({File image});
}

/// @nodoc
class __$$AddImageImplCopyWithImpl<$Res>
    extends _$CreateOrganizationEventCopyWithImpl<$Res, _$AddImageImpl>
    implements _$$AddImageImplCopyWith<$Res> {
  __$$AddImageImplCopyWithImpl(
      _$AddImageImpl _value, $Res Function(_$AddImageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = null,
  }) {
    return _then(_$AddImageImpl(
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as File,
    ));
  }
}

/// @nodoc

class _$AddImageImpl implements _AddImage {
  const _$AddImageImpl({required this.image});

  @override
  final File image;

  @override
  String toString() {
    return 'CreateOrganizationEvent.addImage(image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddImageImpl &&
            (identical(other.image, image) || other.image == image));
  }

  @override
  int get hashCode => Object.hash(runtimeType, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddImageImplCopyWith<_$AddImageImpl> get copyWith =>
      __$$AddImageImplCopyWithImpl<_$AddImageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CreateOrganizationModel createModel)
        createOrganization,
    required TResult Function(File image) addImage,
    required TResult Function() resetState,
    required TResult Function() selectPhoto,
    required TResult Function() capturePhots,
  }) {
    return addImage(image);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CreateOrganizationModel createModel)? createOrganization,
    TResult? Function(File image)? addImage,
    TResult? Function()? resetState,
    TResult? Function()? selectPhoto,
    TResult? Function()? capturePhots,
  }) {
    return addImage?.call(image);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CreateOrganizationModel createModel)? createOrganization,
    TResult Function(File image)? addImage,
    TResult Function()? resetState,
    TResult Function()? selectPhoto,
    TResult Function()? capturePhots,
    required TResult orElse(),
  }) {
    if (addImage != null) {
      return addImage(image);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateOrganization value) createOrganization,
    required TResult Function(_AddImage value) addImage,
    required TResult Function(_ResetState value) resetState,
    required TResult Function(_SelectPhoto value) selectPhoto,
    required TResult Function(_CapturePhoto value) capturePhots,
  }) {
    return addImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateOrganization value)? createOrganization,
    TResult? Function(_AddImage value)? addImage,
    TResult? Function(_ResetState value)? resetState,
    TResult? Function(_SelectPhoto value)? selectPhoto,
    TResult? Function(_CapturePhoto value)? capturePhots,
  }) {
    return addImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateOrganization value)? createOrganization,
    TResult Function(_AddImage value)? addImage,
    TResult Function(_ResetState value)? resetState,
    TResult Function(_SelectPhoto value)? selectPhoto,
    TResult Function(_CapturePhoto value)? capturePhots,
    required TResult orElse(),
  }) {
    if (addImage != null) {
      return addImage(this);
    }
    return orElse();
  }
}

abstract class _AddImage implements CreateOrganizationEvent {
  const factory _AddImage({required final File image}) = _$AddImageImpl;

  File get image;
  @JsonKey(ignore: true)
  _$$AddImageImplCopyWith<_$AddImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ResetStateImplCopyWith<$Res> {
  factory _$$ResetStateImplCopyWith(
          _$ResetStateImpl value, $Res Function(_$ResetStateImpl) then) =
      __$$ResetStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ResetStateImplCopyWithImpl<$Res>
    extends _$CreateOrganizationEventCopyWithImpl<$Res, _$ResetStateImpl>
    implements _$$ResetStateImplCopyWith<$Res> {
  __$$ResetStateImplCopyWithImpl(
      _$ResetStateImpl _value, $Res Function(_$ResetStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ResetStateImpl implements _ResetState {
  const _$ResetStateImpl();

  @override
  String toString() {
    return 'CreateOrganizationEvent.resetState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ResetStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CreateOrganizationModel createModel)
        createOrganization,
    required TResult Function(File image) addImage,
    required TResult Function() resetState,
    required TResult Function() selectPhoto,
    required TResult Function() capturePhots,
  }) {
    return resetState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CreateOrganizationModel createModel)? createOrganization,
    TResult? Function(File image)? addImage,
    TResult? Function()? resetState,
    TResult? Function()? selectPhoto,
    TResult? Function()? capturePhots,
  }) {
    return resetState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CreateOrganizationModel createModel)? createOrganization,
    TResult Function(File image)? addImage,
    TResult Function()? resetState,
    TResult Function()? selectPhoto,
    TResult Function()? capturePhots,
    required TResult orElse(),
  }) {
    if (resetState != null) {
      return resetState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateOrganization value) createOrganization,
    required TResult Function(_AddImage value) addImage,
    required TResult Function(_ResetState value) resetState,
    required TResult Function(_SelectPhoto value) selectPhoto,
    required TResult Function(_CapturePhoto value) capturePhots,
  }) {
    return resetState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateOrganization value)? createOrganization,
    TResult? Function(_AddImage value)? addImage,
    TResult? Function(_ResetState value)? resetState,
    TResult? Function(_SelectPhoto value)? selectPhoto,
    TResult? Function(_CapturePhoto value)? capturePhots,
  }) {
    return resetState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateOrganization value)? createOrganization,
    TResult Function(_AddImage value)? addImage,
    TResult Function(_ResetState value)? resetState,
    TResult Function(_SelectPhoto value)? selectPhoto,
    TResult Function(_CapturePhoto value)? capturePhots,
    required TResult orElse(),
  }) {
    if (resetState != null) {
      return resetState(this);
    }
    return orElse();
  }
}

abstract class _ResetState implements CreateOrganizationEvent {
  const factory _ResetState() = _$ResetStateImpl;
}

/// @nodoc
abstract class _$$SelectPhotoImplCopyWith<$Res> {
  factory _$$SelectPhotoImplCopyWith(
          _$SelectPhotoImpl value, $Res Function(_$SelectPhotoImpl) then) =
      __$$SelectPhotoImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SelectPhotoImplCopyWithImpl<$Res>
    extends _$CreateOrganizationEventCopyWithImpl<$Res, _$SelectPhotoImpl>
    implements _$$SelectPhotoImplCopyWith<$Res> {
  __$$SelectPhotoImplCopyWithImpl(
      _$SelectPhotoImpl _value, $Res Function(_$SelectPhotoImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SelectPhotoImpl implements _SelectPhoto {
  const _$SelectPhotoImpl();

  @override
  String toString() {
    return 'CreateOrganizationEvent.selectPhoto()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SelectPhotoImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CreateOrganizationModel createModel)
        createOrganization,
    required TResult Function(File image) addImage,
    required TResult Function() resetState,
    required TResult Function() selectPhoto,
    required TResult Function() capturePhots,
  }) {
    return selectPhoto();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CreateOrganizationModel createModel)? createOrganization,
    TResult? Function(File image)? addImage,
    TResult? Function()? resetState,
    TResult? Function()? selectPhoto,
    TResult? Function()? capturePhots,
  }) {
    return selectPhoto?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CreateOrganizationModel createModel)? createOrganization,
    TResult Function(File image)? addImage,
    TResult Function()? resetState,
    TResult Function()? selectPhoto,
    TResult Function()? capturePhots,
    required TResult orElse(),
  }) {
    if (selectPhoto != null) {
      return selectPhoto();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateOrganization value) createOrganization,
    required TResult Function(_AddImage value) addImage,
    required TResult Function(_ResetState value) resetState,
    required TResult Function(_SelectPhoto value) selectPhoto,
    required TResult Function(_CapturePhoto value) capturePhots,
  }) {
    return selectPhoto(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateOrganization value)? createOrganization,
    TResult? Function(_AddImage value)? addImage,
    TResult? Function(_ResetState value)? resetState,
    TResult? Function(_SelectPhoto value)? selectPhoto,
    TResult? Function(_CapturePhoto value)? capturePhots,
  }) {
    return selectPhoto?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateOrganization value)? createOrganization,
    TResult Function(_AddImage value)? addImage,
    TResult Function(_ResetState value)? resetState,
    TResult Function(_SelectPhoto value)? selectPhoto,
    TResult Function(_CapturePhoto value)? capturePhots,
    required TResult orElse(),
  }) {
    if (selectPhoto != null) {
      return selectPhoto(this);
    }
    return orElse();
  }
}

abstract class _SelectPhoto implements CreateOrganizationEvent {
  const factory _SelectPhoto() = _$SelectPhotoImpl;
}

/// @nodoc
abstract class _$$CapturePhotoImplCopyWith<$Res> {
  factory _$$CapturePhotoImplCopyWith(
          _$CapturePhotoImpl value, $Res Function(_$CapturePhotoImpl) then) =
      __$$CapturePhotoImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CapturePhotoImplCopyWithImpl<$Res>
    extends _$CreateOrganizationEventCopyWithImpl<$Res, _$CapturePhotoImpl>
    implements _$$CapturePhotoImplCopyWith<$Res> {
  __$$CapturePhotoImplCopyWithImpl(
      _$CapturePhotoImpl _value, $Res Function(_$CapturePhotoImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CapturePhotoImpl implements _CapturePhoto {
  const _$CapturePhotoImpl();

  @override
  String toString() {
    return 'CreateOrganizationEvent.capturePhots()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CapturePhotoImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CreateOrganizationModel createModel)
        createOrganization,
    required TResult Function(File image) addImage,
    required TResult Function() resetState,
    required TResult Function() selectPhoto,
    required TResult Function() capturePhots,
  }) {
    return capturePhots();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CreateOrganizationModel createModel)? createOrganization,
    TResult? Function(File image)? addImage,
    TResult? Function()? resetState,
    TResult? Function()? selectPhoto,
    TResult? Function()? capturePhots,
  }) {
    return capturePhots?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CreateOrganizationModel createModel)? createOrganization,
    TResult Function(File image)? addImage,
    TResult Function()? resetState,
    TResult Function()? selectPhoto,
    TResult Function()? capturePhots,
    required TResult orElse(),
  }) {
    if (capturePhots != null) {
      return capturePhots();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateOrganization value) createOrganization,
    required TResult Function(_AddImage value) addImage,
    required TResult Function(_ResetState value) resetState,
    required TResult Function(_SelectPhoto value) selectPhoto,
    required TResult Function(_CapturePhoto value) capturePhots,
  }) {
    return capturePhots(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateOrganization value)? createOrganization,
    TResult? Function(_AddImage value)? addImage,
    TResult? Function(_ResetState value)? resetState,
    TResult? Function(_SelectPhoto value)? selectPhoto,
    TResult? Function(_CapturePhoto value)? capturePhots,
  }) {
    return capturePhots?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateOrganization value)? createOrganization,
    TResult Function(_AddImage value)? addImage,
    TResult Function(_ResetState value)? resetState,
    TResult Function(_SelectPhoto value)? selectPhoto,
    TResult Function(_CapturePhoto value)? capturePhots,
    required TResult orElse(),
  }) {
    if (capturePhots != null) {
      return capturePhots(this);
    }
    return orElse();
  }
}

abstract class _CapturePhoto implements CreateOrganizationEvent {
  const factory _CapturePhoto() = _$CapturePhotoImpl;
}

/// @nodoc
mixin _$CreateOrganizationState {
  File? get image => throw _privateConstructorUsedError;
  StateStatus get stateStatus => throw _privateConstructorUsedError;
  TextEditingController get controller => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CreateOrganizationStateCopyWith<CreateOrganizationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateOrganizationStateCopyWith<$Res> {
  factory $CreateOrganizationStateCopyWith(CreateOrganizationState value,
          $Res Function(CreateOrganizationState) then) =
      _$CreateOrganizationStateCopyWithImpl<$Res, CreateOrganizationState>;
  @useResult
  $Res call(
      {File? image, StateStatus stateStatus, TextEditingController controller});

  $StateStatusCopyWith<$Res> get stateStatus;
}

/// @nodoc
class _$CreateOrganizationStateCopyWithImpl<$Res,
        $Val extends CreateOrganizationState>
    implements $CreateOrganizationStateCopyWith<$Res> {
  _$CreateOrganizationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = freezed,
    Object? stateStatus = null,
    Object? controller = null,
  }) {
    return _then(_value.copyWith(
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as File?,
      stateStatus: null == stateStatus
          ? _value.stateStatus
          : stateStatus // ignore: cast_nullable_to_non_nullable
              as StateStatus,
      controller: null == controller
          ? _value.controller
          : controller // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $StateStatusCopyWith<$Res> get stateStatus {
    return $StateStatusCopyWith<$Res>(_value.stateStatus, (value) {
      return _then(_value.copyWith(stateStatus: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CreateOrganizationStateImplCopyWith<$Res>
    implements $CreateOrganizationStateCopyWith<$Res> {
  factory _$$CreateOrganizationStateImplCopyWith(
          _$CreateOrganizationStateImpl value,
          $Res Function(_$CreateOrganizationStateImpl) then) =
      __$$CreateOrganizationStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {File? image, StateStatus stateStatus, TextEditingController controller});

  @override
  $StateStatusCopyWith<$Res> get stateStatus;
}

/// @nodoc
class __$$CreateOrganizationStateImplCopyWithImpl<$Res>
    extends _$CreateOrganizationStateCopyWithImpl<$Res,
        _$CreateOrganizationStateImpl>
    implements _$$CreateOrganizationStateImplCopyWith<$Res> {
  __$$CreateOrganizationStateImplCopyWithImpl(
      _$CreateOrganizationStateImpl _value,
      $Res Function(_$CreateOrganizationStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = freezed,
    Object? stateStatus = null,
    Object? controller = null,
  }) {
    return _then(_$CreateOrganizationStateImpl(
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as File?,
      stateStatus: null == stateStatus
          ? _value.stateStatus
          : stateStatus // ignore: cast_nullable_to_non_nullable
              as StateStatus,
      controller: null == controller
          ? _value.controller
          : controller // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
    ));
  }
}

/// @nodoc

class _$CreateOrganizationStateImpl implements _CreateOrganizationState {
  const _$CreateOrganizationStateImpl(
      {required this.image,
      required this.stateStatus,
      required this.controller});

  @override
  final File? image;
  @override
  final StateStatus stateStatus;
  @override
  final TextEditingController controller;

  @override
  String toString() {
    return 'CreateOrganizationState(image: $image, stateStatus: $stateStatus, controller: $controller)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateOrganizationStateImpl &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.stateStatus, stateStatus) ||
                other.stateStatus == stateStatus) &&
            (identical(other.controller, controller) ||
                other.controller == controller));
  }

  @override
  int get hashCode => Object.hash(runtimeType, image, stateStatus, controller);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateOrganizationStateImplCopyWith<_$CreateOrganizationStateImpl>
      get copyWith => __$$CreateOrganizationStateImplCopyWithImpl<
          _$CreateOrganizationStateImpl>(this, _$identity);
}

abstract class _CreateOrganizationState implements CreateOrganizationState {
  const factory _CreateOrganizationState(
          {required final File? image,
          required final StateStatus stateStatus,
          required final TextEditingController controller}) =
      _$CreateOrganizationStateImpl;

  @override
  File? get image;
  @override
  StateStatus get stateStatus;
  @override
  TextEditingController get controller;
  @override
  @JsonKey(ignore: true)
  _$$CreateOrganizationStateImplCopyWith<_$CreateOrganizationStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
