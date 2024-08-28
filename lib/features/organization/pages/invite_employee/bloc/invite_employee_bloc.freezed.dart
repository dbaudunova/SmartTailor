// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'invite_employee_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$InviteEmployeeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SendInviteModel model) sendInvite,
    required TResult Function() getAvailablePostion,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SendInviteModel model)? sendInvite,
    TResult? Function()? getAvailablePostion,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SendInviteModel model)? sendInvite,
    TResult Function()? getAvailablePostion,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SendInvite value) sendInvite,
    required TResult Function(_GetAvailablePostion value) getAvailablePostion,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SendInvite value)? sendInvite,
    TResult? Function(_GetAvailablePostion value)? getAvailablePostion,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendInvite value)? sendInvite,
    TResult Function(_GetAvailablePostion value)? getAvailablePostion,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InviteEmployeeEventCopyWith<$Res> {
  factory $InviteEmployeeEventCopyWith(
          InviteEmployeeEvent value, $Res Function(InviteEmployeeEvent) then) =
      _$InviteEmployeeEventCopyWithImpl<$Res, InviteEmployeeEvent>;
}

/// @nodoc
class _$InviteEmployeeEventCopyWithImpl<$Res, $Val extends InviteEmployeeEvent>
    implements $InviteEmployeeEventCopyWith<$Res> {
  _$InviteEmployeeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SendInviteImplCopyWith<$Res> {
  factory _$$SendInviteImplCopyWith(
          _$SendInviteImpl value, $Res Function(_$SendInviteImpl) then) =
      __$$SendInviteImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SendInviteModel model});

  $SendInviteModelCopyWith<$Res> get model;
}

/// @nodoc
class __$$SendInviteImplCopyWithImpl<$Res>
    extends _$InviteEmployeeEventCopyWithImpl<$Res, _$SendInviteImpl>
    implements _$$SendInviteImplCopyWith<$Res> {
  __$$SendInviteImplCopyWithImpl(
      _$SendInviteImpl _value, $Res Function(_$SendInviteImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
  }) {
    return _then(_$SendInviteImpl(
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as SendInviteModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $SendInviteModelCopyWith<$Res> get model {
    return $SendInviteModelCopyWith<$Res>(_value.model, (value) {
      return _then(_value.copyWith(model: value));
    });
  }
}

/// @nodoc

class _$SendInviteImpl implements _SendInvite {
  const _$SendInviteImpl({required this.model});

  @override
  final SendInviteModel model;

  @override
  String toString() {
    return 'InviteEmployeeEvent.sendInvite(model: $model)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendInviteImpl &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SendInviteImplCopyWith<_$SendInviteImpl> get copyWith =>
      __$$SendInviteImplCopyWithImpl<_$SendInviteImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SendInviteModel model) sendInvite,
    required TResult Function() getAvailablePostion,
  }) {
    return sendInvite(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SendInviteModel model)? sendInvite,
    TResult? Function()? getAvailablePostion,
  }) {
    return sendInvite?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SendInviteModel model)? sendInvite,
    TResult Function()? getAvailablePostion,
    required TResult orElse(),
  }) {
    if (sendInvite != null) {
      return sendInvite(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SendInvite value) sendInvite,
    required TResult Function(_GetAvailablePostion value) getAvailablePostion,
  }) {
    return sendInvite(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SendInvite value)? sendInvite,
    TResult? Function(_GetAvailablePostion value)? getAvailablePostion,
  }) {
    return sendInvite?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendInvite value)? sendInvite,
    TResult Function(_GetAvailablePostion value)? getAvailablePostion,
    required TResult orElse(),
  }) {
    if (sendInvite != null) {
      return sendInvite(this);
    }
    return orElse();
  }
}

abstract class _SendInvite implements InviteEmployeeEvent {
  const factory _SendInvite({required final SendInviteModel model}) =
      _$SendInviteImpl;

  SendInviteModel get model;
  @JsonKey(ignore: true)
  _$$SendInviteImplCopyWith<_$SendInviteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetAvailablePostionImplCopyWith<$Res> {
  factory _$$GetAvailablePostionImplCopyWith(_$GetAvailablePostionImpl value,
          $Res Function(_$GetAvailablePostionImpl) then) =
      __$$GetAvailablePostionImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetAvailablePostionImplCopyWithImpl<$Res>
    extends _$InviteEmployeeEventCopyWithImpl<$Res, _$GetAvailablePostionImpl>
    implements _$$GetAvailablePostionImplCopyWith<$Res> {
  __$$GetAvailablePostionImplCopyWithImpl(_$GetAvailablePostionImpl _value,
      $Res Function(_$GetAvailablePostionImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetAvailablePostionImpl implements _GetAvailablePostion {
  const _$GetAvailablePostionImpl();

  @override
  String toString() {
    return 'InviteEmployeeEvent.getAvailablePostion()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAvailablePostionImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SendInviteModel model) sendInvite,
    required TResult Function() getAvailablePostion,
  }) {
    return getAvailablePostion();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SendInviteModel model)? sendInvite,
    TResult? Function()? getAvailablePostion,
  }) {
    return getAvailablePostion?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SendInviteModel model)? sendInvite,
    TResult Function()? getAvailablePostion,
    required TResult orElse(),
  }) {
    if (getAvailablePostion != null) {
      return getAvailablePostion();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SendInvite value) sendInvite,
    required TResult Function(_GetAvailablePostion value) getAvailablePostion,
  }) {
    return getAvailablePostion(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SendInvite value)? sendInvite,
    TResult? Function(_GetAvailablePostion value)? getAvailablePostion,
  }) {
    return getAvailablePostion?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendInvite value)? sendInvite,
    TResult Function(_GetAvailablePostion value)? getAvailablePostion,
    required TResult orElse(),
  }) {
    if (getAvailablePostion != null) {
      return getAvailablePostion(this);
    }
    return orElse();
  }
}

