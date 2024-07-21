// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'confirmation_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ConfirmationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String pinCode, String email) login,
    required TResult Function(String email) addEmail,
    required TResult Function() resendPin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String pinCode, String email)? login,
    TResult? Function(String email)? addEmail,
    TResult? Function()? resendPin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String pinCode, String email)? login,
    TResult Function(String email)? addEmail,
    TResult Function()? resendPin,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SendPin value) login,
    required TResult Function(_AddEmail value) addEmail,
    required TResult Function(_ResendPinToEmail value) resendPin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SendPin value)? login,
    TResult? Function(_AddEmail value)? addEmail,
    TResult? Function(_ResendPinToEmail value)? resendPin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendPin value)? login,
    TResult Function(_AddEmail value)? addEmail,
    TResult Function(_ResendPinToEmail value)? resendPin,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConfirmationEventCopyWith<$Res> {
  factory $ConfirmationEventCopyWith(
          ConfirmationEvent value, $Res Function(ConfirmationEvent) then) =
      _$ConfirmationEventCopyWithImpl<$Res, ConfirmationEvent>;
}

/// @nodoc
class _$ConfirmationEventCopyWithImpl<$Res, $Val extends ConfirmationEvent>
    implements $ConfirmationEventCopyWith<$Res> {
  _$ConfirmationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SendPinImplCopyWith<$Res> {
  factory _$$SendPinImplCopyWith(
          _$SendPinImpl value, $Res Function(_$SendPinImpl) then) =
      __$$SendPinImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String pinCode, String email});
}

/// @nodoc
class __$$SendPinImplCopyWithImpl<$Res>
    extends _$ConfirmationEventCopyWithImpl<$Res, _$SendPinImpl>
    implements _$$SendPinImplCopyWith<$Res> {
  __$$SendPinImplCopyWithImpl(
      _$SendPinImpl _value, $Res Function(_$SendPinImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pinCode = null,
    Object? email = null,
  }) {
    return _then(_$SendPinImpl(
      pinCode: null == pinCode
          ? _value.pinCode
          : pinCode // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SendPinImpl implements _SendPin {
  const _$SendPinImpl({required this.pinCode, required this.email});

  @override
  final String pinCode;
  @override
  final String email;

  @override
  String toString() {
    return 'ConfirmationEvent.login(pinCode: $pinCode, email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendPinImpl &&
            (identical(other.pinCode, pinCode) || other.pinCode == pinCode) &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pinCode, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SendPinImplCopyWith<_$SendPinImpl> get copyWith =>
      __$$SendPinImplCopyWithImpl<_$SendPinImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String pinCode, String email) login,
    required TResult Function(String email) addEmail,
    required TResult Function() resendPin,
  }) {
    return login(pinCode, email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String pinCode, String email)? login,
    TResult? Function(String email)? addEmail,
    TResult? Function()? resendPin,
  }) {
    return login?.call(pinCode, email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String pinCode, String email)? login,
    TResult Function(String email)? addEmail,
    TResult Function()? resendPin,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(pinCode, email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SendPin value) login,
    required TResult Function(_AddEmail value) addEmail,
    required TResult Function(_ResendPinToEmail value) resendPin,
  }) {
    return login(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SendPin value)? login,
    TResult? Function(_AddEmail value)? addEmail,
    TResult? Function(_ResendPinToEmail value)? resendPin,
  }) {
    return login?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendPin value)? login,
    TResult Function(_AddEmail value)? addEmail,
    TResult Function(_ResendPinToEmail value)? resendPin,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(this);
    }
    return orElse();
  }
}

abstract class _SendPin implements ConfirmationEvent {
  const factory _SendPin(
      {required final String pinCode,
      required final String email}) = _$SendPinImpl;

  String get pinCode;
  String get email;
  @JsonKey(ignore: true)
  _$$SendPinImplCopyWith<_$SendPinImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddEmailImplCopyWith<$Res> {
  factory _$$AddEmailImplCopyWith(
          _$AddEmailImpl value, $Res Function(_$AddEmailImpl) then) =
      __$$AddEmailImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$AddEmailImplCopyWithImpl<$Res>
    extends _$ConfirmationEventCopyWithImpl<$Res, _$AddEmailImpl>
    implements _$$AddEmailImplCopyWith<$Res> {
  __$$AddEmailImplCopyWithImpl(
      _$AddEmailImpl _value, $Res Function(_$AddEmailImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$AddEmailImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddEmailImpl implements _AddEmail {
  const _$AddEmailImpl({required this.email});

  @override
  final String email;

  @override
  String toString() {
    return 'ConfirmationEvent.addEmail(email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddEmailImpl &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddEmailImplCopyWith<_$AddEmailImpl> get copyWith =>
      __$$AddEmailImplCopyWithImpl<_$AddEmailImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String pinCode, String email) login,
    required TResult Function(String email) addEmail,
    required TResult Function() resendPin,
  }) {
    return addEmail(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String pinCode, String email)? login,
    TResult? Function(String email)? addEmail,
    TResult? Function()? resendPin,
  }) {
    return addEmail?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String pinCode, String email)? login,
    TResult Function(String email)? addEmail,
    TResult Function()? resendPin,
    required TResult orElse(),
  }) {
    if (addEmail != null) {
      return addEmail(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SendPin value) login,
    required TResult Function(_AddEmail value) addEmail,
    required TResult Function(_ResendPinToEmail value) resendPin,
  }) {
    return addEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SendPin value)? login,
    TResult? Function(_AddEmail value)? addEmail,
    TResult? Function(_ResendPinToEmail value)? resendPin,
  }) {
    return addEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendPin value)? login,
    TResult Function(_AddEmail value)? addEmail,
    TResult Function(_ResendPinToEmail value)? resendPin,
    required TResult orElse(),
  }) {
    if (addEmail != null) {
      return addEmail(this);
    }
    return orElse();
  }
}

