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
  RegistrationModel get registrationModel => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RegistrationModel registrationModel) registration,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RegistrationModel registrationModel)? registration,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RegistrationModel registrationModel)? registration,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Registration value) registration,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Registration value)? registration,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Registration value)? registration,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RegistrationEventCopyWith<RegistrationEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegistrationEventCopyWith<$Res> {
  factory $RegistrationEventCopyWith(
          RegistrationEvent value, $Res Function(RegistrationEvent) then) =
      _$RegistrationEventCopyWithImpl<$Res, RegistrationEvent>;
  @useResult
  $Res call({RegistrationModel registrationModel});

  $RegistrationModelCopyWith<$Res> get registrationModel;
}

/// @nodoc
class _$RegistrationEventCopyWithImpl<$Res, $Val extends RegistrationEvent>
    implements $RegistrationEventCopyWith<$Res> {
  _$RegistrationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? registrationModel = null,
  }) {
    return _then(_value.copyWith(
      registrationModel: null == registrationModel
          ? _value.registrationModel
          : registrationModel // ignore: cast_nullable_to_non_nullable
              as RegistrationModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RegistrationModelCopyWith<$Res> get registrationModel {
    return $RegistrationModelCopyWith<$Res>(_value.registrationModel, (value) {
      return _then(_value.copyWith(registrationModel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RegistrationImplCopyWith<$Res>
    implements $RegistrationEventCopyWith<$Res> {
  factory _$$RegistrationImplCopyWith(
          _$RegistrationImpl value, $Res Function(_$RegistrationImpl) then) =
      __$$RegistrationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({RegistrationModel registrationModel});

  @override
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
  }) {
    return registration(registrationModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RegistrationModel registrationModel)? registration,
  }) {
    return registration?.call(registrationModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RegistrationModel registrationModel)? registration,
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
  }) {
    return registration(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Registration value)? registration,
  }) {
    return registration?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Registration value)? registration,
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

  @override
  RegistrationModel get registrationModel;
  @override
  @JsonKey(ignore: true)
  _$$RegistrationImplCopyWith<_$RegistrationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RegistrationState {
  StateStatus get stateStatus => throw _privateConstructorUsedError;
  RegistrationModel get registrationModel => throw _privateConstructorUsedError;

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
  $Res call({StateStatus stateStatus, RegistrationModel registrationModel});

  $StateStatusCopyWith<$Res> get stateStatus;
  $RegistrationModelCopyWith<$Res> get registrationModel;
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
    Object? registrationModel = null,
  }) {
    return _then(_value.copyWith(
      stateStatus: null == stateStatus
          ? _value.stateStatus
          : stateStatus // ignore: cast_nullable_to_non_nullable
              as StateStatus,
      registrationModel: null == registrationModel
          ? _value.registrationModel
          : registrationModel // ignore: cast_nullable_to_non_nullable
              as RegistrationModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $StateStatusCopyWith<$Res> get stateStatus {
    return $StateStatusCopyWith<$Res>(_value.stateStatus, (value) {
      return _then(_value.copyWith(stateStatus: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $RegistrationModelCopyWith<$Res> get registrationModel {
    return $RegistrationModelCopyWith<$Res>(_value.registrationModel, (value) {
      return _then(_value.copyWith(registrationModel: value) as $Val);
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
  $Res call({StateStatus stateStatus, RegistrationModel registrationModel});

  @override
  $StateStatusCopyWith<$Res> get stateStatus;
  @override
  $RegistrationModelCopyWith<$Res> get registrationModel;
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
    Object? registrationModel = null,
  }) {
    return _then(_$RegistrationStateImpl(
      stateStatus: null == stateStatus
          ? _value.stateStatus
          : stateStatus // ignore: cast_nullable_to_non_nullable
              as StateStatus,
      registrationModel: null == registrationModel
          ? _value.registrationModel
          : registrationModel // ignore: cast_nullable_to_non_nullable
              as RegistrationModel,
    ));
  }
}

/// @nodoc

class _$RegistrationStateImpl implements _RegistrationState {
  const _$RegistrationStateImpl(
      {required this.stateStatus, required this.registrationModel});

  @override
  final StateStatus stateStatus;
  @override
  final RegistrationModel registrationModel;

  @override
  String toString() {
    return 'RegistrationState(stateStatus: $stateStatus, registrationModel: $registrationModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegistrationStateImpl &&
            (identical(other.stateStatus, stateStatus) ||
                other.stateStatus == stateStatus) &&
            (identical(other.registrationModel, registrationModel) ||
                other.registrationModel == registrationModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, stateStatus, registrationModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegistrationStateImplCopyWith<_$RegistrationStateImpl> get copyWith =>
      __$$RegistrationStateImplCopyWithImpl<_$RegistrationStateImpl>(
          this, _$identity);
}

abstract class _RegistrationState implements RegistrationState {
  const factory _RegistrationState(
          {required final StateStatus stateStatus,
          required final RegistrationModel registrationModel}) =
      _$RegistrationStateImpl;

  @override
  StateStatus get stateStatus;
  @override
  RegistrationModel get registrationModel;
  @override
  @JsonKey(ignore: true)
  _$$RegistrationStateImplCopyWith<_$RegistrationStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