abstract class _GetAvailablePostion implements InviteEmployeeEvent {
  const factory _GetAvailablePostion() = _$GetAvailablePostionImpl;
}

/// @nodoc
mixin _$InviteEmployeeState {
  StateStatus get stateStatus => throw _privateConstructorUsedError;
  List<PositionEntity> get availablePositions =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $InviteEmployeeStateCopyWith<InviteEmployeeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InviteEmployeeStateCopyWith<$Res> {
  factory $InviteEmployeeStateCopyWith(
          InviteEmployeeState value, $Res Function(InviteEmployeeState) then) =
      _$InviteEmployeeStateCopyWithImpl<$Res, InviteEmployeeState>;
  @useResult
  $Res call({StateStatus stateStatus, List<PositionEntity> availablePositions});

  $StateStatusCopyWith<$Res> get stateStatus;
}

/// @nodoc
class _$InviteEmployeeStateCopyWithImpl<$Res, $Val extends InviteEmployeeState>
    implements $InviteEmployeeStateCopyWith<$Res> {
  _$InviteEmployeeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stateStatus = null,
    Object? availablePositions = null,
  }) {
    return _then(_value.copyWith(
      stateStatus: null == stateStatus
          ? _value.stateStatus
          : stateStatus // ignore: cast_nullable_to_non_nullable
              as StateStatus,
      availablePositions: null == availablePositions
          ? _value.availablePositions
          : availablePositions // ignore: cast_nullable_to_non_nullable
              as List<PositionEntity>,
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
abstract class _$$InviteEmployeeStateImplCopyWith<$Res>
    implements $InviteEmployeeStateCopyWith<$Res> {
  factory _$$InviteEmployeeStateImplCopyWith(_$InviteEmployeeStateImpl value,
          $Res Function(_$InviteEmployeeStateImpl) then) =
      __$$InviteEmployeeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({StateStatus stateStatus, List<PositionEntity> availablePositions});

  @override
  $StateStatusCopyWith<$Res> get stateStatus;
}

/// @nodoc
class __$$InviteEmployeeStateImplCopyWithImpl<$Res>
    extends _$InviteEmployeeStateCopyWithImpl<$Res, _$InviteEmployeeStateImpl>
    implements _$$InviteEmployeeStateImplCopyWith<$Res> {
  __$$InviteEmployeeStateImplCopyWithImpl(_$InviteEmployeeStateImpl _value,
      $Res Function(_$InviteEmployeeStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stateStatus = null,
    Object? availablePositions = null,
  }) {
    return _then(_$InviteEmployeeStateImpl(
      stateStatus: null == stateStatus
          ? _value.stateStatus
          : stateStatus // ignore: cast_nullable_to_non_nullable
              as StateStatus,
      availablePositions: null == availablePositions
          ? _value._availablePositions
          : availablePositions // ignore: cast_nullable_to_non_nullable
              as List<PositionEntity>,
    ));
  }
}

/// @nodoc

class _$InviteEmployeeStateImpl implements _InviteEmployeeState {
  const _$InviteEmployeeStateImpl(
      {required this.stateStatus,
      required final List<PositionEntity> availablePositions})
      : _availablePositions = availablePositions;

  @override
  final StateStatus stateStatus;
  final List<PositionEntity> _availablePositions;
  @override
  List<PositionEntity> get availablePositions {
    if (_availablePositions is EqualUnmodifiableListView)
      return _availablePositions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_availablePositions);
  }

  @override
  String toString() {
    return 'InviteEmployeeState(stateStatus: $stateStatus, availablePositions: $availablePositions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InviteEmployeeStateImpl &&
            (identical(other.stateStatus, stateStatus) ||
                other.stateStatus == stateStatus) &&
            const DeepCollectionEquality()
                .equals(other._availablePositions, _availablePositions));
  }

  @override
  int get hashCode => Object.hash(runtimeType, stateStatus,
      const DeepCollectionEquality().hash(_availablePositions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InviteEmployeeStateImplCopyWith<_$InviteEmployeeStateImpl> get copyWith =>
      __$$InviteEmployeeStateImplCopyWithImpl<_$InviteEmployeeStateImpl>(
          this, _$identity);
}

abstract class _InviteEmployeeState implements InviteEmployeeState {
  const factory _InviteEmployeeState(
          {required final StateStatus stateStatus,
          required final List<PositionEntity> availablePositions}) =
      _$InviteEmployeeStateImpl;

  @override
  StateStatus get stateStatus;
  @override
  List<PositionEntity> get availablePositions;
  @override
  @JsonKey(ignore: true)
  _$$InviteEmployeeStateImplCopyWith<_$InviteEmployeeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
