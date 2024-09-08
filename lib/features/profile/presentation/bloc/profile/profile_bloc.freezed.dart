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
    required TResult Function() sendSubscription,
    required TResult Function() uploadImage,
    required TResult Function(ImageSource source, int? imageQuality) getImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? signOut,
    TResult? Function()? getProfileInfo,
    TResult? Function(ProfileEntity profileEntity)? editProfileInfo,
    TResult? Function()? sendSubscription,
    TResult? Function()? uploadImage,
    TResult? Function(ImageSource source, int? imageQuality)? getImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signOut,
    TResult Function()? getProfileInfo,
    TResult Function(ProfileEntity profileEntity)? editProfileInfo,
    TResult Function()? sendSubscription,
    TResult Function()? uploadImage,
    TResult Function(ImageSource source, int? imageQuality)? getImage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignOut value) signOut,
    required TResult Function(_GetProfileInfo value) getProfileInfo,
    required TResult Function(_EditProfileInfo value) editProfileInfo,
    required TResult Function(_SendSubscription value) sendSubscription,
    required TResult Function(_UploadImage value) uploadImage,
    required TResult Function(_GetImage value) getImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignOut value)? signOut,
    TResult? Function(_GetProfileInfo value)? getProfileInfo,
    TResult? Function(_EditProfileInfo value)? editProfileInfo,
    TResult? Function(_SendSubscription value)? sendSubscription,
    TResult? Function(_UploadImage value)? uploadImage,
    TResult? Function(_GetImage value)? getImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignOut value)? signOut,
    TResult Function(_GetProfileInfo value)? getProfileInfo,
    TResult Function(_EditProfileInfo value)? editProfileInfo,
    TResult Function(_SendSubscription value)? sendSubscription,
    TResult Function(_UploadImage value)? uploadImage,
    TResult Function(_GetImage value)? getImage,
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
    required TResult Function() sendSubscription,
    required TResult Function() uploadImage,
    required TResult Function(ImageSource source, int? imageQuality) getImage,
  }) {
    return signOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? signOut,
    TResult? Function()? getProfileInfo,
    TResult? Function(ProfileEntity profileEntity)? editProfileInfo,
    TResult? Function()? sendSubscription,
    TResult? Function()? uploadImage,
    TResult? Function(ImageSource source, int? imageQuality)? getImage,
  }) {
    return signOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signOut,
    TResult Function()? getProfileInfo,
    TResult Function(ProfileEntity profileEntity)? editProfileInfo,
    TResult Function()? sendSubscription,
    TResult Function()? uploadImage,
    TResult Function(ImageSource source, int? imageQuality)? getImage,
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
    required TResult Function(_SendSubscription value) sendSubscription,
    required TResult Function(_UploadImage value) uploadImage,
    required TResult Function(_GetImage value) getImage,
  }) {
    return signOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignOut value)? signOut,
    TResult? Function(_GetProfileInfo value)? getProfileInfo,
    TResult? Function(_EditProfileInfo value)? editProfileInfo,
    TResult? Function(_SendSubscription value)? sendSubscription,
    TResult? Function(_UploadImage value)? uploadImage,
    TResult? Function(_GetImage value)? getImage,
  }) {
    return signOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignOut value)? signOut,
    TResult Function(_GetProfileInfo value)? getProfileInfo,
    TResult Function(_EditProfileInfo value)? editProfileInfo,
    TResult Function(_SendSubscription value)? sendSubscription,
    TResult Function(_UploadImage value)? uploadImage,
    TResult Function(_GetImage value)? getImage,
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
    required TResult Function() sendSubscription,
    required TResult Function() uploadImage,
    required TResult Function(ImageSource source, int? imageQuality) getImage,
  }) {
    return getProfileInfo();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? signOut,
    TResult? Function()? getProfileInfo,
    TResult? Function(ProfileEntity profileEntity)? editProfileInfo,
    TResult? Function()? sendSubscription,
    TResult? Function()? uploadImage,
    TResult? Function(ImageSource source, int? imageQuality)? getImage,
  }) {
    return getProfileInfo?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signOut,
    TResult Function()? getProfileInfo,
    TResult Function(ProfileEntity profileEntity)? editProfileInfo,
    TResult Function()? sendSubscription,
    TResult Function()? uploadImage,
    TResult Function(ImageSource source, int? imageQuality)? getImage,
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
    required TResult Function(_SendSubscription value) sendSubscription,
    required TResult Function(_UploadImage value) uploadImage,
    required TResult Function(_GetImage value) getImage,
  }) {
    return getProfileInfo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignOut value)? signOut,
    TResult? Function(_GetProfileInfo value)? getProfileInfo,
    TResult? Function(_EditProfileInfo value)? editProfileInfo,
    TResult? Function(_SendSubscription value)? sendSubscription,
    TResult? Function(_UploadImage value)? uploadImage,
    TResult? Function(_GetImage value)? getImage,
  }) {
    return getProfileInfo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignOut value)? signOut,
    TResult Function(_GetProfileInfo value)? getProfileInfo,
    TResult Function(_EditProfileInfo value)? editProfileInfo,
    TResult Function(_SendSubscription value)? sendSubscription,
    TResult Function(_UploadImage value)? uploadImage,
    TResult Function(_GetImage value)? getImage,
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
    required TResult Function() sendSubscription,
    required TResult Function() uploadImage,
    required TResult Function(ImageSource source, int? imageQuality) getImage,
  }) {
    return editProfileInfo(profileEntity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? signOut,
    TResult? Function()? getProfileInfo,
    TResult? Function(ProfileEntity profileEntity)? editProfileInfo,
    TResult? Function()? sendSubscription,
    TResult? Function()? uploadImage,
    TResult? Function(ImageSource source, int? imageQuality)? getImage,
  }) {
    return editProfileInfo?.call(profileEntity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signOut,
    TResult Function()? getProfileInfo,
    TResult Function(ProfileEntity profileEntity)? editProfileInfo,
    TResult Function()? sendSubscription,
    TResult Function()? uploadImage,
    TResult Function(ImageSource source, int? imageQuality)? getImage,
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
    required TResult Function(_SendSubscription value) sendSubscription,
    required TResult Function(_UploadImage value) uploadImage,
    required TResult Function(_GetImage value) getImage,
  }) {
    return editProfileInfo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignOut value)? signOut,
    TResult? Function(_GetProfileInfo value)? getProfileInfo,
    TResult? Function(_EditProfileInfo value)? editProfileInfo,
    TResult? Function(_SendSubscription value)? sendSubscription,
    TResult? Function(_UploadImage value)? uploadImage,
    TResult? Function(_GetImage value)? getImage,
  }) {
    return editProfileInfo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignOut value)? signOut,
    TResult Function(_GetProfileInfo value)? getProfileInfo,
    TResult Function(_EditProfileInfo value)? editProfileInfo,
    TResult Function(_SendSubscription value)? sendSubscription,
    TResult Function(_UploadImage value)? uploadImage,
    TResult Function(_GetImage value)? getImage,
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
abstract class _$$SendSubscriptionImplCopyWith<$Res> {
  factory _$$SendSubscriptionImplCopyWith(_$SendSubscriptionImpl value,
          $Res Function(_$SendSubscriptionImpl) then) =
      __$$SendSubscriptionImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SendSubscriptionImplCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$SendSubscriptionImpl>
    implements _$$SendSubscriptionImplCopyWith<$Res> {
  __$$SendSubscriptionImplCopyWithImpl(_$SendSubscriptionImpl _value,
      $Res Function(_$SendSubscriptionImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SendSubscriptionImpl implements _SendSubscription {
  const _$SendSubscriptionImpl();

  @override
  String toString() {
    return 'ProfileEvent.sendSubscription()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SendSubscriptionImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signOut,
    required TResult Function() getProfileInfo,
    required TResult Function(ProfileEntity profileEntity) editProfileInfo,
    required TResult Function() sendSubscription,
    required TResult Function() uploadImage,
    required TResult Function(ImageSource source, int? imageQuality) getImage,
  }) {
    return sendSubscription();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? signOut,
    TResult? Function()? getProfileInfo,
    TResult? Function(ProfileEntity profileEntity)? editProfileInfo,
    TResult? Function()? sendSubscription,
    TResult? Function()? uploadImage,
    TResult? Function(ImageSource source, int? imageQuality)? getImage,
  }) {
    return sendSubscription?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signOut,
    TResult Function()? getProfileInfo,
    TResult Function(ProfileEntity profileEntity)? editProfileInfo,
    TResult Function()? sendSubscription,
    TResult Function()? uploadImage,
    TResult Function(ImageSource source, int? imageQuality)? getImage,
    required TResult orElse(),
  }) {
    if (sendSubscription != null) {
      return sendSubscription();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignOut value) signOut,
    required TResult Function(_GetProfileInfo value) getProfileInfo,
    required TResult Function(_EditProfileInfo value) editProfileInfo,
    required TResult Function(_SendSubscription value) sendSubscription,
    required TResult Function(_UploadImage value) uploadImage,
    required TResult Function(_GetImage value) getImage,
  }) {
    return sendSubscription(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignOut value)? signOut,
    TResult? Function(_GetProfileInfo value)? getProfileInfo,
    TResult? Function(_EditProfileInfo value)? editProfileInfo,
    TResult? Function(_SendSubscription value)? sendSubscription,
    TResult? Function(_UploadImage value)? uploadImage,
    TResult? Function(_GetImage value)? getImage,
  }) {
    return sendSubscription?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignOut value)? signOut,
    TResult Function(_GetProfileInfo value)? getProfileInfo,
    TResult Function(_EditProfileInfo value)? editProfileInfo,
    TResult Function(_SendSubscription value)? sendSubscription,
    TResult Function(_UploadImage value)? uploadImage,
    TResult Function(_GetImage value)? getImage,
    required TResult orElse(),
  }) {
    if (sendSubscription != null) {
      return sendSubscription(this);
    }
    return orElse();
  }
}

