// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'positions_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PositionsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PositionEntity entity) createPosition,
    required TResult Function() getAllPositions,
    required TResult Function() getAvailableAccessRights,
    required TResult Function() getAvailableWeights,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PositionEntity entity)? createPosition,
    TResult? Function()? getAllPositions,
    TResult? Function()? getAvailableAccessRights,
    TResult? Function()? getAvailableWeights,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PositionEntity entity)? createPosition,
    TResult Function()? getAllPositions,
    TResult Function()? getAvailableAccessRights,
    TResult Function()? getAvailableWeights,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreatePosition value) createPosition,
    required TResult Function(_GetAllPositions value) getAllPositions,
    required TResult Function(_GetAvailableAccessRights value)
        getAvailableAccessRights,
    required TResult Function(_GetAvailableWeights value) getAvailableWeights,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreatePosition value)? createPosition,
    TResult? Function(_GetAllPositions value)? getAllPositions,
    TResult? Function(_GetAvailableAccessRights value)?
        getAvailableAccessRights,
    TResult? Function(_GetAvailableWeights value)? getAvailableWeights,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreatePosition value)? createPosition,
    TResult Function(_GetAllPositions value)? getAllPositions,
    TResult Function(_GetAvailableAccessRights value)? getAvailableAccessRights,
    TResult Function(_GetAvailableWeights value)? getAvailableWeights,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PositionsEventCopyWith<$Res> {
  factory $PositionsEventCopyWith(
          PositionsEvent value, $Res Function(PositionsEvent) then) =
      _$PositionsEventCopyWithImpl<$Res, PositionsEvent>;
}

/// @nodoc
class _$PositionsEventCopyWithImpl<$Res, $Val extends PositionsEvent>
    implements $PositionsEventCopyWith<$Res> {
  _$PositionsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CreatePositionImplCopyWith<$Res> {
  factory _$$CreatePositionImplCopyWith(_$CreatePositionImpl value,
          $Res Function(_$CreatePositionImpl) then) =
      __$$CreatePositionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({PositionEntity entity});
}

/// @nodoc
class __$$CreatePositionImplCopyWithImpl<$Res>
    extends _$PositionsEventCopyWithImpl<$Res, _$CreatePositionImpl>
    implements _$$CreatePositionImplCopyWith<$Res> {
  __$$CreatePositionImplCopyWithImpl(
      _$CreatePositionImpl _value, $Res Function(_$CreatePositionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? entity = null,
  }) {
    return _then(_$CreatePositionImpl(
      entity: null == entity
          ? _value.entity
          : entity // ignore: cast_nullable_to_non_nullable
              as PositionEntity,
    ));
  }
}

/// @nodoc

class _$CreatePositionImpl implements _CreatePosition {
  const _$CreatePositionImpl({required this.entity});

  @override
  final PositionEntity entity;

  @override
  String toString() {
    return 'PositionsEvent.createPosition(entity: $entity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreatePositionImpl &&
            (identical(other.entity, entity) || other.entity == entity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, entity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreatePositionImplCopyWith<_$CreatePositionImpl> get copyWith =>
      __$$CreatePositionImplCopyWithImpl<_$CreatePositionImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PositionEntity entity) createPosition,
    required TResult Function() getAllPositions,
    required TResult Function() getAvailableAccessRights,
    required TResult Function() getAvailableWeights,
  }) {
    return createPosition(entity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PositionEntity entity)? createPosition,
    TResult? Function()? getAllPositions,
    TResult? Function()? getAvailableAccessRights,
    TResult? Function()? getAvailableWeights,
  }) {
    return createPosition?.call(entity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PositionEntity entity)? createPosition,
    TResult Function()? getAllPositions,
    TResult Function()? getAvailableAccessRights,
    TResult Function()? getAvailableWeights,
    required TResult orElse(),
  }) {
    if (createPosition != null) {
      return createPosition(entity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreatePosition value) createPosition,
    required TResult Function(_GetAllPositions value) getAllPositions,
    required TResult Function(_GetAvailableAccessRights value)
        getAvailableAccessRights,
    required TResult Function(_GetAvailableWeights value) getAvailableWeights,
  }) {
    return createPosition(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreatePosition value)? createPosition,
    TResult? Function(_GetAllPositions value)? getAllPositions,
    TResult? Function(_GetAvailableAccessRights value)?
        getAvailableAccessRights,
    TResult? Function(_GetAvailableWeights value)? getAvailableWeights,
  }) {
    return createPosition?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreatePosition value)? createPosition,
    TResult Function(_GetAllPositions value)? getAllPositions,
    TResult Function(_GetAvailableAccessRights value)? getAvailableAccessRights,
    TResult Function(_GetAvailableWeights value)? getAvailableWeights,
    required TResult orElse(),
  }) {
    if (createPosition != null) {
      return createPosition(this);
    }
    return orElse();
  }
}

