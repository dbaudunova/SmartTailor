// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'marketplace_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MarketplaceEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getOrders,
    required TResult Function() getEquipmetns,
    required TResult Function() getServices,
    required TResult Function() getAll,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getOrders,
    TResult? Function()? getEquipmetns,
    TResult? Function()? getServices,
    TResult? Function()? getAll,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getOrders,
    TResult Function()? getEquipmetns,
    TResult Function()? getServices,
    TResult Function()? getAll,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetOrders value) getOrders,
    required TResult Function(_GetEquipments value) getEquipmetns,
    required TResult Function(_GetServices value) getServices,
    required TResult Function(_GetAll value) getAll,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetOrders value)? getOrders,
    TResult? Function(_GetEquipments value)? getEquipmetns,
    TResult? Function(_GetServices value)? getServices,
    TResult? Function(_GetAll value)? getAll,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetOrders value)? getOrders,
    TResult Function(_GetEquipments value)? getEquipmetns,
    TResult Function(_GetServices value)? getServices,
    TResult Function(_GetAll value)? getAll,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MarketplaceEventCopyWith<$Res> {
  factory $MarketplaceEventCopyWith(
          MarketplaceEvent value, $Res Function(MarketplaceEvent) then) =
      _$MarketplaceEventCopyWithImpl<$Res, MarketplaceEvent>;
}

/// @nodoc
class _$MarketplaceEventCopyWithImpl<$Res, $Val extends MarketplaceEvent>
    implements $MarketplaceEventCopyWith<$Res> {
  _$MarketplaceEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetOrdersImplCopyWith<$Res> {
  factory _$$GetOrdersImplCopyWith(
          _$GetOrdersImpl value, $Res Function(_$GetOrdersImpl) then) =
      __$$GetOrdersImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetOrdersImplCopyWithImpl<$Res>
    extends _$MarketplaceEventCopyWithImpl<$Res, _$GetOrdersImpl>
    implements _$$GetOrdersImplCopyWith<$Res> {
  __$$GetOrdersImplCopyWithImpl(
      _$GetOrdersImpl _value, $Res Function(_$GetOrdersImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetOrdersImpl implements _GetOrders {
  const _$GetOrdersImpl();

  @override
  String toString() {
    return 'MarketplaceEvent.getOrders()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetOrdersImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getOrders,
    required TResult Function() getEquipmetns,
    required TResult Function() getServices,
    required TResult Function() getAll,
  }) {
    return getOrders();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getOrders,
    TResult? Function()? getEquipmetns,
    TResult? Function()? getServices,
    TResult? Function()? getAll,
  }) {
    return getOrders?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getOrders,
    TResult Function()? getEquipmetns,
    TResult Function()? getServices,
    TResult Function()? getAll,
    required TResult orElse(),
  }) {
    if (getOrders != null) {
      return getOrders();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetOrders value) getOrders,
    required TResult Function(_GetEquipments value) getEquipmetns,
    required TResult Function(_GetServices value) getServices,
    required TResult Function(_GetAll value) getAll,
  }) {
    return getOrders(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetOrders value)? getOrders,
    TResult? Function(_GetEquipments value)? getEquipmetns,
    TResult? Function(_GetServices value)? getServices,
    TResult? Function(_GetAll value)? getAll,
  }) {
    return getOrders?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetOrders value)? getOrders,
    TResult Function(_GetEquipments value)? getEquipmetns,
    TResult Function(_GetServices value)? getServices,
    TResult Function(_GetAll value)? getAll,
    required TResult orElse(),
  }) {
    if (getOrders != null) {
      return getOrders(this);
    }
    return orElse();
  }
}

abstract class _GetOrders implements MarketplaceEvent {
  const factory _GetOrders() = _$GetOrdersImpl;
}