abstract class _SendSubscription implements ProfileEvent {
  const factory _SendSubscription() = _$SendSubscriptionImpl;
}

/// @nodoc
abstract class _$$UploadImageImplCopyWith<$Res> {
  factory _$$UploadImageImplCopyWith(
          _$UploadImageImpl value, $Res Function(_$UploadImageImpl) then) =
      __$$UploadImageImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UploadImageImplCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$UploadImageImpl>
    implements _$$UploadImageImplCopyWith<$Res> {
  __$$UploadImageImplCopyWithImpl(
      _$UploadImageImpl _value, $Res Function(_$UploadImageImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UploadImageImpl implements _UploadImage {
  const _$UploadImageImpl();

  @override
  String toString() {
    return 'ProfileEvent.uploadImage()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UploadImageImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signOut,
    required TResult Function() getProfileInfo,
    required TResult Function(ProfileEntity profileEntity) editProfileInfo,
    required TResult Function() sendSubscription,
    required TResult Function() uploadImage,
    required TResult Function(ImageSource source, int? imageQuality) getImage,
  }) {
    return uploadImage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? signOut,
    TResult? Function()? getProfileInfo,
    TResult? Function(ProfileEntity profileEntity)? editProfileInfo,
    TResult? Function()? sendSubscription,
    TResult? Function()? uploadImage,
    TResult? Function(ImageSource source, int? imageQuality)? getImage,
  }) {
    return uploadImage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signOut,
    TResult Function()? getProfileInfo,
    TResult Function(ProfileEntity profileEntity)? editProfileInfo,
    TResult Function()? sendSubscription,
    TResult Function()? uploadImage,
    TResult Function(ImageSource source, int? imageQuality)? getImage,
    required TResult orElse(),
  }) {
    if (uploadImage != null) {
      return uploadImage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignOut value) signOut,
    required TResult Function(_GetProfileInfo value) getProfileInfo,
    required TResult Function(_EditProfileInfo value) editProfileInfo,
    required TResult Function(_SendSubscription value) sendSubscription,
    required TResult Function(_UploadImage value) uploadImage,
    required TResult Function(_GetImage value) getImage,
  }) {
    return uploadImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignOut value)? signOut,
    TResult? Function(_GetProfileInfo value)? getProfileInfo,
    TResult? Function(_EditProfileInfo value)? editProfileInfo,
    TResult? Function(_SendSubscription value)? sendSubscription,
    TResult? Function(_UploadImage value)? uploadImage,
    TResult? Function(_GetImage value)? getImage,
  }) {
    return uploadImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignOut value)? signOut,
    TResult Function(_GetProfileInfo value)? getProfileInfo,
    TResult Function(_EditProfileInfo value)? editProfileInfo,
    TResult Function(_SendSubscription value)? sendSubscription,
    TResult Function(_UploadImage value)? uploadImage,
    TResult Function(_GetImage value)? getImage,
    required TResult orElse(),
  }) {
    if (uploadImage != null) {
      return uploadImage(this);
    }
    return orElse();
  }
}