abstract class _CreatePosition implements PositionsEvent {
  const factory _CreatePosition({required final PositionEntity entity}) =
      _$CreatePositionImpl;

  PositionEntity get entity;
  @JsonKey(ignore: true)
  _$$CreatePositionImplCopyWith<_$CreatePositionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetAllPositionsImplCopyWith<$Res> {
  factory _$$GetAllPositionsImplCopyWith(_$GetAllPositionsImpl value,
          $Res Function(_$GetAllPositionsImpl) then) =
      __$$GetAllPositionsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetAllPositionsImplCopyWithImpl<$Res>
    extends _$PositionsEventCopyWithImpl<$Res, _$GetAllPositionsImpl>
    implements _$$GetAllPositionsImplCopyWith<$Res> {
  __$$GetAllPositionsImplCopyWithImpl(
      _$GetAllPositionsImpl _value, $Res Function(_$GetAllPositionsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetAllPositionsImpl implements _GetAllPositions {
  const _$GetAllPositionsImpl();

  @override
  String toString() {
    return 'PositionsEvent.getAllPositions()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetAllPositionsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PositionEntity entity) createPosition,
    required TResult Function() getAllPositions,
    required TResult Function() getAvailableAccessRights,
    required TResult Function() getAvailableWeights,
  }) {
    return getAllPositions();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PositionEntity entity)? createPosition,
    TResult? Function()? getAllPositions,
    TResult? Function()? getAvailableAccessRights,
    TResult? Function()? getAvailableWeights,
  }) {
    return getAllPositions?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PositionEntity entity)? createPosition,
    TResult Function()? getAllPositions,
    TResult Function()? getAvailableAccessRights,
    TResult Function()? getAvailableWeights,
    required TResult orElse(),
  }) {
    if (getAllPositions != null) {
      return getAllPositions();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreatePosition value) createPosition,
    required TResult Function(_GetAllPositions value) getAllPositions,
    required TResult Function(_GetAvailableAccessRights value)
        getAvailableAccessRights,
    required TResult Function(_GetAvailableWeights value) getAvailableWeights,
  }) {
    return getAllPositions(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreatePosition value)? createPosition,
    TResult? Function(_GetAllPositions value)? getAllPositions,
    TResult? Function(_GetAvailableAccessRights value)?
        getAvailableAccessRights,
    TResult? Function(_GetAvailableWeights value)? getAvailableWeights,
  }) {
    return getAllPositions?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreatePosition value)? createPosition,
    TResult Function(_GetAllPositions value)? getAllPositions,
    TResult Function(_GetAvailableAccessRights value)? getAvailableAccessRights,
    TResult Function(_GetAvailableWeights value)? getAvailableWeights,
    required TResult orElse(),
  }) {
    if (getAllPositions != null) {
      return getAllPositions(this);
    }
    return orElse();
  }
}

abstract class _GetAllPositions implements PositionsEvent {
  const factory _GetAllPositions() = _$GetAllPositionsImpl;
}

/// @nodoc
abstract class _$$GetAvailableAccessRightsImplCopyWith<$Res> {
  factory _$$GetAvailableAccessRightsImplCopyWith(
          _$GetAvailableAccessRightsImpl value,
          $Res Function(_$GetAvailableAccessRightsImpl) then) =
      __$$GetAvailableAccessRightsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetAvailableAccessRightsImplCopyWithImpl<$Res>
    extends _$PositionsEventCopyWithImpl<$Res, _$GetAvailableAccessRightsImpl>
    implements _$$GetAvailableAccessRightsImplCopyWith<$Res> {
  __$$GetAvailableAccessRightsImplCopyWithImpl(
      _$GetAvailableAccessRightsImpl _value,
      $Res Function(_$GetAvailableAccessRightsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetAvailableAccessRightsImpl implements _GetAvailableAccessRights {
  const _$GetAvailableAccessRightsImpl();

  @override
  String toString() {
    return 'PositionsEvent.getAvailableAccessRights()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAvailableAccessRightsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PositionEntity entity) createPosition,
    required TResult Function() getAllPositions,
    required TResult Function() getAvailableAccessRights,
    required TResult Function() getAvailableWeights,
  }) {
    return getAvailableAccessRights();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PositionEntity entity)? createPosition,
    TResult? Function()? getAllPositions,
    TResult? Function()? getAvailableAccessRights,
    TResult? Function()? getAvailableWeights,
  }) {
    return getAvailableAccessRights?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PositionEntity entity)? createPosition,
    TResult Function()? getAllPositions,
    TResult Function()? getAvailableAccessRights,
    TResult Function()? getAvailableWeights,
    required TResult orElse(),
  }) {
    if (getAvailableAccessRights != null) {
      return getAvailableAccessRights();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreatePosition value) createPosition,
    required TResult Function(_GetAllPositions value) getAllPositions,
    required TResult Function(_GetAvailableAccessRights value)
        getAvailableAccessRights,
    required TResult Function(_GetAvailableWeights value) getAvailableWeights,
  }) {
    return getAvailableAccessRights(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreatePosition value)? createPosition,
    TResult? Function(_GetAllPositions value)? getAllPositions,
    TResult? Function(_GetAvailableAccessRights value)?
        getAvailableAccessRights,
    TResult? Function(_GetAvailableWeights value)? getAvailableWeights,
  }) {
    return getAvailableAccessRights?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreatePosition value)? createPosition,
    TResult Function(_GetAllPositions value)? getAllPositions,
    TResult Function(_GetAvailableAccessRights value)? getAvailableAccessRights,
    TResult Function(_GetAvailableWeights value)? getAvailableWeights,
    required TResult orElse(),
  }) {
    if (getAvailableAccessRights != null) {
      return getAvailableAccessRights(this);
    }
    return orElse();
  }
}

