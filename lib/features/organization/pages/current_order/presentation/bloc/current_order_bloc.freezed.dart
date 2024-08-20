// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'current_order_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CurrentOrderEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllOrders,
    required TResult Function(int id) getDetailedOrder,
    required TResult Function(int id, String value) changeOrderStatus,
    required TResult Function(int id) completeOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAllOrders,
    TResult? Function(int id)? getDetailedOrder,
    TResult? Function(int id, String value)? changeOrderStatus,
    TResult? Function(int id)? completeOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllOrders,
    TResult Function(int id)? getDetailedOrder,
    TResult Function(int id, String value)? changeOrderStatus,
    TResult Function(int id)? completeOrder,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAllCurrentOrders value) getAllOrders,
    required TResult Function(_GetDetailsOrder value) getDetailedOrder,
    required TResult Function(_ChangeOrderStatus value) changeOrderStatus,
    required TResult Function(_CompleteOrder value) completeOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAllCurrentOrders value)? getAllOrders,
    TResult? Function(_GetDetailsOrder value)? getDetailedOrder,
    TResult? Function(_ChangeOrderStatus value)? changeOrderStatus,
    TResult? Function(_CompleteOrder value)? completeOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAllCurrentOrders value)? getAllOrders,
    TResult Function(_GetDetailsOrder value)? getDetailedOrder,
    TResult Function(_ChangeOrderStatus value)? changeOrderStatus,
    TResult Function(_CompleteOrder value)? completeOrder,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrentOrderEventCopyWith<$Res> {
  factory $CurrentOrderEventCopyWith(
          CurrentOrderEvent value, $Res Function(CurrentOrderEvent) then) =
      _$CurrentOrderEventCopyWithImpl<$Res, CurrentOrderEvent>;
}

/// @nodoc
class _$CurrentOrderEventCopyWithImpl<$Res, $Val extends CurrentOrderEvent>
    implements $CurrentOrderEventCopyWith<$Res> {
  _$CurrentOrderEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetAllCurrentOrdersImplCopyWith<$Res> {
  factory _$$GetAllCurrentOrdersImplCopyWith(_$GetAllCurrentOrdersImpl value,
          $Res Function(_$GetAllCurrentOrdersImpl) then) =
      __$$GetAllCurrentOrdersImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetAllCurrentOrdersImplCopyWithImpl<$Res>
    extends _$CurrentOrderEventCopyWithImpl<$Res, _$GetAllCurrentOrdersImpl>
    implements _$$GetAllCurrentOrdersImplCopyWith<$Res> {
  __$$GetAllCurrentOrdersImplCopyWithImpl(_$GetAllCurrentOrdersImpl _value,
      $Res Function(_$GetAllCurrentOrdersImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetAllCurrentOrdersImpl implements _GetAllCurrentOrders {
  const _$GetAllCurrentOrdersImpl();

  @override
  String toString() {
    return 'CurrentOrderEvent.getAllOrders()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAllCurrentOrdersImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllOrders,
    required TResult Function(int id) getDetailedOrder,
    required TResult Function(int id, String value) changeOrderStatus,
    required TResult Function(int id) completeOrder,
  }) {
    return getAllOrders();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAllOrders,
    TResult? Function(int id)? getDetailedOrder,
    TResult? Function(int id, String value)? changeOrderStatus,
    TResult? Function(int id)? completeOrder,
  }) {
    return getAllOrders?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllOrders,
    TResult Function(int id)? getDetailedOrder,
    TResult Function(int id, String value)? changeOrderStatus,
    TResult Function(int id)? completeOrder,
    required TResult orElse(),
  }) {
    if (getAllOrders != null) {
      return getAllOrders();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAllCurrentOrders value) getAllOrders,
    required TResult Function(_GetDetailsOrder value) getDetailedOrder,
    required TResult Function(_ChangeOrderStatus value) changeOrderStatus,
    required TResult Function(_CompleteOrder value) completeOrder,
  }) {
    return getAllOrders(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAllCurrentOrders value)? getAllOrders,
    TResult? Function(_GetDetailsOrder value)? getDetailedOrder,
    TResult? Function(_ChangeOrderStatus value)? changeOrderStatus,
    TResult? Function(_CompleteOrder value)? completeOrder,
  }) {
    return getAllOrders?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAllCurrentOrders value)? getAllOrders,
    TResult Function(_GetDetailsOrder value)? getDetailedOrder,
    TResult Function(_ChangeOrderStatus value)? changeOrderStatus,
    TResult Function(_CompleteOrder value)? completeOrder,
    required TResult orElse(),
  }) {
    if (getAllOrders != null) {
      return getAllOrders(this);
    }
    return orElse();
  }
}

