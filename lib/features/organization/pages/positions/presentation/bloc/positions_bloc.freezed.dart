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
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PositionEntity entity)? createPosition,
    TResult? Function()? getAllPositions,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PositionEntity entity)? createPosition,
    TResult Function()? getAllPositions,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreatePosition value) createPosition,
    required TResult Function(_GetAllPositions value) getAllPositions,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreatePosition value)? createPosition,
    TResult? Function(_GetAllPositions value)? getAllPositions,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreatePosition value)? createPosition,
    TResult Function(_GetAllPositions value)? getAllPositions,
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
  }) {
    return createPosition(entity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PositionEntity entity)? createPosition,
    TResult? Function()? getAllPositions,
  }) {
    return createPosition?.call(entity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PositionEntity entity)? createPosition,
    TResult Function()? getAllPositions,
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
  }) {
    return createPosition(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreatePosition value)? createPosition,
    TResult? Function(_GetAllPositions value)? getAllPositions,
  }) {
    return createPosition?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreatePosition value)? createPosition,
    TResult Function(_GetAllPositions value)? getAllPositions,
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
  }) {
    return getAllPositions();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PositionEntity entity)? createPosition,
    TResult? Function()? getAllPositions,
  }) {
    return getAllPositions?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PositionEntity entity)? createPosition,
    TResult Function()? getAllPositions,
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
  }) {
    return getAllPositions(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreatePosition value)? createPosition,
    TResult? Function(_GetAllPositions value)? getAllPositions,
  }) {
    return getAllPositions?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreatePosition value)? createPosition,
    TResult Function(_GetAllPositions value)? getAllPositions,
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
mixin _$PositionsState {
  StateStatus get stateStatus => throw _privateConstructorUsedError;
  List<PositionEntity> get positions => throw _privateConstructorUsedError;

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
  $Res call({StateStatus stateStatus, List<PositionEntity> positions});

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
  $Res call({StateStatus stateStatus, List<PositionEntity> positions});

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
    ));
  }
}

/// @nodoc

class _$PositionsStateImpl implements _PositionsState {
  const _$PositionsStateImpl(
      {required this.stateStatus,
      required final List<PositionEntity> positions})
      : _positions = positions;

  @override
  final StateStatus stateStatus;
  final List<PositionEntity> _positions;
  @override
  List<PositionEntity> get positions {
    if (_positions is EqualUnmodifiableListView) return _positions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_positions);
  }

  @override
  String toString() {
    return 'PositionsState(stateStatus: $stateStatus, positions: $positions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PositionsStateImpl &&
            (identical(other.stateStatus, stateStatus) ||
                other.stateStatus == stateStatus) &&
            const DeepCollectionEquality()
                .equals(other._positions, _positions));
  }

  @override
  int get hashCode => Object.hash(runtimeType, stateStatus,
      const DeepCollectionEquality().hash(_positions));

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
      required final List<PositionEntity> positions}) = _$PositionsStateImpl;

  @override
  StateStatus get stateStatus;
  @override
  List<PositionEntity> get positions;
  @override
  @JsonKey(ignore: true)
  _$$PositionsStateImplCopyWith<_$PositionsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