abstract class _AddEmail implements ConfirmationEvent {
  const factory _AddEmail({required final String email}) = _$AddEmailImpl;

  String get email;
  @JsonKey(ignore: true)
  _$$AddEmailImplCopyWith<_$AddEmailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ResendPinToEmailImplCopyWith<$Res> {
  factory _$$ResendPinToEmailImplCopyWith(_$ResendPinToEmailImpl value,
          $Res Function(_$ResendPinToEmailImpl) then) =
      __$$ResendPinToEmailImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ResendPinToEmailImplCopyWithImpl<$Res>
    extends _$ConfirmationEventCopyWithImpl<$Res, _$ResendPinToEmailImpl>
    implements _$$ResendPinToEmailImplCopyWith<$Res> {
  __$$ResendPinToEmailImplCopyWithImpl(_$ResendPinToEmailImpl _value,
      $Res Function(_$ResendPinToEmailImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ResendPinToEmailImpl implements _ResendPinToEmail {
  const _$ResendPinToEmailImpl();

  @override
  String toString() {
    return 'ConfirmationEvent.resendPin()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ResendPinToEmailImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String pinCode, String email) login,
    required TResult Function(String email) addEmail,
    required TResult Function() resendPin,
  }) {
    return resendPin();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String pinCode, String email)? login,
    TResult? Function(String email)? addEmail,
    TResult? Function()? resendPin,
  }) {
    return resendPin?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String pinCode, String email)? login,
    TResult Function(String email)? addEmail,
    TResult Function()? resendPin,
    required TResult orElse(),
  }) {
    if (resendPin != null) {
      return resendPin();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SendPin value) login,
    required TResult Function(_AddEmail value) addEmail,
    required TResult Function(_ResendPinToEmail value) resendPin,
  }) {
    return resendPin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SendPin value)? login,
    TResult? Function(_AddEmail value)? addEmail,
    TResult? Function(_ResendPinToEmail value)? resendPin,
  }) {
    return resendPin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendPin value)? login,
    TResult Function(_AddEmail value)? addEmail,
    TResult Function(_ResendPinToEmail value)? resendPin,
    required TResult orElse(),
  }) {
    if (resendPin != null) {
      return resendPin(this);
    }
    return orElse();
  }
}

abstract class _ResendPinToEmail implements ConfirmationEvent {
  const factory _ResendPinToEmail() = _$ResendPinToEmailImpl;
}

/// @nodoc
mixin _$ConfirmationState {
  StateStatus get stateStatus => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ConfirmationStateCopyWith<ConfirmationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConfirmationStateCopyWith<$Res> {
  factory $ConfirmationStateCopyWith(
          ConfirmationState value, $Res Function(ConfirmationState) then) =
      _$ConfirmationStateCopyWithImpl<$Res, ConfirmationState>;
  @useResult
  $Res call({StateStatus stateStatus, String email});

  $StateStatusCopyWith<$Res> get stateStatus;
}

/// @nodoc
class _$ConfirmationStateCopyWithImpl<$Res, $Val extends ConfirmationState>
    implements $ConfirmationStateCopyWith<$Res> {
  _$ConfirmationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stateStatus = null,
    Object? email = null,
  }) {
    return _then(_value.copyWith(
      stateStatus: null == stateStatus
          ? _value.stateStatus
          : stateStatus // ignore: cast_nullable_to_non_nullable
              as StateStatus,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
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
abstract class _$$ConfirmationStateImplCopyWith<$Res>
    implements $ConfirmationStateCopyWith<$Res> {
  factory _$$ConfirmationStateImplCopyWith(_$ConfirmationStateImpl value,
          $Res Function(_$ConfirmationStateImpl) then) =
      __$$ConfirmationStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({StateStatus stateStatus, String email});

  @override
  $StateStatusCopyWith<$Res> get stateStatus;
}

/// @nodoc
class __$$ConfirmationStateImplCopyWithImpl<$Res>
    extends _$ConfirmationStateCopyWithImpl<$Res, _$ConfirmationStateImpl>
    implements _$$ConfirmationStateImplCopyWith<$Res> {
  __$$ConfirmationStateImplCopyWithImpl(_$ConfirmationStateImpl _value,
      $Res Function(_$ConfirmationStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stateStatus = null,
    Object? email = null,
  }) {
    return _then(_$ConfirmationStateImpl(
      stateStatus: null == stateStatus
          ? _value.stateStatus
          : stateStatus // ignore: cast_nullable_to_non_nullable
              as StateStatus,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ConfirmationStateImpl implements _ConfirmationState {
  const _$ConfirmationStateImpl(
      {required this.stateStatus, required this.email});

  @override
  final StateStatus stateStatus;
  @override
  final String email;

  @override
  String toString() {
    return 'ConfirmationState(stateStatus: $stateStatus, email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConfirmationStateImpl &&
            (identical(other.stateStatus, stateStatus) ||
                other.stateStatus == stateStatus) &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, stateStatus, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConfirmationStateImplCopyWith<_$ConfirmationStateImpl> get copyWith =>
      __$$ConfirmationStateImplCopyWithImpl<_$ConfirmationStateImpl>(
          this, _$identity);
}

abstract class _ConfirmationState implements ConfirmationState {
  const factory _ConfirmationState(
      {required final StateStatus stateStatus,
      required final String email}) = _$ConfirmationStateImpl;

  @override
  StateStatus get stateStatus;
  @override
  String get email;
  @override
  @JsonKey(ignore: true)
  _$$ConfirmationStateImplCopyWith<_$ConfirmationStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
