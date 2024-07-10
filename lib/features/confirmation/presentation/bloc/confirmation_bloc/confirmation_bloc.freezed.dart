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
  String get pinCode => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String pinCode) sendPin,
    required TResult Function(String pinCode) addPin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String pinCode)? sendPin,
    TResult? Function(String pinCode)? addPin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String pinCode)? sendPin,
    TResult Function(String pinCode)? addPin,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SendPin value) sendPin,
    required TResult Function(_AddPin value) addPin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SendPin value)? sendPin,
    TResult? Function(_AddPin value)? addPin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendPin value)? sendPin,
    TResult Function(_AddPin value)? addPin,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ConfirmationEventCopyWith<ConfirmationEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConfirmationEventCopyWith<$Res> {
  factory $ConfirmationEventCopyWith(
          ConfirmationEvent value, $Res Function(ConfirmationEvent) then) =
      _$ConfirmationEventCopyWithImpl<$Res, ConfirmationEvent>;
  @useResult
  $Res call({String pinCode});
}

/// @nodoc
class _$ConfirmationEventCopyWithImpl<$Res, $Val extends ConfirmationEvent>
    implements $ConfirmationEventCopyWith<$Res> {
  _$ConfirmationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pinCode = null,
  }) {
    return _then(_value.copyWith(
      pinCode: null == pinCode
          ? _value.pinCode
          : pinCode // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SendPinImplCopyWith<$Res>
    implements $ConfirmationEventCopyWith<$Res> {
  factory _$$SendPinImplCopyWith(
          _$SendPinImpl value, $Res Function(_$SendPinImpl) then) =
      __$$SendPinImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String pinCode});
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
  }) {
    return _then(_$SendPinImpl(
      null == pinCode
          ? _value.pinCode
          : pinCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SendPinImpl implements _SendPin {
  const _$SendPinImpl(this.pinCode);

  @override
  final String pinCode;

  @override
  String toString() {
    return 'ConfirmationEvent.sendPin(pinCode: $pinCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendPinImpl &&
            (identical(other.pinCode, pinCode) || other.pinCode == pinCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pinCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SendPinImplCopyWith<_$SendPinImpl> get copyWith =>
      __$$SendPinImplCopyWithImpl<_$SendPinImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String pinCode) sendPin,
    required TResult Function(String pinCode) addPin,
  }) {
    return sendPin(pinCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String pinCode)? sendPin,
    TResult? Function(String pinCode)? addPin,
  }) {
    return sendPin?.call(pinCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String pinCode)? sendPin,
    TResult Function(String pinCode)? addPin,
    required TResult orElse(),
  }) {
    if (sendPin != null) {
      return sendPin(pinCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SendPin value) sendPin,
    required TResult Function(_AddPin value) addPin,
  }) {
    return sendPin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SendPin value)? sendPin,
    TResult? Function(_AddPin value)? addPin,
  }) {
    return sendPin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendPin value)? sendPin,
    TResult Function(_AddPin value)? addPin,
    required TResult orElse(),
  }) {
    if (sendPin != null) {
      return sendPin(this);
    }
    return orElse();
  }
}

abstract class _SendPin implements ConfirmationEvent {
  const factory _SendPin(final String pinCode) = _$SendPinImpl;

  @override
  String get pinCode;
  @override
  @JsonKey(ignore: true)
  _$$SendPinImplCopyWith<_$SendPinImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddPinImplCopyWith<$Res>
    implements $ConfirmationEventCopyWith<$Res> {
  factory _$$AddPinImplCopyWith(
          _$AddPinImpl value, $Res Function(_$AddPinImpl) then) =
      __$$AddPinImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String pinCode});
}

/// @nodoc
class __$$AddPinImplCopyWithImpl<$Res>
    extends _$ConfirmationEventCopyWithImpl<$Res, _$AddPinImpl>
    implements _$$AddPinImplCopyWith<$Res> {
  __$$AddPinImplCopyWithImpl(
      _$AddPinImpl _value, $Res Function(_$AddPinImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pinCode = null,
  }) {
    return _then(_$AddPinImpl(
      null == pinCode
          ? _value.pinCode
          : pinCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddPinImpl implements _AddPin {
  const _$AddPinImpl(this.pinCode);

  @override
  final String pinCode;

  @override
  String toString() {
    return 'ConfirmationEvent.addPin(pinCode: $pinCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddPinImpl &&
            (identical(other.pinCode, pinCode) || other.pinCode == pinCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pinCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddPinImplCopyWith<_$AddPinImpl> get copyWith =>
      __$$AddPinImplCopyWithImpl<_$AddPinImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String pinCode) sendPin,
    required TResult Function(String pinCode) addPin,
  }) {
    return addPin(pinCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String pinCode)? sendPin,
    TResult? Function(String pinCode)? addPin,
  }) {
    return addPin?.call(pinCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String pinCode)? sendPin,
    TResult Function(String pinCode)? addPin,
    required TResult orElse(),
  }) {
    if (addPin != null) {
      return addPin(pinCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SendPin value) sendPin,
    required TResult Function(_AddPin value) addPin,
  }) {
    return addPin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SendPin value)? sendPin,
    TResult? Function(_AddPin value)? addPin,
  }) {
    return addPin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendPin value)? sendPin,
    TResult Function(_AddPin value)? addPin,
    required TResult orElse(),
  }) {
    if (addPin != null) {
      return addPin(this);
    }
    return orElse();
  }
}

abstract class _AddPin implements ConfirmationEvent {
  const factory _AddPin(final String pinCode) = _$AddPinImpl;

  @override
  String get pinCode;
  @override
  @JsonKey(ignore: true)
  _$$AddPinImplCopyWith<_$AddPinImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ConfirmationState {
  StateStatus get stateStatus => throw _privateConstructorUsedError;
  int? get pinCode => throw _privateConstructorUsedError;

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
  $Res call({StateStatus stateStatus, int? pinCode});

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
    Object? pinCode = freezed,
  }) {
    return _then(_value.copyWith(
      stateStatus: null == stateStatus
          ? _value.stateStatus
          : stateStatus // ignore: cast_nullable_to_non_nullable
              as StateStatus,
      pinCode: freezed == pinCode
          ? _value.pinCode
          : pinCode // ignore: cast_nullable_to_non_nullable
              as int?,
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
  $Res call({StateStatus stateStatus, int? pinCode});

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
    Object? pinCode = freezed,
  }) {
    return _then(_$ConfirmationStateImpl(
      stateStatus: null == stateStatus
          ? _value.stateStatus
          : stateStatus // ignore: cast_nullable_to_non_nullable
              as StateStatus,
      pinCode: freezed == pinCode
          ? _value.pinCode
          : pinCode // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$ConfirmationStateImpl implements _ConfirmationState {
  const _$ConfirmationStateImpl({required this.stateStatus, this.pinCode});

  @override
  final StateStatus stateStatus;
  @override
  final int? pinCode;

  @override
  String toString() {
    return 'ConfirmationState(stateStatus: $stateStatus, pinCode: $pinCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConfirmationStateImpl &&
            (identical(other.stateStatus, stateStatus) ||
                other.stateStatus == stateStatus) &&
            (identical(other.pinCode, pinCode) || other.pinCode == pinCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, stateStatus, pinCode);

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
      final int? pinCode}) = _$ConfirmationStateImpl;

  @override
  StateStatus get stateStatus;
  @override
  int? get pinCode;
  @override
  @JsonKey(ignore: true)
  _$$ConfirmationStateImplCopyWith<_$ConfirmationStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
