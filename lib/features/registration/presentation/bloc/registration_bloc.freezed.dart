// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'registration_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RegistrationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RegistrationModel registrationModel) registration,
    required TResult Function() reset,
    required TResult Function(String email) addEmail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RegistrationModel registrationModel)? registration,
    TResult? Function()? reset,
    TResult? Function(String email)? addEmail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RegistrationModel registrationModel)? registration,
    TResult Function()? reset,
    TResult Function(String email)? addEmail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Registration value) registration,
    required TResult Function(_Reset value) reset,
    required TResult Function(_AddEmail value) addEmail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Registration value)? registration,
    TResult? Function(_Reset value)? reset,
    TResult? Function(_AddEmail value)? addEmail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Registration value)? registration,
    TResult Function(_Reset value)? reset,
    TResult Function(_AddEmail value)? addEmail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegistrationEventCopyWith<$Res> {
  factory $RegistrationEventCopyWith(
          RegistrationEvent value, $Res Function(RegistrationEvent) then) =
      _$RegistrationEventCopyWithImpl<$Res, RegistrationEvent>;
}

/// @nodoc
class _$RegistrationEventCopyWithImpl<$Res, $Val extends RegistrationEvent>
    implements $RegistrationEventCopyWith<$Res> {
  _$RegistrationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$RegistrationImplCopyWith<$Res> {
  factory _$$RegistrationImplCopyWith(
          _$RegistrationImpl value, $Res Function(_$RegistrationImpl) then) =
      __$$RegistrationImplCopyWithImpl<$Res>;
  @useResult
  $Res call({RegistrationModel registrationModel});

  $RegistrationModelCopyWith<$Res> get registrationModel;
}

/// @nodoc
class __$$RegistrationImplCopyWithImpl<$Res>
    extends _$RegistrationEventCopyWithImpl<$Res, _$RegistrationImpl>
    implements _$$RegistrationImplCopyWith<$Res> {
  __$$RegistrationImplCopyWithImpl(
      _$RegistrationImpl _value, $Res Function(_$RegistrationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? registrationModel = null,
  }) {
    return _then(_$RegistrationImpl(
      registrationModel: null == registrationModel
          ? _value.registrationModel
          : registrationModel // ignore: cast_nullable_to_non_nullable
              as RegistrationModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $RegistrationModelCopyWith<$Res> get registrationModel {
    return $RegistrationModelCopyWith<$Res>(_value.registrationModel, (value) {
      return _then(_value.copyWith(registrationModel: value));
    });
  }
}

/// @nodoc

class _$RegistrationImpl implements _Registration {
  const _$RegistrationImpl({required this.registrationModel});

  @override
  final RegistrationModel registrationModel;

  @override
  String toString() {
    return 'RegistrationEvent.registration(registrationModel: $registrationModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegistrationImpl &&
            (identical(other.registrationModel, registrationModel) ||
                other.registrationModel == registrationModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, registrationModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegistrationImplCopyWith<_$RegistrationImpl> get copyWith =>
      __$$RegistrationImplCopyWithImpl<_$RegistrationImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RegistrationModel registrationModel) registration,
    required TResult Function() reset,
    required TResult Function(String email) addEmail,
  }) {
    return registration(registrationModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RegistrationModel registrationModel)? registration,
    TResult? Function()? reset,
    TResult? Function(String email)? addEmail,
  }) {
    return registration?.call(registrationModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RegistrationModel registrationModel)? registration,
    TResult Function()? reset,
    TResult Function(String email)? addEmail,
    required TResult orElse(),
  }) {
    if (registration != null) {
      return registration(registrationModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Registration value) registration,
    required TResult Function(_Reset value) reset,
    required TResult Function(_AddEmail value) addEmail,
  }) {
    return registration(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Registration value)? registration,
    TResult? Function(_Reset value)? reset,
    TResult? Function(_AddEmail value)? addEmail,
  }) {
    return registration?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Registration value)? registration,
    TResult Function(_Reset value)? reset,
    TResult Function(_AddEmail value)? addEmail,
    required TResult orElse(),
  }) {
    if (registration != null) {
      return registration(this);
    }
    return orElse();
  }
}

abstract class _Registration implements RegistrationEvent {
  const factory _Registration(
          {required final RegistrationModel registrationModel}) =
      _$RegistrationImpl;

  RegistrationModel get registrationModel;
  @JsonKey(ignore: true)
  _$$RegistrationImplCopyWith<_$RegistrationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ResetImplCopyWith<$Res> {
  factory _$$ResetImplCopyWith(
          _$ResetImpl value, $Res Function(_$ResetImpl) then) =
      __$$ResetImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ResetImplCopyWithImpl<$Res>
    extends _$RegistrationEventCopyWithImpl<$Res, _$ResetImpl>
    implements _$$ResetImplCopyWith<$Res> {
  __$$ResetImplCopyWithImpl(
      _$ResetImpl _value, $Res Function(_$ResetImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ResetImpl implements _Reset {
  const _$ResetImpl();

  @override
  String toString() {
    return 'RegistrationEvent.reset()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ResetImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RegistrationModel registrationModel) registration,
    required TResult Function() reset,
    required TResult Function(String email) addEmail,
  }) {
    return reset();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RegistrationModel registrationModel)? registration,
    TResult? Function()? reset,
    TResult? Function(String email)? addEmail,
  }) {
    return reset?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RegistrationModel registrationModel)? registration,
    TResult Function()? reset,
    TResult Function(String email)? addEmail,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Registration value) registration,
    required TResult Function(_Reset value) reset,
    required TResult Function(_AddEmail value) addEmail,
  }) {
    return reset(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Registration value)? registration,
    TResult? Function(_Reset value)? reset,
    TResult? Function(_AddEmail value)? addEmail,
  }) {
    return reset?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Registration value)? registration,
    TResult Function(_Reset value)? reset,
    TResult Function(_AddEmail value)? addEmail,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset(this);
    }
    return orElse();
  }
}

