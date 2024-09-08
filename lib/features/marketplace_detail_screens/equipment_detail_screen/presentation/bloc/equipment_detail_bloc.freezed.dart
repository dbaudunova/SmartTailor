// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'equipment_detail_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$EquipmentDetailEvent {
  int? get id => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? id) getEquipment,
    required TResult Function(int? id) buyEquipment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? id)? getEquipment,
    TResult? Function(int? id)? buyEquipment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? id)? getEquipment,
    TResult Function(int? id)? buyEquipment,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetEquipment value) getEquipment,
    required TResult Function(_BuyEquipment value) buyEquipment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetEquipment value)? getEquipment,
    TResult? Function(_BuyEquipment value)? buyEquipment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetEquipment value)? getEquipment,
    TResult Function(_BuyEquipment value)? buyEquipment,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EquipmentDetailEventCopyWith<EquipmentDetailEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EquipmentDetailEventCopyWith<$Res> {
  factory $EquipmentDetailEventCopyWith(EquipmentDetailEvent value,
          $Res Function(EquipmentDetailEvent) then) =
      _$EquipmentDetailEventCopyWithImpl<$Res, EquipmentDetailEvent>;
  @useResult
  $Res call({int? id});
}

/// @nodoc
class _$EquipmentDetailEventCopyWithImpl<$Res,
        $Val extends EquipmentDetailEvent>
    implements $EquipmentDetailEventCopyWith<$Res> {
  _$EquipmentDetailEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetEquipmentImplCopyWith<$Res>
    implements $EquipmentDetailEventCopyWith<$Res> {
  factory _$$GetEquipmentImplCopyWith(
          _$GetEquipmentImpl value, $Res Function(_$GetEquipmentImpl) then) =
      __$$GetEquipmentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id});
}

/// @nodoc
class __$$GetEquipmentImplCopyWithImpl<$Res>
    extends _$EquipmentDetailEventCopyWithImpl<$Res, _$GetEquipmentImpl>
    implements _$$GetEquipmentImplCopyWith<$Res> {
  __$$GetEquipmentImplCopyWithImpl(
      _$GetEquipmentImpl _value, $Res Function(_$GetEquipmentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_$GetEquipmentImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$GetEquipmentImpl implements _GetEquipment {
  const _$GetEquipmentImpl({this.id});

  @override
  final int? id;

  @override
  String toString() {
    return 'EquipmentDetailEvent.getEquipment(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetEquipmentImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetEquipmentImplCopyWith<_$GetEquipmentImpl> get copyWith =>
      __$$GetEquipmentImplCopyWithImpl<_$GetEquipmentImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? id) getEquipment,
    required TResult Function(int? id) buyEquipment,
  }) {
    return getEquipment(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? id)? getEquipment,
    TResult? Function(int? id)? buyEquipment,
  }) {
    return getEquipment?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? id)? getEquipment,
    TResult Function(int? id)? buyEquipment,
    required TResult orElse(),
  }) {
    if (getEquipment != null) {
      return getEquipment(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetEquipment value) getEquipment,
    required TResult Function(_BuyEquipment value) buyEquipment,
  }) {
    return getEquipment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetEquipment value)? getEquipment,
    TResult? Function(_BuyEquipment value)? buyEquipment,
  }) {
    return getEquipment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetEquipment value)? getEquipment,
    TResult Function(_BuyEquipment value)? buyEquipment,
    required TResult orElse(),
  }) {
    if (getEquipment != null) {
      return getEquipment(this);
    }
    return orElse();
  }
}

abstract class _GetEquipment implements EquipmentDetailEvent {
  const factory _GetEquipment({final int? id}) = _$GetEquipmentImpl;

  @override
  int? get id;
  @override
  @JsonKey(ignore: true)
  _$$GetEquipmentImplCopyWith<_$GetEquipmentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BuyEquipmentImplCopyWith<$Res>
    implements $EquipmentDetailEventCopyWith<$Res> {
  factory _$$BuyEquipmentImplCopyWith(
          _$BuyEquipmentImpl value, $Res Function(_$BuyEquipmentImpl) then) =
      __$$BuyEquipmentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id});
}

/// @nodoc
class __$$BuyEquipmentImplCopyWithImpl<$Res>
    extends _$EquipmentDetailEventCopyWithImpl<$Res, _$BuyEquipmentImpl>
    implements _$$BuyEquipmentImplCopyWith<$Res> {
  __$$BuyEquipmentImplCopyWithImpl(
      _$BuyEquipmentImpl _value, $Res Function(_$BuyEquipmentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_$BuyEquipmentImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$BuyEquipmentImpl implements _BuyEquipment {
  const _$BuyEquipmentImpl({this.id});

  @override
  final int? id;

  @override
  String toString() {
    return 'EquipmentDetailEvent.buyEquipment(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BuyEquipmentImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BuyEquipmentImplCopyWith<_$BuyEquipmentImpl> get copyWith =>
      __$$BuyEquipmentImplCopyWithImpl<_$BuyEquipmentImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? id) getEquipment,
    required TResult Function(int? id) buyEquipment,
  }) {
    return buyEquipment(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? id)? getEquipment,
    TResult? Function(int? id)? buyEquipment,
  }) {
    return buyEquipment?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? id)? getEquipment,
    TResult Function(int? id)? buyEquipment,
    required TResult orElse(),
  }) {
    if (buyEquipment != null) {
      return buyEquipment(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetEquipment value) getEquipment,
    required TResult Function(_BuyEquipment value) buyEquipment,
  }) {
    return buyEquipment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetEquipment value)? getEquipment,
    TResult? Function(_BuyEquipment value)? buyEquipment,
  }) {
    return buyEquipment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetEquipment value)? getEquipment,
    TResult Function(_BuyEquipment value)? buyEquipment,
    required TResult orElse(),
  }) {
    if (buyEquipment != null) {
      return buyEquipment(this);
    }
    return orElse();
  }
}