abstract class _UploadImage implements ProfileEvent {
  const factory _UploadImage() = _$UploadImageImpl;
}

/// @nodoc
abstract class _$$GetImageImplCopyWith<$Res> {
  factory _$$GetImageImplCopyWith(
          _$GetImageImpl value, $Res Function(_$GetImageImpl) then) =
      __$$GetImageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ImageSource source, int? imageQuality});
}

/// @nodoc
class __$$GetImageImplCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$GetImageImpl>
    implements _$$GetImageImplCopyWith<$Res> {
  __$$GetImageImplCopyWithImpl(
      _$GetImageImpl _value, $Res Function(_$GetImageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? source = null,
    Object? imageQuality = freezed,
  }) {
    return _then(_$GetImageImpl(
      null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as ImageSource,
      imageQuality: freezed == imageQuality
          ? _value.imageQuality
          : imageQuality // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$GetImageImpl implements _GetImage {
  const _$GetImageImpl(this.source, {this.imageQuality});

  @override
  final ImageSource source;
  @override
  final int? imageQuality;

  @override
  String toString() {
    return 'ProfileEvent.getImage(source: $source, imageQuality: $imageQuality)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetImageImpl &&
            (identical(other.source, source) || other.source == source) &&
            (identical(other.imageQuality, imageQuality) ||
                other.imageQuality == imageQuality));
  }

  @override
  int get hashCode => Object.hash(runtimeType, source, imageQuality);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetImageImplCopyWith<_$GetImageImpl> get copyWith =>
      __$$GetImageImplCopyWithImpl<_$GetImageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signOut,
    required TResult Function() getProfileInfo,
    required TResult Function(ProfileEntity profileEntity) editProfileInfo,
    required TResult Function() sendSubscription,
    required TResult Function() uploadImage,
    required TResult Function(ImageSource source, int? imageQuality) getImage,
  }) {
    return getImage(source, imageQuality);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? signOut,
    TResult? Function()? getProfileInfo,
    TResult? Function(ProfileEntity profileEntity)? editProfileInfo,
    TResult? Function()? sendSubscription,
    TResult? Function()? uploadImage,
    TResult? Function(ImageSource source, int? imageQuality)? getImage,
  }) {
    return getImage?.call(source, imageQuality);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signOut,
    TResult Function()? getProfileInfo,
    TResult Function(ProfileEntity profileEntity)? editProfileInfo,
    TResult Function()? sendSubscription,
    TResult Function()? uploadImage,
    TResult Function(ImageSource source, int? imageQuality)? getImage,
    required TResult orElse(),
  }) {
    if (getImage != null) {
      return getImage(source, imageQuality);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignOut value) signOut,
    required TResult Function(_GetProfileInfo value) getProfileInfo,
    required TResult Function(_EditProfileInfo value) editProfileInfo,
    required TResult Function(_SendSubscription value) sendSubscription,
    required TResult Function(_UploadImage value) uploadImage,
    required TResult Function(_GetImage value) getImage,
  }) {
    return getImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignOut value)? signOut,
    TResult? Function(_GetProfileInfo value)? getProfileInfo,
    TResult? Function(_EditProfileInfo value)? editProfileInfo,
    TResult? Function(_SendSubscription value)? sendSubscription,
    TResult? Function(_UploadImage value)? uploadImage,
    TResult? Function(_GetImage value)? getImage,
  }) {
    return getImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignOut value)? signOut,
    TResult Function(_GetProfileInfo value)? getProfileInfo,
    TResult Function(_EditProfileInfo value)? editProfileInfo,
    TResult Function(_SendSubscription value)? sendSubscription,
    TResult Function(_UploadImage value)? uploadImage,
    TResult Function(_GetImage value)? getImage,
    required TResult orElse(),
  }) {
    if (getImage != null) {
      return getImage(this);
    }
    return orElse();
  }
}

