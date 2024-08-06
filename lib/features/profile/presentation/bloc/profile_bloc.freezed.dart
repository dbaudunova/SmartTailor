// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProfileEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signOut,
    required TResult Function() getProfileInfo,
    required TResult Function(ProfileEntity profileEntity) editProfileInfo,
    required TResult Function(File imageFile) uploadImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? signOut,
    TResult? Function()? getProfileInfo,
    TResult? Function(ProfileEntity profileEntity)? editProfileInfo,
    TResult? Function(File imageFile)? uploadImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signOut,
    TResult Function()? getProfileInfo,
    TResult Function(ProfileEntity profileEntity)? editProfileInfo,
    TResult Function(File imageFile)? uploadImage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignOut value) signOut,
    required TResult Function(_GetProfileInfo value) getProfileInfo,
    required TResult Function(_EditProfileInfo value) editProfileInfo,
    required TResult Function(_UploadImage value) uploadImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignOut value)? signOut,
    TResult? Function(_GetProfileInfo value)? getProfileInfo,
    TResult? Function(_EditProfileInfo value)? editProfileInfo,
    TResult? Function(_UploadImage value)? uploadImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignOut value)? signOut,
    TResult Function(_GetProfileInfo value)? getProfileInfo,
    TResult Function(_EditProfileInfo value)? editProfileInfo,
    TResult Function(_UploadImage value)? uploadImage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileEventCopyWith<$Res> {
  factory $ProfileEventCopyWith(
          ProfileEvent value, $Res Function(ProfileEvent) then) =
      _$ProfileEventCopyWithImpl<$Res, ProfileEvent>;
}

/// @nodoc
class _$ProfileEventCopyWithImpl<$Res, $Val extends ProfileEvent>
    implements $ProfileEventCopyWith<$Res> {
  _$ProfileEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SignOutImplCopyWith<$Res> {
  factory _$$SignOutImplCopyWith(
          _$SignOutImpl value, $Res Function(_$SignOutImpl) then) =
      __$$SignOutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignOutImplCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$SignOutImpl>
    implements _$$SignOutImplCopyWith<$Res> {
  __$$SignOutImplCopyWithImpl(
      _$SignOutImpl _value, $Res Function(_$SignOutImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SignOutImpl implements _SignOut {
  const _$SignOutImpl();

  @override
  String toString() {
    return 'ProfileEvent.signOut()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SignOutImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signOut,
    required TResult Function() getProfileInfo,
    required TResult Function(ProfileEntity profileEntity) editProfileInfo,
    required TResult Function(File imageFile) uploadImage,
  }) {
    return signOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? signOut,
    TResult? Function()? getProfileInfo,
    TResult? Function(ProfileEntity profileEntity)? editProfileInfo,
    TResult? Function(File imageFile)? uploadImage,
  }) {
    return signOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signOut,
    TResult Function()? getProfileInfo,
    TResult Function(ProfileEntity profileEntity)? editProfileInfo,
    TResult Function(File imageFile)? uploadImage,
    required TResult orElse(),
  }) {
    if (signOut != null) {
      return signOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignOut value) signOut,
    required TResult Function(_GetProfileInfo value) getProfileInfo,
    required TResult Function(_EditProfileInfo value) editProfileInfo,
    required TResult Function(_UploadImage value) uploadImage,
  }) {
    return signOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignOut value)? signOut,
    TResult? Function(_GetProfileInfo value)? getProfileInfo,
    TResult? Function(_EditProfileInfo value)? editProfileInfo,
    TResult? Function(_UploadImage value)? uploadImage,
  }) {
    return signOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignOut value)? signOut,
    TResult Function(_GetProfileInfo value)? getProfileInfo,
    TResult Function(_EditProfileInfo value)? editProfileInfo,
    TResult Function(_UploadImage value)? uploadImage,
    required TResult orElse(),
  }) {
    if (signOut != null) {
      return signOut(this);
    }
    return orElse();
  }
}

abstract class _SignOut implements ProfileEvent {
  const factory _SignOut() = _$SignOutImpl;
}