/// @nodoc
abstract class _$$GetEquipmentsImplCopyWith<$Res> {
  factory _$$GetEquipmentsImplCopyWith(
          _$GetEquipmentsImpl value, $Res Function(_$GetEquipmentsImpl) then) =
      __$$GetEquipmentsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetEquipmentsImplCopyWithImpl<$Res>
    extends _$MarketplaceEventCopyWithImpl<$Res, _$GetEquipmentsImpl>
    implements _$$GetEquipmentsImplCopyWith<$Res> {
  __$$GetEquipmentsImplCopyWithImpl(
      _$GetEquipmentsImpl _value, $Res Function(_$GetEquipmentsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetEquipmentsImpl implements _GetEquipments {
  const _$GetEquipmentsImpl();

  @override
  String toString() {
    return 'MarketplaceEvent.getEquipmetns()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetEquipmentsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getOrders,
    required TResult Function() getEquipmetns,
    required TResult Function() getServices,
    required TResult Function() getAll,
  }) {
    return getEquipmetns();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getOrders,
    TResult? Function()? getEquipmetns,
    TResult? Function()? getServices,
    TResult? Function()? getAll,
  }) {
    return getEquipmetns?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getOrders,
    TResult Function()? getEquipmetns,
    TResult Function()? getServices,
    TResult Function()? getAll,
    required TResult orElse(),
  }) {
    if (getEquipmetns != null) {
      return getEquipmetns();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetOrders value) getOrders,
    required TResult Function(_GetEquipments value) getEquipmetns,
    required TResult Function(_GetServices value) getServices,
    required TResult Function(_GetAll value) getAll,
  }) {
    return getEquipmetns(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetOrders value)? getOrders,
    TResult? Function(_GetEquipments value)? getEquipmetns,
    TResult? Function(_GetServices value)? getServices,
    TResult? Function(_GetAll value)? getAll,
  }) {
    return getEquipmetns?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetOrders value)? getOrders,
    TResult Function(_GetEquipments value)? getEquipmetns,
    TResult Function(_GetServices value)? getServices,
    TResult Function(_GetAll value)? getAll,
    required TResult orElse(),
  }) {
    if (getEquipmetns != null) {
      return getEquipmetns(this);
    }
    return orElse();
  }
}

abstract class _GetEquipments implements MarketplaceEvent {
  const factory _GetEquipments() = _$GetEquipmentsImpl;
}

/// @nodoc
abstract class _$$GetServicesImplCopyWith<$Res> {
  factory _$$GetServicesImplCopyWith(
          _$GetServicesImpl value, $Res Function(_$GetServicesImpl) then) =
      __$$GetServicesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetServicesImplCopyWithImpl<$Res>
    extends _$MarketplaceEventCopyWithImpl<$Res, _$GetServicesImpl>
    implements _$$GetServicesImplCopyWith<$Res> {
  __$$GetServicesImplCopyWithImpl(
      _$GetServicesImpl _value, $Res Function(_$GetServicesImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetServicesImpl implements _GetServices {
  const _$GetServicesImpl();

  @override
  String toString() {
    return 'MarketplaceEvent.getServices()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetServicesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getOrders,
    required TResult Function() getEquipmetns,
    required TResult Function() getServices,
    required TResult Function() getAll,
  }) {
    return getServices();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getOrders,
    TResult? Function()? getEquipmetns,
    TResult? Function()? getServices,
    TResult? Function()? getAll,
  }) {
    return getServices?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getOrders,
    TResult Function()? getEquipmetns,
    TResult Function()? getServices,
    TResult Function()? getAll,
    required TResult orElse(),
  }) {
    if (getServices != null) {
      return getServices();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetOrders value) getOrders,
    required TResult Function(_GetEquipments value) getEquipmetns,
    required TResult Function(_GetServices value) getServices,
    required TResult Function(_GetAll value) getAll,
  }) {
    return getServices(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetOrders value)? getOrders,
    TResult? Function(_GetEquipments value)? getEquipmetns,
    TResult? Function(_GetServices value)? getServices,
    TResult? Function(_GetAll value)? getAll,
  }) {
    return getServices?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetOrders value)? getOrders,
    TResult Function(_GetEquipments value)? getEquipmetns,
    TResult Function(_GetServices value)? getServices,
    TResult Function(_GetAll value)? getAll,
    required TResult orElse(),
  }) {
    if (getServices != null) {
      return getServices(this);
    }
    return orElse();
  }
}