abstract class _GetAllCurrentOrders implements CurrentOrderEvent {
  const factory _GetAllCurrentOrders() = _$GetAllCurrentOrdersImpl;
}

/// @nodoc
abstract class _$$GetDetailsOrderImplCopyWith<$Res> {
  factory _$$GetDetailsOrderImplCopyWith(_$GetDetailsOrderImpl value,
          $Res Function(_$GetDetailsOrderImpl) then) =
      __$$GetDetailsOrderImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$GetDetailsOrderImplCopyWithImpl<$Res>
    extends _$CurrentOrderEventCopyWithImpl<$Res, _$GetDetailsOrderImpl>
    implements _$$GetDetailsOrderImplCopyWith<$Res> {
  __$$GetDetailsOrderImplCopyWithImpl(
      _$GetDetailsOrderImpl _value, $Res Function(_$GetDetailsOrderImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$GetDetailsOrderImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GetDetailsOrderImpl implements _GetDetailsOrder {
  const _$GetDetailsOrderImpl({required this.id});

  @override
  final int id;

  @override
  String toString() {
    return 'CurrentOrderEvent.getDetailedOrder(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetDetailsOrderImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetDetailsOrderImplCopyWith<_$GetDetailsOrderImpl> get copyWith =>
      __$$GetDetailsOrderImplCopyWithImpl<_$GetDetailsOrderImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllOrders,
    required TResult Function(int id) getDetailedOrder,
    required TResult Function(int id, String value) changeOrderStatus,
    required TResult Function(int id) completeOrder,
  }) {
    return getDetailedOrder(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAllOrders,
    TResult? Function(int id)? getDetailedOrder,
    TResult? Function(int id, String value)? changeOrderStatus,
    TResult? Function(int id)? completeOrder,
  }) {
    return getDetailedOrder?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllOrders,
    TResult Function(int id)? getDetailedOrder,
    TResult Function(int id, String value)? changeOrderStatus,
    TResult Function(int id)? completeOrder,
    required TResult orElse(),
  }) {
    if (getDetailedOrder != null) {
      return getDetailedOrder(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAllCurrentOrders value) getAllOrders,
    required TResult Function(_GetDetailsOrder value) getDetailedOrder,
    required TResult Function(_ChangeOrderStatus value) changeOrderStatus,
    required TResult Function(_CompleteOrder value) completeOrder,
  }) {
    return getDetailedOrder(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAllCurrentOrders value)? getAllOrders,
    TResult? Function(_GetDetailsOrder value)? getDetailedOrder,
    TResult? Function(_ChangeOrderStatus value)? changeOrderStatus,
    TResult? Function(_CompleteOrder value)? completeOrder,
  }) {
    return getDetailedOrder?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAllCurrentOrders value)? getAllOrders,
    TResult Function(_GetDetailsOrder value)? getDetailedOrder,
    TResult Function(_ChangeOrderStatus value)? changeOrderStatus,
    TResult Function(_CompleteOrder value)? completeOrder,
    required TResult orElse(),
  }) {
    if (getDetailedOrder != null) {
      return getDetailedOrder(this);
    }
    return orElse();
  }
}

abstract class _GetDetailsOrder implements CurrentOrderEvent {
  const factory _GetDetailsOrder({required final int id}) =
      _$GetDetailsOrderImpl;