/// @nodoc
abstract class _$$GetProfileInfoImplCopyWith<$Res> {
  factory _$$GetProfileInfoImplCopyWith(_$GetProfileInfoImpl value,
          $Res Function(_$GetProfileInfoImpl) then) =
      __$$GetProfileInfoImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetProfileInfoImplCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$GetProfileInfoImpl>
    implements _$$GetProfileInfoImplCopyWith<$Res> {
  __$$GetProfileInfoImplCopyWithImpl(
      _$GetProfileInfoImpl _value, $Res Function(_$GetProfileInfoImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetProfileInfoImpl implements _GetProfileInfo {
  const _$GetProfileInfoImpl();

  @override
  String toString() {
    return 'ProfileEvent.getProfileInfo()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetProfileInfoImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signOut,
    required TResult Function() getProfileInfo,
    required TResult Function(ProfileEntity profileEntity) editProfileInfo,
    required TResult Function(File imageFile) uploadImage,
  }) {
    return getProfileInfo();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? signOut,
    TResult? Function()? getProfileInfo,
    TResult? Function(ProfileEntity profileEntity)? editProfileInfo,
    TResult? Function(File imageFile)? uploadImage,
  }) {
    return getProfileInfo?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signOut,
    TResult Function()? getProfileInfo,
    TResult Function(ProfileEntity profileEntity)? editProfileInfo,
    TResult Function(File imageFile)? uploadImage,
    required TResult orElse(),
  }) {
    if (getProfileInfo != null) {
      return getProfileInfo();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignOut value) signOut,
    required TResult Function(_GetProfileInfo value) getProfileInfo,
    required TResult Function(_EditProfileInfo value) editProfileInfo,
    required TResult Function(_UploadImage value) uploadImage,
  }) {
    return getProfileInfo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignOut value)? signOut,
    TResult? Function(_GetProfileInfo value)? getProfileInfo,
    TResult? Function(_EditProfileInfo value)? editProfileInfo,
    TResult? Function(_UploadImage value)? uploadImage,
  }) {
    return getProfileInfo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignOut value)? signOut,
    TResult Function(_GetProfileInfo value)? getProfileInfo,
    TResult Function(_EditProfileInfo value)? editProfileInfo,
    TResult Function(_UploadImage value)? uploadImage,
    required TResult orElse(),
  }) {
    if (getProfileInfo != null) {
      return getProfileInfo(this);
    }
    return orElse();
  }
}

abstract class _GetProfileInfo implements ProfileEvent {
  const factory _GetProfileInfo() = _$GetProfileInfoImpl;
}

/// @nodoc
abstract class _$$EditProfileInfoImplCopyWith<$Res> {
  factory _$$EditProfileInfoImplCopyWith(_$EditProfileInfoImpl value,
          $Res Function(_$EditProfileInfoImpl) then) =
      __$$EditProfileInfoImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ProfileEntity profileEntity});
}

/// @nodoc
class __$$EditProfileInfoImplCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$EditProfileInfoImpl>
    implements _$$EditProfileInfoImplCopyWith<$Res> {
  __$$EditProfileInfoImplCopyWithImpl(
      _$EditProfileInfoImpl _value, $Res Function(_$EditProfileInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? profileEntity = null,
  }) {
    return _then(_$EditProfileInfoImpl(
      null == profileEntity
          ? _value.profileEntity
          : profileEntity // ignore: cast_nullable_to_non_nullable
              as ProfileEntity,
    ));
  }
}

/// @nodoc

class _$EditProfileInfoImpl implements _EditProfileInfo {
  const _$EditProfileInfoImpl(this.profileEntity);

  @override
  final ProfileEntity profileEntity;