abstract class _BuyEquipment implements EquipmentDetailEvent {
  const factory _BuyEquipment({final int? id}) = _$BuyEquipmentImpl;

  @override
  int? get id;
  @override
  @JsonKey(ignore: true)
  _$$BuyEquipmentImplCopyWith<_$BuyEquipmentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$EquipmentDetailState {
  StateStatus get stateStatus => throw _privateConstructorUsedError;
  EquipmentDetailEntity? get equipment => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EquipmentDetailStateCopyWith<EquipmentDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EquipmentDetailStateCopyWith<$Res> {
  factory $EquipmentDetailStateCopyWith(EquipmentDetailState value,
          $Res Function(EquipmentDetailState) then) =
      _$EquipmentDetailStateCopyWithImpl<$Res, EquipmentDetailState>;
  @useResult
  $Res call({StateStatus stateStatus, EquipmentDetailEntity? equipment});

  $StateStatusCopyWith<$Res> get stateStatus;
}

/// @nodoc
class _$EquipmentDetailStateCopyWithImpl<$Res,
        $Val extends EquipmentDetailState>
    implements $EquipmentDetailStateCopyWith<$Res> {
  _$EquipmentDetailStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stateStatus = null,
    Object? equipment = freezed,
  }) {
    return _then(_value.copyWith(
      stateStatus: null == stateStatus
          ? _value.stateStatus
          : stateStatus // ignore: cast_nullable_to_non_nullable
              as StateStatus,
      equipment: freezed == equipment
          ? _value.equipment
          : equipment // ignore: cast_nullable_to_non_nullable
              as EquipmentDetailEntity?,
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
abstract class _$$EquipmentDetailStateImplCopyWith<$Res>
    implements $EquipmentDetailStateCopyWith<$Res> {
  factory _$$EquipmentDetailStateImplCopyWith(_$EquipmentDetailStateImpl value,
          $Res Function(_$EquipmentDetailStateImpl) then) =
      __$$EquipmentDetailStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({StateStatus stateStatus, EquipmentDetailEntity? equipment});

  @override
  $StateStatusCopyWith<$Res> get stateStatus;
}

/// @nodoc
class __$$EquipmentDetailStateImplCopyWithImpl<$Res>
    extends _$EquipmentDetailStateCopyWithImpl<$Res, _$EquipmentDetailStateImpl>
    implements _$$EquipmentDetailStateImplCopyWith<$Res> {
  __$$EquipmentDetailStateImplCopyWithImpl(_$EquipmentDetailStateImpl _value,
      $Res Function(_$EquipmentDetailStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stateStatus = null,
    Object? equipment = freezed,
  }) {
    return _then(_$EquipmentDetailStateImpl(
      stateStatus: null == stateStatus
          ? _value.stateStatus
          : stateStatus // ignore: cast_nullable_to_non_nullable
              as StateStatus,
      equipment: freezed == equipment
          ? _value.equipment
          : equipment // ignore: cast_nullable_to_non_nullable
              as EquipmentDetailEntity?,
    ));
  }
}

/// @nodoc

class _$EquipmentDetailStateImpl implements _EquipmentDetailState {
  const _$EquipmentDetailStateImpl(
      {required this.stateStatus, required this.equipment});

  @override
  final StateStatus stateStatus;
  @override
  final EquipmentDetailEntity? equipment;

  @override
  String toString() {
    return 'EquipmentDetailState(stateStatus: $stateStatus, equipment: $equipment)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EquipmentDetailStateImpl &&
            (identical(other.stateStatus, stateStatus) ||
                other.stateStatus == stateStatus) &&
            (identical(other.equipment, equipment) ||
                other.equipment == equipment));
  }

  @override
  int get hashCode => Object.hash(runtimeType, stateStatus, equipment);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EquipmentDetailStateImplCopyWith<_$EquipmentDetailStateImpl>
      get copyWith =>
          __$$EquipmentDetailStateImplCopyWithImpl<_$EquipmentDetailStateImpl>(
              this, _$identity);
}

abstract class _EquipmentDetailState implements EquipmentDetailState {
  const factory _EquipmentDetailState(
          {required final StateStatus stateStatus,
          required final EquipmentDetailEntity? equipment}) =
      _$EquipmentDetailStateImpl;

  @override
  StateStatus get stateStatus;
  @override
  EquipmentDetailEntity? get equipment;
  @override
  @JsonKey(ignore: true)
  _$$EquipmentDetailStateImplCopyWith<_$EquipmentDetailStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