  int get id;
  @JsonKey(ignore: true)
  _$$GetDetailsOrderImplCopyWith<_$GetDetailsOrderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeOrderStatusImplCopyWith<$Res> {
  factory _$$ChangeOrderStatusImplCopyWith(_$ChangeOrderStatusImpl value,
          $Res Function(_$ChangeOrderStatusImpl) then) =
      __$$ChangeOrderStatusImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id, String value});
}

/// @nodoc
class __$$ChangeOrderStatusImplCopyWithImpl<$Res>
    extends _$CurrentOrderEventCopyWithImpl<$Res, _$ChangeOrderStatusImpl>
    implements _$$ChangeOrderStatusImplCopyWith<$Res> {
  __$$ChangeOrderStatusImplCopyWithImpl(_$ChangeOrderStatusImpl _value,
      $Res Function(_$ChangeOrderStatusImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? value = null,
  }) {
    return _then(_$ChangeOrderStatusImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ChangeOrderStatusImpl implements _ChangeOrderStatus {
  const _$ChangeOrderStatusImpl({required this.id, required this.value});

  @override
  final int id;
  @override
  final String value;

  @override
  String toString() {
    return 'CurrentOrderEvent.changeOrderStatus(id: $id, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeOrderStatusImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeOrderStatusImplCopyWith<_$ChangeOrderStatusImpl> get copyWith =>
      __$$ChangeOrderStatusImplCopyWithImpl<_$ChangeOrderStatusImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllOrders,
    required TResult Function(int id) getDetailedOrder,
    required TResult Function(int id, String value) changeOrderStatus,
    required TResult Function(int id) completeOrder,
  }) {
    return changeOrderStatus(id, value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAllOrders,
    TResult? Function(int id)? getDetailedOrder,
    TResult? Function(int id, String value)? changeOrderStatus,
    TResult? Function(int id)? completeOrder,
  }) {
    return changeOrderStatus?.call(id, value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllOrders,
    TResult Function(int id)? getDetailedOrder,
    TResult Function(int id, String value)? changeOrderStatus,
    TResult Function(int id)? completeOrder,
    required TResult orElse(),
  }) {
    if (changeOrderStatus != null) {
      return changeOrderStatus(id, value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAllCurrentOrders value) getAllOrders,
    required TResult Function(_GetDetailsOrder value) getDetailedOrder,
    required TResult Function(_ChangeOrderStatus value) changeOrderStatus,
    required TResult Function(_CompleteOrder value) completeOrder,
  }) {
    return changeOrderStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAllCurrentOrders value)? getAllOrders,
    TResult? Function(_GetDetailsOrder value)? getDetailedOrder,
    TResult? Function(_ChangeOrderStatus value)? changeOrderStatus,
    TResult? Function(_CompleteOrder value)? completeOrder,
  }) {
    return changeOrderStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAllCurrentOrders value)? getAllOrders,
    TResult Function(_GetDetailsOrder value)? getDetailedOrder,
    TResult Function(_ChangeOrderStatus value)? changeOrderStatus,
    TResult Function(_CompleteOrder value)? completeOrder,
    required TResult orElse(),
  }) {
    if (changeOrderStatus != null) {
      return changeOrderStatus(this);
    }
    return orElse();
  }
}

abstract class _ChangeOrderStatus implements CurrentOrderEvent {
  const factory _ChangeOrderStatus(
      {required final int id,
      required final String value}) = _$ChangeOrderStatusImpl;