abstract class _GetServices implements MarketplaceEvent {
  const factory _GetServices() = _$GetServicesImpl;
}

/// @nodoc
abstract class _$$GetAllImplCopyWith<$Res> {
  factory _$$GetAllImplCopyWith(
          _$GetAllImpl value, $Res Function(_$GetAllImpl) then) =
      __$$GetAllImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetAllImplCopyWithImpl<$Res>
    extends _$MarketplaceEventCopyWithImpl<$Res, _$GetAllImpl>
    implements _$$GetAllImplCopyWith<$Res> {
  __$$GetAllImplCopyWithImpl(
      _$GetAllImpl _value, $Res Function(_$GetAllImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetAllImpl implements _GetAll {
  const _$GetAllImpl();

  @override
  String toString() {
    return 'MarketplaceEvent.getAll()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetAllImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getOrders,
    required TResult Function() getEquipmetns,
    required TResult Function() getServices,
    required TResult Function() getAll,
  }) {
    return getAll();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getOrders,
    TResult? Function()? getEquipmetns,
    TResult? Function()? getServices,
    TResult? Function()? getAll,
  }) {
    return getAll?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getOrders,
    TResult Function()? getEquipmetns,
    TResult Function()? getServices,
    TResult Function()? getAll,
    required TResult orElse(),
  }) {
    if (getAll != null) {
      return getAll();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetOrders value) getOrders,
    required TResult Function(_GetEquipments value) getEquipmetns,
    required TResult Function(_GetServices value) getServices,
    required TResult Function(_GetAll value) getAll,
  }) {
    return getAll(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetOrders value)? getOrders,
    TResult? Function(_GetEquipments value)? getEquipmetns,
    TResult? Function(_GetServices value)? getServices,
    TResult? Function(_GetAll value)? getAll,
  }) {
    return getAll?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetOrders value)? getOrders,
    TResult Function(_GetEquipments value)? getEquipmetns,
    TResult Function(_GetServices value)? getServices,
    TResult Function(_GetAll value)? getAll,
    required TResult orElse(),
  }) {
    if (getAll != null) {
      return getAll(this);
    }
    return orElse();
  }
}

abstract class _GetAll implements MarketplaceEvent {
  const factory _GetAll() = _$GetAllImpl;
}