abstract class _GetAvailableAccessRights implements PositionsEvent {
  const factory _GetAvailableAccessRights() = _$GetAvailableAccessRightsImpl;
}

/// @nodoc
abstract class _$$GetAvailableWeightsImplCopyWith<$Res> {
  factory _$$GetAvailableWeightsImplCopyWith(_$GetAvailableWeightsImpl value,
          $Res Function(_$GetAvailableWeightsImpl) then) =
      __$$GetAvailableWeightsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetAvailableWeightsImplCopyWithImpl<$Res>
    extends _$PositionsEventCopyWithImpl<$Res, _$GetAvailableWeightsImpl>
    implements _$$GetAvailableWeightsImplCopyWith<$Res> {
  __$$GetAvailableWeightsImplCopyWithImpl(_$GetAvailableWeightsImpl _value,
      $Res Function(_$GetAvailableWeightsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetAvailableWeightsImpl implements _GetAvailableWeights {
  const _$GetAvailableWeightsImpl();

  @override
  String toString() {
    return 'PositionsEvent.getAvailableWeights()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAvailableWeightsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PositionEntity entity) createPosition,
    required TResult Function() getAllPositions,
    required TResult Function() getAvailableAccessRights,
    required TResult Function() getAvailableWeights,
  }) {
    return getAvailableWeights();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PositionEntity entity)? createPosition,
    TResult? Function()? getAllPositions,
    TResult? Function()? getAvailableAccessRights,
    TResult? Function()? getAvailableWeights,
  }) {
    return getAvailableWeights?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PositionEntity entity)? createPosition,
    TResult Function()? getAllPositions,
    TResult Function()? getAvailableAccessRights,
    TResult Function()? getAvailableWeights,
    required TResult orElse(),
  }) {
    if (getAvailableWeights != null) {
      return getAvailableWeights();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreatePosition value) createPosition,
    required TResult Function(_GetAllPositions value) getAllPositions,
    required TResult Function(_GetAvailableAccessRights value)
        getAvailableAccessRights,
    required TResult Function(_GetAvailableWeights value) getAvailableWeights,
  }) {
    return getAvailableWeights(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreatePosition value)? createPosition,
    TResult? Function(_GetAllPositions value)? getAllPositions,
    TResult? Function(_GetAvailableAccessRights value)?
        getAvailableAccessRights,
    TResult? Function(_GetAvailableWeights value)? getAvailableWeights,
  }) {
    return getAvailableWeights?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreatePosition value)? createPosition,
    TResult Function(_GetAllPositions value)? getAllPositions,
    TResult Function(_GetAvailableAccessRights value)? getAvailableAccessRights,
    TResult Function(_GetAvailableWeights value)? getAvailableWeights,
    required TResult orElse(),
  }) {
    if (getAvailableWeights != null) {
      return getAvailableWeights(this);
    }
    return orElse();
  }
}

abstract class _GetAvailableWeights implements PositionsEvent {
  const factory _GetAvailableWeights() = _$GetAvailableWeightsImpl;
}