  int get id;
  String get value;
  @JsonKey(ignore: true)
  _$$ChangeOrderStatusImplCopyWith<_$ChangeOrderStatusImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CompleteOrderImplCopyWith<$Res> {
  factory _$$CompleteOrderImplCopyWith(
          _$CompleteOrderImpl value, $Res Function(_$CompleteOrderImpl) then) =
      __$$CompleteOrderImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$CompleteOrderImplCopyWithImpl<$Res>
    extends _$CurrentOrderEventCopyWithImpl<$Res, _$CompleteOrderImpl>
    implements _$$CompleteOrderImplCopyWith<$Res> {
  __$$CompleteOrderImplCopyWithImpl(
      _$CompleteOrderImpl _value, $Res Function(_$CompleteOrderImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$CompleteOrderImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$CompleteOrderImpl implements _CompleteOrder {
  const _$CompleteOrderImpl({required this.id});

  @override
  final int id;

  @override
  String toString() {
    return 'CurrentOrderEvent.completeOrder(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CompleteOrderImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CompleteOrderImplCopyWith<_$CompleteOrderImpl> get copyWith =>
      __$$CompleteOrderImplCopyWithImpl<_$CompleteOrderImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllOrders,
    required TResult Function(int id) getDetailedOrder,
    required TResult Function(int id, String value) changeOrderStatus,
    required TResult Function(int id) completeOrder,
  }) {
    return completeOrder(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAllOrders,
    TResult? Function(int id)? getDetailedOrder,
    TResult? Function(int id, String value)? changeOrderStatus,
    TResult? Function(int id)? completeOrder,
  }) {
    return completeOrder?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllOrders,
    TResult Function(int id)? getDetailedOrder,
    TResult Function(int id, String value)? changeOrderStatus,
    TResult Function(int id)? completeOrder,
    required TResult orElse(),
  }) {
    if (completeOrder != null) {
      return completeOrder(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAllCurrentOrders value) getAllOrders,
    required TResult Function(_GetDetailsOrder value) getDetailedOrder,
    required TResult Function(_ChangeOrderStatus value) changeOrderStatus,
    required TResult Function(_CompleteOrder value) completeOrder,
  }) {
    return completeOrder(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAllCurrentOrders value)? getAllOrders,
    TResult? Function(_GetDetailsOrder value)? getDetailedOrder,
    TResult? Function(_ChangeOrderStatus value)? changeOrderStatus,
    TResult? Function(_CompleteOrder value)? completeOrder,
  }) {
    return completeOrder?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAllCurrentOrders value)? getAllOrders,
    TResult Function(_GetDetailsOrder value)? getDetailedOrder,
    TResult Function(_ChangeOrderStatus value)? changeOrderStatus,
    TResult Function(_CompleteOrder value)? completeOrder,
    required TResult orElse(),
  }) {
    if (completeOrder != null) {
      return completeOrder(this);
    }
    return orElse();
  }
}

abstract class _CompleteOrder implements CurrentOrderEvent {
  const factory _CompleteOrder({required final int id}) = _$CompleteOrderImpl;