abstract class _Reset implements RegistrationEvent {
  const factory _Reset() = _$ResetImpl;
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
    extends _$RegistrationEventCopyWithImpl<$Res, _$AddEmailImpl>
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
    return 'RegistrationEvent.addEmail(email: $email)';
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
    required TResult Function(RegistrationModel registrationModel) registration,
    required TResult Function() reset,
    required TResult Function(String email) addEmail,
  }) {
    return addEmail(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RegistrationModel registrationModel)? registration,
    TResult? Function()? reset,
    TResult? Function(String email)? addEmail,
  }) {
    return addEmail?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RegistrationModel registrationModel)? registration,
    TResult Function()? reset,
    TResult Function(String email)? addEmail,
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
    required TResult Function(_Registration value) registration,
    required TResult Function(_Reset value) reset,
    required TResult Function(_AddEmail value) addEmail,
  }) {
    return addEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Registration value)? registration,
    TResult? Function(_Reset value)? reset,
    TResult? Function(_AddEmail value)? addEmail,
  }) {
    return addEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Registration value)? registration,
    TResult Function(_Reset value)? reset,
    TResult Function(_AddEmail value)? addEmail,
    required TResult orElse(),
  }) {
    if (addEmail != null) {
      return addEmail(this);
    }
    return orElse();
  }
}

abstract class _AddEmail implements RegistrationEvent {
  const factory _AddEmail({required final String email}) = _$AddEmailImpl;

  String get email;
  @JsonKey(ignore: true)
  _$$AddEmailImplCopyWith<_$AddEmailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RegistrationState {
  StateStatus get stateStatus => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RegistrationStateCopyWith<RegistrationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegistrationStateCopyWith<$Res> {
  factory $RegistrationStateCopyWith(
          RegistrationState value, $Res Function(RegistrationState) then) =
      _$RegistrationStateCopyWithImpl<$Res, RegistrationState>;
  @useResult
  $Res call({StateStatus stateStatus});

  $StateStatusCopyWith<$Res> get stateStatus;
}

/// @nodoc
class _$RegistrationStateCopyWithImpl<$Res, $Val extends RegistrationState>
    implements $RegistrationStateCopyWith<$Res> {
  _$RegistrationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stateStatus = null,
  }) {
    return _then(_value.copyWith(
      stateStatus: null == stateStatus
          ? _value.stateStatus
          : stateStatus // ignore: cast_nullable_to_non_nullable
              as StateStatus,
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
abstract class _$$RegistrationStateImplCopyWith<$Res>
    implements $RegistrationStateCopyWith<$Res> {
  factory _$$RegistrationStateImplCopyWith(_$RegistrationStateImpl value,
          $Res Function(_$RegistrationStateImpl) then) =
      __$$RegistrationStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({StateStatus stateStatus});

  @override
  $StateStatusCopyWith<$Res> get stateStatus;
}

/// @nodoc
class __$$RegistrationStateImplCopyWithImpl<$Res>
    extends _$RegistrationStateCopyWithImpl<$Res, _$RegistrationStateImpl>
    implements _$$RegistrationStateImplCopyWith<$Res> {
  __$$RegistrationStateImplCopyWithImpl(_$RegistrationStateImpl _value,
      $Res Function(_$RegistrationStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stateStatus = null,
  }) {
    return _then(_$RegistrationStateImpl(
      stateStatus: null == stateStatus
          ? _value.stateStatus
          : stateStatus // ignore: cast_nullable_to_non_nullable
              as StateStatus,
    ));
  }
}

/// @nodoc

class _$RegistrationStateImpl implements _RegistrationState {
  const _$RegistrationStateImpl({required this.stateStatus});

  @override
  final StateStatus stateStatus;

  @override
  String toString() {
    return 'RegistrationState(stateStatus: $stateStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegistrationStateImpl &&
            (identical(other.stateStatus, stateStatus) ||
                other.stateStatus == stateStatus));
  }

  @override
  int get hashCode => Object.hash(runtimeType, stateStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegistrationStateImplCopyWith<_$RegistrationStateImpl> get copyWith =>
      __$$RegistrationStateImplCopyWithImpl<_$RegistrationStateImpl>(
          this, _$identity);
}

abstract class _RegistrationState implements RegistrationState {
  const factory _RegistrationState({required final StateStatus stateStatus}) =
      _$RegistrationStateImpl;

  @override
  StateStatus get stateStatus;
  @override
  @JsonKey(ignore: true)
  _$$RegistrationStateImplCopyWith<_$RegistrationStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