abstract class _GetImage implements ProfileEvent {
  const factory _GetImage(final ImageSource source, {final int? imageQuality}) =
      _$GetImageImpl;

  ImageSource get source;
  int? get imageQuality;
  @JsonKey(ignore: true)
  _$$GetImageImplCopyWith<_$GetImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ProfileState {
  StateStatus get stateStatus => throw _privateConstructorUsedError;
  bool get subscriptionSend => throw _privateConstructorUsedError;
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
      {StateStatus stateStatus,
      bool subscriptionSend,
      ProfileEntity? profile,
      bool isProfileLoaded});

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
    Object? subscriptionSend = null,
    Object? profile = freezed,
    Object? isProfileLoaded = null,
  }) {
    return _then(_value.copyWith(
      stateStatus: null == stateStatus
          ? _value.stateStatus
          : stateStatus // ignore: cast_nullable_to_non_nullable
              as StateStatus,
      subscriptionSend: null == subscriptionSend
          ? _value.subscriptionSend
          : subscriptionSend // ignore: cast_nullable_to_non_nullable
              as bool,
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
      {StateStatus stateStatus,
      bool subscriptionSend,
      ProfileEntity? profile,
      bool isProfileLoaded});

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
    Object? subscriptionSend = null,
    Object? profile = freezed,
    Object? isProfileLoaded = null,
  }) {
    return _then(_$ProfileStateImpl(
      stateStatus: null == stateStatus
          ? _value.stateStatus
          : stateStatus // ignore: cast_nullable_to_non_nullable
              as StateStatus,
      subscriptionSend: null == subscriptionSend
          ? _value.subscriptionSend
          : subscriptionSend // ignore: cast_nullable_to_non_nullable
              as bool,
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
      {required this.stateStatus,
      required this.subscriptionSend,
      this.profile,
      this.isProfileLoaded = false});

  @override
  final StateStatus stateStatus;
  @override
  final bool subscriptionSend;
  @override
  final ProfileEntity? profile;
  @override
  @JsonKey()
  final bool isProfileLoaded;

  @override
  String toString() {
    return 'ProfileState(stateStatus: $stateStatus, subscriptionSend: $subscriptionSend, profile: $profile, isProfileLoaded: $isProfileLoaded)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileStateImpl &&
            (identical(other.stateStatus, stateStatus) ||
                other.stateStatus == stateStatus) &&
            (identical(other.subscriptionSend, subscriptionSend) ||
                other.subscriptionSend == subscriptionSend) &&
            (identical(other.profile, profile) || other.profile == profile) &&
            (identical(other.isProfileLoaded, isProfileLoaded) ||
                other.isProfileLoaded == isProfileLoaded));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, stateStatus, subscriptionSend, profile, isProfileLoaded);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileStateImplCopyWith<_$ProfileStateImpl> get copyWith =>
      __$$ProfileStateImplCopyWithImpl<_$ProfileStateImpl>(this, _$identity);
}

abstract class _ProfileState implements ProfileState {
  const factory _ProfileState(
      {required final StateStatus stateStatus,
      required final bool subscriptionSend,
      final ProfileEntity? profile,
      final bool isProfileLoaded}) = _$ProfileStateImpl;

  @override
  StateStatus get stateStatus;
  @override
  bool get subscriptionSend;
  @override
  ProfileEntity? get profile;
  @override
  bool get isProfileLoaded;
  @override
  @JsonKey(ignore: true)
  _$$ProfileStateImplCopyWith<_$ProfileStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