  int get id;
  @JsonKey(ignore: true)
  _$$CompleteOrderImplCopyWith<_$CompleteOrderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CurrentOrderState {
  StateStatus get stateStatus => throw _privateConstructorUsedError;
  OrganizationListEntity get orders => throw _privateConstructorUsedError;
  CurrentDetailOrderEntity get detailedOrder =>
      throw _privateConstructorUsedError;
  OrderStatus get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CurrentOrderStateCopyWith<CurrentOrderState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrentOrderStateCopyWith<$Res> {
  factory $CurrentOrderStateCopyWith(
          CurrentOrderState value, $Res Function(CurrentOrderState) then) =
      _$CurrentOrderStateCopyWithImpl<$Res, CurrentOrderState>;
  @useResult
  $Res call(
      {StateStatus stateStatus,
      OrganizationListEntity orders,
      CurrentDetailOrderEntity detailedOrder,
      OrderStatus status});

  $StateStatusCopyWith<$Res> get stateStatus;
}

/// @nodoc
class _$CurrentOrderStateCopyWithImpl<$Res, $Val extends CurrentOrderState>
    implements $CurrentOrderStateCopyWith<$Res> {
  _$CurrentOrderStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stateStatus = null,
    Object? orders = null,
    Object? detailedOrder = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      stateStatus: null == stateStatus
          ? _value.stateStatus
          : stateStatus // ignore: cast_nullable_to_non_nullable
              as StateStatus,
      orders: null == orders
          ? _value.orders
          : orders // ignore: cast_nullable_to_non_nullable
              as OrganizationListEntity,
      detailedOrder: null == detailedOrder
          ? _value.detailedOrder
          : detailedOrder // ignore: cast_nullable_to_non_nullable
              as CurrentDetailOrderEntity,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as OrderStatus,
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
abstract class _$$CurrentOrderStateImplCopyWith<$Res>
    implements $CurrentOrderStateCopyWith<$Res> {
  factory _$$CurrentOrderStateImplCopyWith(_$CurrentOrderStateImpl value,
          $Res Function(_$CurrentOrderStateImpl) then) =
      __$$CurrentOrderStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {StateStatus stateStatus,
      OrganizationListEntity orders,
      CurrentDetailOrderEntity detailedOrder,
      OrderStatus status});

  @override
  $StateStatusCopyWith<$Res> get stateStatus;
}

/// @nodoc
class __$$CurrentOrderStateImplCopyWithImpl<$Res>
    extends _$CurrentOrderStateCopyWithImpl<$Res, _$CurrentOrderStateImpl>
    implements _$$CurrentOrderStateImplCopyWith<$Res> {
  __$$CurrentOrderStateImplCopyWithImpl(_$CurrentOrderStateImpl _value,
      $Res Function(_$CurrentOrderStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stateStatus = null,
    Object? orders = null,
    Object? detailedOrder = null,
    Object? status = null,
  }) {
    return _then(_$CurrentOrderStateImpl(
      stateStatus: null == stateStatus
          ? _value.stateStatus
          : stateStatus // ignore: cast_nullable_to_non_nullable
              as StateStatus,
      orders: null == orders
          ? _value.orders
          : orders // ignore: cast_nullable_to_non_nullable
              as OrganizationListEntity,
      detailedOrder: null == detailedOrder
          ? _value.detailedOrder
          : detailedOrder // ignore: cast_nullable_to_non_nullable
              as CurrentDetailOrderEntity,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as OrderStatus,
    ));
  }
}

/// @nodoc

class _$CurrentOrderStateImpl implements _CurrentOrderState {
  const _$CurrentOrderStateImpl(
      {required this.stateStatus,
      required this.orders,
      required this.detailedOrder,
      required this.status});

  @override
  final StateStatus stateStatus;
  @override
  final OrganizationListEntity orders;
  @override
  final CurrentDetailOrderEntity detailedOrder;
  @override
  final OrderStatus status;

  @override
  String toString() {
    return 'CurrentOrderState(stateStatus: $stateStatus, orders: $orders, detailedOrder: $detailedOrder, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CurrentOrderStateImpl &&
            (identical(other.stateStatus, stateStatus) ||
                other.stateStatus == stateStatus) &&
            (identical(other.orders, orders) || other.orders == orders) &&
            (identical(other.detailedOrder, detailedOrder) ||
                other.detailedOrder == detailedOrder) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, stateStatus, orders, detailedOrder, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CurrentOrderStateImplCopyWith<_$CurrentOrderStateImpl> get copyWith =>
      __$$CurrentOrderStateImplCopyWithImpl<_$CurrentOrderStateImpl>(
          this, _$identity);
}

abstract class _CurrentOrderState implements CurrentOrderState {
  const factory _CurrentOrderState(
      {required final StateStatus stateStatus,
      required final OrganizationListEntity orders,
      required final CurrentDetailOrderEntity detailedOrder,
      required final OrderStatus status}) = _$CurrentOrderStateImpl;

  @override
  StateStatus get stateStatus;
  @override
  OrganizationListEntity get orders;
  @override
  CurrentDetailOrderEntity get detailedOrder;
  @override
  OrderStatus get status;
  @override
  @JsonKey(ignore: true)
  _$$CurrentOrderStateImplCopyWith<_$CurrentOrderStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