/// @nodoc
mixin _$PositionsState {
  StateStatus get stateStatus => throw _privateConstructorUsedError;
  List<PositionEntity> get positions => throw _privateConstructorUsedError;
  List<int> get weights => throw _privateConstructorUsedError;
  List<String> get rights => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PositionsStateCopyWith<PositionsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PositionsStateCopyWith<$Res> {
  factory $PositionsStateCopyWith(
          PositionsState value, $Res Function(PositionsState) then) =
      _$PositionsStateCopyWithImpl<$Res, PositionsState>;
  @useResult
  $Res call(
      {StateStatus stateStatus,
      List<PositionEntity> positions,
      List<int> weights,
      List<String> rights});

  $StateStatusCopyWith<$Res> get stateStatus;
}

/// @nodoc
class _$PositionsStateCopyWithImpl<$Res, $Val extends PositionsState>
    implements $PositionsStateCopyWith<$Res> {
  _$PositionsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stateStatus = null,
    Object? positions = null,
    Object? weights = null,
    Object? rights = null,
  }) {
    return _then(_value.copyWith(
      stateStatus: null == stateStatus
          ? _value.stateStatus
          : stateStatus // ignore: cast_nullable_to_non_nullable
              as StateStatus,
      positions: null == positions
          ? _value.positions
          : positions // ignore: cast_nullable_to_non_nullable
              as List<PositionEntity>,
      weights: null == weights
          ? _value.weights
          : weights // ignore: cast_nullable_to_non_nullable
              as List<int>,
      rights: null == rights
          ? _value.rights
          : rights // ignore: cast_nullable_to_non_nullable
              as List<String>,
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
abstract class _$$PositionsStateImplCopyWith<$Res>
    implements $PositionsStateCopyWith<$Res> {
  factory _$$PositionsStateImplCopyWith(_$PositionsStateImpl value,
          $Res Function(_$PositionsStateImpl) then) =
      __$$PositionsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {StateStatus stateStatus,
      List<PositionEntity> positions,
      List<int> weights,
      List<String> rights});

  @override
  $StateStatusCopyWith<$Res> get stateStatus;
}

/// @nodoc
class __$$PositionsStateImplCopyWithImpl<$Res>
    extends _$PositionsStateCopyWithImpl<$Res, _$PositionsStateImpl>
    implements _$$PositionsStateImplCopyWith<$Res> {
  __$$PositionsStateImplCopyWithImpl(
      _$PositionsStateImpl _value, $Res Function(_$PositionsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stateStatus = null,
    Object? positions = null,
    Object? weights = null,
    Object? rights = null,
  }) {
    return _then(_$PositionsStateImpl(
      stateStatus: null == stateStatus
          ? _value.stateStatus
          : stateStatus // ignore: cast_nullable_to_non_nullable
              as StateStatus,
      positions: null == positions
          ? _value._positions
          : positions // ignore: cast_nullable_to_non_nullable
              as List<PositionEntity>,
      weights: null == weights
          ? _value._weights
          : weights // ignore: cast_nullable_to_non_nullable
              as List<int>,
      rights: null == rights
          ? _value._rights
          : rights // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$PositionsStateImpl implements _PositionsState {
  const _$PositionsStateImpl(
      {required this.stateStatus,
      required final List<PositionEntity> positions,
      required final List<int> weights,
      required final List<String> rights})
      : _positions = positions,
        _weights = weights,
        _rights = rights;

  @override
  final StateStatus stateStatus;
  final List<PositionEntity> _positions;
  @override
  List<PositionEntity> get positions {
    if (_positions is EqualUnmodifiableListView) return _positions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_positions);
  }

  final List<int> _weights;
  @override
  List<int> get weights {
    if (_weights is EqualUnmodifiableListView) return _weights;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_weights);
  }

  final List<String> _rights;
  @override
  List<String> get rights {
    if (_rights is EqualUnmodifiableListView) return _rights;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_rights);
  }

  @override
  String toString() {
    return 'PositionsState(stateStatus: $stateStatus, positions: $positions, weights: $weights, rights: $rights)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PositionsStateImpl &&
            (identical(other.stateStatus, stateStatus) ||
                other.stateStatus == stateStatus) &&
            const DeepCollectionEquality()
                .equals(other._positions, _positions) &&
            const DeepCollectionEquality().equals(other._weights, _weights) &&
            const DeepCollectionEquality().equals(other._rights, _rights));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      stateStatus,
      const DeepCollectionEquality().hash(_positions),
      const DeepCollectionEquality().hash(_weights),
      const DeepCollectionEquality().hash(_rights));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PositionsStateImplCopyWith<_$PositionsStateImpl> get copyWith =>
      __$$PositionsStateImplCopyWithImpl<_$PositionsStateImpl>(
          this, _$identity);
}

abstract class _PositionsState implements PositionsState {
  const factory _PositionsState(
      {required final StateStatus stateStatus,
      required final List<PositionEntity> positions,
      required final List<int> weights,
      required final List<String> rights}) = _$PositionsStateImpl;

  @override
  StateStatus get stateStatus;
  @override
  List<PositionEntity> get positions;
  @override
  List<int> get weights;
  @override
  List<String> get rights;
  @override
  @JsonKey(ignore: true)
  _$$PositionsStateImplCopyWith<_$PositionsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
