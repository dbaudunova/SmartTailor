// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_detail_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$OrderDetailEvent {
  int? get id => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? id) getOrder,
    required TResult Function(int? id) requestToExecute,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? id)? getOrder,
    TResult? Function(int? id)? requestToExecute,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? id)? getOrder,
    TResult Function(int? id)? requestToExecute,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetOrder value) getOrder,
    required TResult Function(_RequestToExecute value) requestToExecute,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetOrder value)? getOrder,
    TResult? Function(_RequestToExecute value)? requestToExecute,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetOrder value)? getOrder,
    TResult Function(_RequestToExecute value)? requestToExecute,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OrderDetailEventCopyWith<OrderDetailEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderDetailEventCopyWith<$Res> {
  factory $OrderDetailEventCopyWith(
          OrderDetailEvent value, $Res Function(OrderDetailEvent) then) =
      _$OrderDetailEventCopyWithImpl<$Res, OrderDetailEvent>;
  @useResult
  $Res call({int? id});
}

/// @nodoc
class _$OrderDetailEventCopyWithImpl<$Res, $Val extends OrderDetailEvent>
    implements $OrderDetailEventCopyWith<$Res> {
  _$OrderDetailEventCopyWithImpl(this._value, this._then);

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
abstract class _$$GetOrderImplCopyWith<$Res>
    implements $OrderDetailEventCopyWith<$Res> {
  factory _$$GetOrderImplCopyWith(
          _$GetOrderImpl value, $Res Function(_$GetOrderImpl) then) =
      __$$GetOrderImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id});
}

/// @nodoc
class __$$GetOrderImplCopyWithImpl<$Res>
    extends _$OrderDetailEventCopyWithImpl<$Res, _$GetOrderImpl>
    implements _$$GetOrderImplCopyWith<$Res> {
  __$$GetOrderImplCopyWithImpl(
      _$GetOrderImpl _value, $Res Function(_$GetOrderImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_$GetOrderImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$GetOrderImpl implements _GetOrder {
  const _$GetOrderImpl({this.id});

  @override
  final int? id;

  @override
  String toString() {
    return 'OrderDetailEvent.getOrder(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetOrderImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetOrderImplCopyWith<_$GetOrderImpl> get copyWith =>
      __$$GetOrderImplCopyWithImpl<_$GetOrderImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? id) getOrder,
    required TResult Function(int? id) requestToExecute,
  }) {
    return getOrder(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? id)? getOrder,
    TResult? Function(int? id)? requestToExecute,
  }) {
    return getOrder?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? id)? getOrder,
    TResult Function(int? id)? requestToExecute,
    required TResult orElse(),
  }) {
    if (getOrder != null) {
      return getOrder(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetOrder value) getOrder,
    required TResult Function(_RequestToExecute value) requestToExecute,
  }) {
    return getOrder(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetOrder value)? getOrder,
    TResult? Function(_RequestToExecute value)? requestToExecute,
  }) {
    return getOrder?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetOrder value)? getOrder,
    TResult Function(_RequestToExecute value)? requestToExecute,
    required TResult orElse(),
  }) {
    if (getOrder != null) {
      return getOrder(this);
    }
    return orElse();
  }
}

abstract class _GetOrder implements OrderDetailEvent {
  const factory _GetOrder({final int? id}) = _$GetOrderImpl;

  @override
  int? get id;
  @override
  @JsonKey(ignore: true)
  _$$GetOrderImplCopyWith<_$GetOrderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RequestToExecuteImplCopyWith<$Res>
    implements $OrderDetailEventCopyWith<$Res> {
  factory _$$RequestToExecuteImplCopyWith(_$RequestToExecuteImpl value,
          $Res Function(_$RequestToExecuteImpl) then) =
      __$$RequestToExecuteImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id});
}

/// @nodoc
class __$$RequestToExecuteImplCopyWithImpl<$Res>
    extends _$OrderDetailEventCopyWithImpl<$Res, _$RequestToExecuteImpl>
    implements _$$RequestToExecuteImplCopyWith<$Res> {
  __$$RequestToExecuteImplCopyWithImpl(_$RequestToExecuteImpl _value,
      $Res Function(_$RequestToExecuteImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_$RequestToExecuteImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$RequestToExecuteImpl implements _RequestToExecute {
  const _$RequestToExecuteImpl({this.id});

  @override
  final int? id;

  @override
  String toString() {
    return 'OrderDetailEvent.requestToExecute(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestToExecuteImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestToExecuteImplCopyWith<_$RequestToExecuteImpl> get copyWith =>
      __$$RequestToExecuteImplCopyWithImpl<_$RequestToExecuteImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? id) getOrder,
    required TResult Function(int? id) requestToExecute,
  }) {
    return requestToExecute(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? id)? getOrder,
    TResult? Function(int? id)? requestToExecute,
  }) {
    return requestToExecute?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? id)? getOrder,
    TResult Function(int? id)? requestToExecute,
    required TResult orElse(),
  }) {
    if (requestToExecute != null) {
      return requestToExecute(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetOrder value) getOrder,
    required TResult Function(_RequestToExecute value) requestToExecute,
  }) {
    return requestToExecute(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetOrder value)? getOrder,
    TResult? Function(_RequestToExecute value)? requestToExecute,
  }) {
    return requestToExecute?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetOrder value)? getOrder,
    TResult Function(_RequestToExecute value)? requestToExecute,
    required TResult orElse(),
  }) {
    if (requestToExecute != null) {
      return requestToExecute(this);
    }
    return orElse();
  }
}