  @override
  String toString() {
    return 'ProfileEvent.editProfileInfo(profileEntity: $profileEntity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditProfileInfoImpl &&
            (identical(other.profileEntity, profileEntity) ||
                other.profileEntity == profileEntity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, profileEntity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EditProfileInfoImplCopyWith<_$EditProfileInfoImpl> get copyWith =>
      __$$EditProfileInfoImplCopyWithImpl<_$EditProfileInfoImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signOut,
    required TResult Function() getProfileInfo,
    required TResult Function(ProfileEntity profileEntity) editProfileInfo,
    required TResult Function(File imageFile) uploadImage,
  }) {
    return editProfileInfo(profileEntity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? signOut,
    TResult? Function()? getProfileInfo,
    TResult? Function(ProfileEntity profileEntity)? editProfileInfo,
    TResult? Function(File imageFile)? uploadImage,
  }) {
    return editProfileInfo?.call(profileEntity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signOut,
    TResult Function()? getProfileInfo,
    TResult Function(ProfileEntity profileEntity)? editProfileInfo,
    TResult Function(File imageFile)? uploadImage,
    required TResult orElse(),
  }) {
    if (editProfileInfo != null) {
      return editProfileInfo(profileEntity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignOut value) signOut,
    required TResult Function(_GetProfileInfo value) getProfileInfo,
    required TResult Function(_EditProfileInfo value) editProfileInfo,
    required TResult Function(_UploadImage value) uploadImage,
  }) {
    return editProfileInfo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignOut value)? signOut,
    TResult? Function(_GetProfileInfo value)? getProfileInfo,
    TResult? Function(_EditProfileInfo value)? editProfileInfo,
    TResult? Function(_UploadImage value)? uploadImage,
  }) {
    return editProfileInfo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignOut value)? signOut,
    TResult Function(_GetProfileInfo value)? getProfileInfo,
    TResult Function(_EditProfileInfo value)? editProfileInfo,
    TResult Function(_UploadImage value)? uploadImage,
    required TResult orElse(),
  }) {
    if (editProfileInfo != null) {
      return editProfileInfo(this);
    }
    return orElse();
  }
}

abstract class _EditProfileInfo implements ProfileEvent {
  const factory _EditProfileInfo(final ProfileEntity profileEntity) =
      _$EditProfileInfoImpl;

  ProfileEntity get profileEntity;
  @JsonKey(ignore: true)
  _$$EditProfileInfoImplCopyWith<_$EditProfileInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UploadImageImplCopyWith<$Res> {
  factory _$$UploadImageImplCopyWith(
          _$UploadImageImpl value, $Res Function(_$UploadImageImpl) then) =
      __$$UploadImageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({File imageFile});
}

/// @nodoc
class __$$UploadImageImplCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$UploadImageImpl>
    implements _$$UploadImageImplCopyWith<$Res> {
  __$$UploadImageImplCopyWithImpl(
      _$UploadImageImpl _value, $Res Function(_$UploadImageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageFile = null,
  }) {
    return _then(_$UploadImageImpl(
      null == imageFile
          ? _value.imageFile
          : imageFile // ignore: cast_nullable_to_non_nullable
              as File,
    ));
  }
}

/// @nodoc

class _$UploadImageImpl implements _UploadImage {
  const _$UploadImageImpl(this.imageFile);

  @override
  final File imageFile;

  @override
  String toString() {
    return 'ProfileEvent.uploadImage(imageFile: $imageFile)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UploadImageImpl &&
            (identical(other.imageFile, imageFile) ||
                other.imageFile == imageFile));
  }

  @override
  int get hashCode => Object.hash(runtimeType, imageFile);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UploadImageImplCopyWith<_$UploadImageImpl> get copyWith =>
      __$$UploadImageImplCopyWithImpl<_$UploadImageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signOut,
    required TResult Function() getProfileInfo,
    required TResult Function(ProfileEntity profileEntity) editProfileInfo,
    required TResult Function(File imageFile) uploadImage,
  }) {
    return uploadImage(imageFile);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? signOut,
    TResult? Function()? getProfileInfo,
    TResult? Function(ProfileEntity profileEntity)? editProfileInfo,
    TResult? Function(File imageFile)? uploadImage,
  }) {
    return uploadImage?.call(imageFile);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signOut,
    TResult Function()? getProfileInfo,
    TResult Function(ProfileEntity profileEntity)? editProfileInfo,
    TResult Function(File imageFile)? uploadImage,
    required TResult orElse(),
  }) {
    if (uploadImage != null) {
      return uploadImage(imageFile);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignOut value) signOut,
    required TResult Function(_GetProfileInfo value) getProfileInfo,
    required TResult Function(_EditProfileInfo value) editProfileInfo,
    required TResult Function(_UploadImage value) uploadImage,
  }) {
    return uploadImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignOut value)? signOut,
    TResult? Function(_GetProfileInfo value)? getProfileInfo,
    TResult? Function(_EditProfileInfo value)? editProfileInfo,
    TResult? Function(_UploadImage value)? uploadImage,
  }) {
    return uploadImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignOut value)? signOut,
    TResult Function(_GetProfileInfo value)? getProfileInfo,
    TResult Function(_EditProfileInfo value)? editProfileInfo,
    TResult Function(_UploadImage value)? uploadImage,
    required TResult orElse(),
  }) {
    if (uploadImage != null) {
      return uploadImage(this);
    }
    return orElse();
  }
}