/// @nodoc
mixin _$MarketplaceState {
  StateStatus get stateStatus => throw _privateConstructorUsedError;
  List<GeneralEntity> get equipments => throw _privateConstructorUsedError;
  List<GeneralEntity> get orders => throw _privateConstructorUsedError;
  List<GeneralEntity> get services => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MarketplaceStateCopyWith<MarketplaceState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MarketplaceStateCopyWith<$Res> {
  factory $MarketplaceStateCopyWith(
          MarketplaceState value, $Res Function(MarketplaceState) then) =
      _$MarketplaceStateCopyWithImpl<$Res, MarketplaceState>;
  @useResult
  $Res call(
      {StateStatus stateStatus,
      List<GeneralEntity> equipments,
      List<GeneralEntity> orders,
      List<GeneralEntity> services});

  $StateStatusCopyWith<$Res> get stateStatus;
}

/// @nodoc
class _$MarketplaceStateCopyWithImpl<$Res, $Val extends MarketplaceState>
    implements $MarketplaceStateCopyWith<$Res> {
  _$MarketplaceStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stateStatus = null,
    Object? equipments = null,
    Object? orders = null,
    Object? services = null,
  }) {
    return _then(_value.copyWith(
      stateStatus: null == stateStatus
          ? _value.stateStatus
          : stateStatus // ignore: cast_nullable_to_non_nullable
              as StateStatus,
      equipments: null == equipments
          ? _value.equipments
          : equipments // ignore: cast_nullable_to_non_nullable
              as List<GeneralEntity>,
      orders: null == orders
          ? _value.orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<GeneralEntity>,
      services: null == services
          ? _value.services
          : services // ignore: cast_nullable_to_non_nullable
              as List<GeneralEntity>,
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
abstract class _$$MarketplaceStateImplCopyWith<$Res>
    implements $MarketplaceStateCopyWith<$Res> {
  factory _$$MarketplaceStateImplCopyWith(_$MarketplaceStateImpl value,
          $Res Function(_$MarketplaceStateImpl) then) =
      __$$MarketplaceStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {StateStatus stateStatus,
      List<GeneralEntity> equipments,
      List<GeneralEntity> orders,
      List<GeneralEntity> services});

  @override
  $StateStatusCopyWith<$Res> get stateStatus;
}

/// @nodoc
class __$$MarketplaceStateImplCopyWithImpl<$Res>
    extends _$MarketplaceStateCopyWithImpl<$Res, _$MarketplaceStateImpl>
    implements _$$MarketplaceStateImplCopyWith<$Res> {
  __$$MarketplaceStateImplCopyWithImpl(_$MarketplaceStateImpl _value,
      $Res Function(_$MarketplaceStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stateStatus = null,
    Object? equipments = null,
    Object? orders = null,
    Object? services = null,
  }) {
    return _then(_$MarketplaceStateImpl(
      stateStatus: null == stateStatus
          ? _value.stateStatus
          : stateStatus // ignore: cast_nullable_to_non_nullable
              as StateStatus,
      equipments: null == equipments
          ? _value._equipments
          : equipments // ignore: cast_nullable_to_non_nullable
              as List<GeneralEntity>,
      orders: null == orders
          ? _value._orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<GeneralEntity>,
      services: null == services
          ? _value._services
          : services // ignore: cast_nullable_to_non_nullable
              as List<GeneralEntity>,
    ));
  }
}

/// @nodoc

class _$MarketplaceStateImpl implements _MarketplaceState {
  const _$MarketplaceStateImpl(
      {required this.stateStatus,
      required final List<GeneralEntity> equipments,
      required final List<GeneralEntity> orders,
      required final List<GeneralEntity> services})
      : _equipments = equipments,
        _orders = orders,
        _services = services;

  @override
  final StateStatus stateStatus;
  final List<GeneralEntity> _equipments;
  @override
  List<GeneralEntity> get equipments {
    if (_equipments is EqualUnmodifiableListView) return _equipments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_equipments);
  }

  final List<GeneralEntity> _orders;
  @override
  List<GeneralEntity> get orders {
    if (_orders is EqualUnmodifiableListView) return _orders;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_orders);
  }

  final List<GeneralEntity> _services;
  @override
  List<GeneralEntity> get services {
    if (_services is EqualUnmodifiableListView) return _services;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_services);
  }

  @override
  String toString() {
    return 'MarketplaceState(stateStatus: $stateStatus, equipments: $equipments, orders: $orders, services: $services)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MarketplaceStateImpl &&
            (identical(other.stateStatus, stateStatus) ||
                other.stateStatus == stateStatus) &&
            const DeepCollectionEquality()
                .equals(other._equipments, _equipments) &&
            const DeepCollectionEquality().equals(other._orders, _orders) &&
            const DeepCollectionEquality().equals(other._services, _services));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      stateStatus,
      const DeepCollectionEquality().hash(_equipments),
      const DeepCollectionEquality().hash(_orders),
      const DeepCollectionEquality().hash(_services));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MarketplaceStateImplCopyWith<_$MarketplaceStateImpl> get copyWith =>
      __$$MarketplaceStateImplCopyWithImpl<_$MarketplaceStateImpl>(
          this, _$identity);
}

abstract class _MarketplaceState implements MarketplaceState {
  const factory _MarketplaceState(
      {required final StateStatus stateStatus,
      required final List<GeneralEntity> equipments,
      required final List<GeneralEntity> orders,
      required final List<GeneralEntity> services}) = _$MarketplaceStateImpl;

  @override
  StateStatus get stateStatus;
  @override
  List<GeneralEntity> get equipments;
  @override
  List<GeneralEntity> get orders;
  @override
  List<GeneralEntity> get services;
  @override
  @JsonKey(ignore: true)
  _$$MarketplaceStateImplCopyWith<_$MarketplaceStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