abstract class _RequestToExecute implements OrderDetailEvent {
  const factory _RequestToExecute({final int? id}) = _$RequestToExecuteImpl;

  @override
  int? get id;
  @override
  @JsonKey(ignore: true)
  _$$RequestToExecuteImplCopyWith<_$RequestToExecuteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$OrderDetailState {
  StateStatus get stateStatus => throw _privateConstructorUsedError;
  OrderDetailEntity get order => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OrderDetailStateCopyWith<OrderDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderDetailStateCopyWith<$Res> {
  factory $OrderDetailStateCopyWith(
          OrderDetailState value, $Res Function(OrderDetailState) then) =
      _$OrderDetailStateCopyWithImpl<$Res, OrderDetailState>;
  @useResult
  $Res call({StateStatus stateStatus, OrderDetailEntity order});

  $StateStatusCopyWith<$Res> get stateStatus;
}

/// @nodoc
class _$OrderDetailStateCopyWithImpl<$Res, $Val extends OrderDetailState>
    implements $OrderDetailStateCopyWith<$Res> {
  _$OrderDetailStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stateStatus = null,
    Object? order = null,
  }) {
    return _then(_value.copyWith(
      stateStatus: null == stateStatus
          ? _value.stateStatus
          : stateStatus // ignore: cast_nullable_to_non_nullable
              as StateStatus,
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as OrderDetailEntity,
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
abstract class _$$OrderDetailStateImplCopyWith<$Res>
    implements $OrderDetailStateCopyWith<$Res> {
  factory _$$OrderDetailStateImplCopyWith(_$OrderDetailStateImpl value,
          $Res Function(_$OrderDetailStateImpl) then) =
      __$$OrderDetailStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({StateStatus stateStatus, OrderDetailEntity order});

  @override
  $StateStatusCopyWith<$Res> get stateStatus;
}

/// @nodoc
class __$$OrderDetailStateImplCopyWithImpl<$Res>
    extends _$OrderDetailStateCopyWithImpl<$Res, _$OrderDetailStateImpl>
    implements _$$OrderDetailStateImplCopyWith<$Res> {
  __$$OrderDetailStateImplCopyWithImpl(_$OrderDetailStateImpl _value,
      $Res Function(_$OrderDetailStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stateStatus = null,
    Object? order = null,
  }) {
    return _then(_$OrderDetailStateImpl(
      stateStatus: null == stateStatus
          ? _value.stateStatus
          : stateStatus // ignore: cast_nullable_to_non_nullable
              as StateStatus,
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as OrderDetailEntity,
    ));
  }
}

/// @nodoc

class _$OrderDetailStateImpl implements _OrderDetailState {
  const _$OrderDetailStateImpl(
      {required this.stateStatus, required this.order});

  @override
  final StateStatus stateStatus;
  @override
  final OrderDetailEntity order;

  @override
  String toString() {
    return 'OrderDetailState(stateStatus: $stateStatus, order: $order)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderDetailStateImpl &&
            (identical(other.stateStatus, stateStatus) ||
                other.stateStatus == stateStatus) &&
            (identical(other.order, order) || other.order == order));
  }

  @override
  int get hashCode => Object.hash(runtimeType, stateStatus, order);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderDetailStateImplCopyWith<_$OrderDetailStateImpl> get copyWith =>
      __$$OrderDetailStateImplCopyWithImpl<_$OrderDetailStateImpl>(
          this, _$identity);
}

abstract class _OrderDetailState implements OrderDetailState {
  const factory _OrderDetailState(
      {required final StateStatus stateStatus,
      required final OrderDetailEntity order}) = _$OrderDetailStateImpl;

  @override
  StateStatus get stateStatus;
  @override
  OrderDetailEntity get order;
  @override
  @JsonKey(ignore: true)
  _$$OrderDetailStateImplCopyWith<_$OrderDetailStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