abstract class _UploadImage implements ProfileEvent {
  const factory _UploadImage(final File imageFile) = _$UploadImageImpl;

  File get imageFile;
  @JsonKey(ignore: true)
  _$$UploadImageImplCopyWith<_$UploadImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ProfileState {
  StateStatus get stateStatus => throw _privateConstructorUsedError;
  ProfileEntity? get profile => throw _privateConstructorUsedError;
  bool get isProfileLoaded => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProfileStateCopyWith<ProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileStateCopyWith<$Res> {
  factory $ProfileStateCopyWith(
          ProfileState value, $Res Function(ProfileState) then) =
      _$ProfileStateCopyWithImpl<$Res, ProfileState>;
  @useResult
  $Res call(
      {StateStatus stateStatus, ProfileEntity? profile, bool isProfileLoaded});

  $StateStatusCopyWith<$Res> get stateStatus;
}

/// @nodoc
class _$ProfileStateCopyWithImpl<$Res, $Val extends ProfileState>
    implements $ProfileStateCopyWith<$Res> {
  _$ProfileStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stateStatus = null,
    Object? profile = freezed,
    Object? isProfileLoaded = null,
  }) {
    return _then(_value.copyWith(
      stateStatus: null == stateStatus
          ? _value.stateStatus
          : stateStatus // ignore: cast_nullable_to_non_nullable
              as StateStatus,
      profile: freezed == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as ProfileEntity?,
      isProfileLoaded: null == isProfileLoaded
          ? _value.isProfileLoaded
          : isProfileLoaded // ignore: cast_nullable_to_non_nullable
              as bool,
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
abstract class _$$ProfileStateImplCopyWith<$Res>
    implements $ProfileStateCopyWith<$Res> {
  factory _$$ProfileStateImplCopyWith(
          _$ProfileStateImpl value, $Res Function(_$ProfileStateImpl) then) =
      __$$ProfileStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {StateStatus stateStatus, ProfileEntity? profile, bool isProfileLoaded});

  @override
  $StateStatusCopyWith<$Res> get stateStatus;
}

/// @nodoc
class __$$ProfileStateImplCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$ProfileStateImpl>
    implements _$$ProfileStateImplCopyWith<$Res> {
  __$$ProfileStateImplCopyWithImpl(
      _$ProfileStateImpl _value, $Res Function(_$ProfileStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stateStatus = null,
    Object? profile = freezed,
    Object? isProfileLoaded = null,
  }) {
    return _then(_$ProfileStateImpl(
      stateStatus: null == stateStatus
          ? _value.stateStatus
          : stateStatus // ignore: cast_nullable_to_non_nullable
              as StateStatus,
      profile: freezed == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as ProfileEntity?,
      isProfileLoaded: null == isProfileLoaded
          ? _value.isProfileLoaded
          : isProfileLoaded // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ProfileStateImpl implements _ProfileState {
  const _$ProfileStateImpl(
      {required this.stateStatus, this.profile, this.isProfileLoaded = false});

  @override
  final StateStatus stateStatus;
  @override
  final ProfileEntity? profile;
  @override
  @JsonKey()
  final bool isProfileLoaded;

  @override
  String toString() {
    return 'ProfileState(stateStatus: $stateStatus, profile: $profile, isProfileLoaded: $isProfileLoaded)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileStateImpl &&
            (identical(other.stateStatus, stateStatus) ||
                other.stateStatus == stateStatus) &&
            (identical(other.profile, profile) || other.profile == profile) &&
            (identical(other.isProfileLoaded, isProfileLoaded) ||
                other.isProfileLoaded == isProfileLoaded));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, stateStatus, profile, isProfileLoaded);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileStateImplCopyWith<_$ProfileStateImpl> get copyWith =>
      __$$ProfileStateImplCopyWithImpl<_$ProfileStateImpl>(this, _$identity);
}

abstract class _ProfileState implements ProfileState {
  const factory _ProfileState(
      {required final StateStatus stateStatus,
      final ProfileEntity? profile,
      final bool isProfileLoaded}) = _$ProfileStateImpl;

  @override
  StateStatus get stateStatus;
  @override
  ProfileEntity? get profile;
  @override
  bool get isProfileLoaded;
  @override
  @JsonKey(ignore: true)
  _$$ProfileStateImplCopyWith<_$ProfileStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
