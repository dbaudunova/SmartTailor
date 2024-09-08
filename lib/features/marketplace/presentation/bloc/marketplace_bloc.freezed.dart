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
    required TResult Function(int page) loadOrders,
    required TResult Function(int page) loadEquipments,
    required TResult Function(int page) loadServices,
    required TResult Function(String query) searchOrder,
    required TResult Function(String query) searchEquipmnet,
    required TResult Function(String query) searchService,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int page)? loadOrders,
    TResult? Function(int page)? loadEquipments,
    TResult? Function(int page)? loadServices,
    TResult? Function(String query)? searchOrder,
    TResult? Function(String query)? searchEquipmnet,
    TResult? Function(String query)? searchService,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page)? loadOrders,
    TResult Function(int page)? loadEquipments,
    TResult Function(int page)? loadServices,
    TResult Function(String query)? searchOrder,
    TResult Function(String query)? searchEquipmnet,
    TResult Function(String query)? searchService,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadOrders value) loadOrders,
    required TResult Function(_LoadEquipments value) loadEquipments,
    required TResult Function(_LoadServices value) loadServices,
    required TResult Function(_SearchOrder value) searchOrder,
    required TResult Function(_SearchEquipment value) searchEquipmnet,
    required TResult Function(_SearchService value) searchService,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadOrders value)? loadOrders,
    TResult? Function(_LoadEquipments value)? loadEquipments,
    TResult? Function(_LoadServices value)? loadServices,
    TResult? Function(_SearchOrder value)? searchOrder,
    TResult? Function(_SearchEquipment value)? searchEquipmnet,
    TResult? Function(_SearchService value)? searchService,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadOrders value)? loadOrders,
    TResult Function(_LoadEquipments value)? loadEquipments,
    TResult Function(_LoadServices value)? loadServices,
    TResult Function(_SearchOrder value)? searchOrder,
    TResult Function(_SearchEquipment value)? searchEquipmnet,
    TResult Function(_SearchService value)? searchService,
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
abstract class _$$LoadOrdersImplCopyWith<$Res> {
  factory _$$LoadOrdersImplCopyWith(
          _$LoadOrdersImpl value, $Res Function(_$LoadOrdersImpl) then) =
      __$$LoadOrdersImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int page});
}

/// @nodoc
class __$$LoadOrdersImplCopyWithImpl<$Res>
    extends _$MarketplaceEventCopyWithImpl<$Res, _$LoadOrdersImpl>
    implements _$$LoadOrdersImplCopyWith<$Res> {
  __$$LoadOrdersImplCopyWithImpl(
      _$LoadOrdersImpl _value, $Res Function(_$LoadOrdersImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
  }) {
    return _then(_$LoadOrdersImpl(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$LoadOrdersImpl implements _LoadOrders {
  const _$LoadOrdersImpl({required this.page});

  @override
  final int page;

  @override
  String toString() {
    return 'MarketplaceEvent.loadOrders(page: $page)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadOrdersImpl &&
            (identical(other.page, page) || other.page == page));
  }

  @override
  int get hashCode => Object.hash(runtimeType, page);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadOrdersImplCopyWith<_$LoadOrdersImpl> get copyWith =>
      __$$LoadOrdersImplCopyWithImpl<_$LoadOrdersImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int page) loadOrders,
    required TResult Function(int page) loadEquipments,
    required TResult Function(int page) loadServices,
    required TResult Function(String query) searchOrder,
    required TResult Function(String query) searchEquipmnet,
    required TResult Function(String query) searchService,
  }) {
    return loadOrders(page);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int page)? loadOrders,
    TResult? Function(int page)? loadEquipments,
    TResult? Function(int page)? loadServices,
    TResult? Function(String query)? searchOrder,
    TResult? Function(String query)? searchEquipmnet,
    TResult? Function(String query)? searchService,
  }) {
    return loadOrders?.call(page);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page)? loadOrders,
    TResult Function(int page)? loadEquipments,
    TResult Function(int page)? loadServices,
    TResult Function(String query)? searchOrder,
    TResult Function(String query)? searchEquipmnet,
    TResult Function(String query)? searchService,
    required TResult orElse(),
  }) {
    if (loadOrders != null) {
      return loadOrders(page);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadOrders value) loadOrders,
    required TResult Function(_LoadEquipments value) loadEquipments,
    required TResult Function(_LoadServices value) loadServices,
    required TResult Function(_SearchOrder value) searchOrder,
    required TResult Function(_SearchEquipment value) searchEquipmnet,
    required TResult Function(_SearchService value) searchService,
  }) {
    return loadOrders(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadOrders value)? loadOrders,
    TResult? Function(_LoadEquipments value)? loadEquipments,
    TResult? Function(_LoadServices value)? loadServices,
    TResult? Function(_SearchOrder value)? searchOrder,
    TResult? Function(_SearchEquipment value)? searchEquipmnet,
    TResult? Function(_SearchService value)? searchService,
  }) {
    return loadOrders?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadOrders value)? loadOrders,
    TResult Function(_LoadEquipments value)? loadEquipments,
    TResult Function(_LoadServices value)? loadServices,
    TResult Function(_SearchOrder value)? searchOrder,
    TResult Function(_SearchEquipment value)? searchEquipmnet,
    TResult Function(_SearchService value)? searchService,
    required TResult orElse(),
  }) {
    if (loadOrders != null) {
      return loadOrders(this);
    }
    return orElse();
  }
}

abstract class _LoadOrders implements MarketplaceEvent {
  const factory _LoadOrders({required final int page}) = _$LoadOrdersImpl;

  int get page;
  @JsonKey(ignore: true)
  _$$LoadOrdersImplCopyWith<_$LoadOrdersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadEquipmentsImplCopyWith<$Res> {
  factory _$$LoadEquipmentsImplCopyWith(_$LoadEquipmentsImpl value,
          $Res Function(_$LoadEquipmentsImpl) then) =
      __$$LoadEquipmentsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int page});
}

/// @nodoc
class __$$LoadEquipmentsImplCopyWithImpl<$Res>
    extends _$MarketplaceEventCopyWithImpl<$Res, _$LoadEquipmentsImpl>
    implements _$$LoadEquipmentsImplCopyWith<$Res> {
  __$$LoadEquipmentsImplCopyWithImpl(
      _$LoadEquipmentsImpl _value, $Res Function(_$LoadEquipmentsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
  }) {
    return _then(_$LoadEquipmentsImpl(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$LoadEquipmentsImpl implements _LoadEquipments {
  const _$LoadEquipmentsImpl({required this.page});

  @override
  final int page;

  @override
  String toString() {
    return 'MarketplaceEvent.loadEquipments(page: $page)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadEquipmentsImpl &&
            (identical(other.page, page) || other.page == page));
  }

  @override
  int get hashCode => Object.hash(runtimeType, page);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadEquipmentsImplCopyWith<_$LoadEquipmentsImpl> get copyWith =>
      __$$LoadEquipmentsImplCopyWithImpl<_$LoadEquipmentsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int page) loadOrders,
    required TResult Function(int page) loadEquipments,
    required TResult Function(int page) loadServices,
    required TResult Function(String query) searchOrder,
    required TResult Function(String query) searchEquipmnet,
    required TResult Function(String query) searchService,
  }) {
    return loadEquipments(page);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int page)? loadOrders,
    TResult? Function(int page)? loadEquipments,
    TResult? Function(int page)? loadServices,
    TResult? Function(String query)? searchOrder,
    TResult? Function(String query)? searchEquipmnet,
    TResult? Function(String query)? searchService,
  }) {
    return loadEquipments?.call(page);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page)? loadOrders,
    TResult Function(int page)? loadEquipments,
    TResult Function(int page)? loadServices,
    TResult Function(String query)? searchOrder,
    TResult Function(String query)? searchEquipmnet,
    TResult Function(String query)? searchService,
    required TResult orElse(),
  }) {
    if (loadEquipments != null) {
      return loadEquipments(page);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadOrders value) loadOrders,
    required TResult Function(_LoadEquipments value) loadEquipments,
    required TResult Function(_LoadServices value) loadServices,
    required TResult Function(_SearchOrder value) searchOrder,
    required TResult Function(_SearchEquipment value) searchEquipmnet,
    required TResult Function(_SearchService value) searchService,
  }) {
    return loadEquipments(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadOrders value)? loadOrders,
    TResult? Function(_LoadEquipments value)? loadEquipments,
    TResult? Function(_LoadServices value)? loadServices,
    TResult? Function(_SearchOrder value)? searchOrder,
    TResult? Function(_SearchEquipment value)? searchEquipmnet,
    TResult? Function(_SearchService value)? searchService,
  }) {
    return loadEquipments?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadOrders value)? loadOrders,
    TResult Function(_LoadEquipments value)? loadEquipments,
    TResult Function(_LoadServices value)? loadServices,
    TResult Function(_SearchOrder value)? searchOrder,
    TResult Function(_SearchEquipment value)? searchEquipmnet,
    TResult Function(_SearchService value)? searchService,
    required TResult orElse(),
  }) {
    if (loadEquipments != null) {
      return loadEquipments(this);
    }
    return orElse();
  }
}

abstract class _LoadEquipments implements MarketplaceEvent {
  const factory _LoadEquipments({required final int page}) =
      _$LoadEquipmentsImpl;

  int get page;
  @JsonKey(ignore: true)
  _$$LoadEquipmentsImplCopyWith<_$LoadEquipmentsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadServicesImplCopyWith<$Res> {
  factory _$$LoadServicesImplCopyWith(
          _$LoadServicesImpl value, $Res Function(_$LoadServicesImpl) then) =
      __$$LoadServicesImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int page});
}

/// @nodoc
class __$$LoadServicesImplCopyWithImpl<$Res>
    extends _$MarketplaceEventCopyWithImpl<$Res, _$LoadServicesImpl>
    implements _$$LoadServicesImplCopyWith<$Res> {
  __$$LoadServicesImplCopyWithImpl(
      _$LoadServicesImpl _value, $Res Function(_$LoadServicesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
  }) {
    return _then(_$LoadServicesImpl(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$LoadServicesImpl implements _LoadServices {
  const _$LoadServicesImpl({required this.page});

  @override
  final int page;

  @override
  String toString() {
    return 'MarketplaceEvent.loadServices(page: $page)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadServicesImpl &&
            (identical(other.page, page) || other.page == page));
  }

  @override
  int get hashCode => Object.hash(runtimeType, page);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadServicesImplCopyWith<_$LoadServicesImpl> get copyWith =>
      __$$LoadServicesImplCopyWithImpl<_$LoadServicesImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int page) loadOrders,
    required TResult Function(int page) loadEquipments,
    required TResult Function(int page) loadServices,
    required TResult Function(String query) searchOrder,
    required TResult Function(String query) searchEquipmnet,
    required TResult Function(String query) searchService,
  }) {
    return loadServices(page);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int page)? loadOrders,
    TResult? Function(int page)? loadEquipments,
    TResult? Function(int page)? loadServices,
    TResult? Function(String query)? searchOrder,
    TResult? Function(String query)? searchEquipmnet,
    TResult? Function(String query)? searchService,
  }) {
    return loadServices?.call(page);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page)? loadOrders,
    TResult Function(int page)? loadEquipments,
    TResult Function(int page)? loadServices,
    TResult Function(String query)? searchOrder,
    TResult Function(String query)? searchEquipmnet,
    TResult Function(String query)? searchService,
    required TResult orElse(),
  }) {
    if (loadServices != null) {
      return loadServices(page);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadOrders value) loadOrders,
    required TResult Function(_LoadEquipments value) loadEquipments,
    required TResult Function(_LoadServices value) loadServices,
    required TResult Function(_SearchOrder value) searchOrder,
    required TResult Function(_SearchEquipment value) searchEquipmnet,
    required TResult Function(_SearchService value) searchService,
  }) {
    return loadServices(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadOrders value)? loadOrders,
    TResult? Function(_LoadEquipments value)? loadEquipments,
    TResult? Function(_LoadServices value)? loadServices,
    TResult? Function(_SearchOrder value)? searchOrder,
    TResult? Function(_SearchEquipment value)? searchEquipmnet,
    TResult? Function(_SearchService value)? searchService,
  }) {
    return loadServices?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadOrders value)? loadOrders,
    TResult Function(_LoadEquipments value)? loadEquipments,
    TResult Function(_LoadServices value)? loadServices,
    TResult Function(_SearchOrder value)? searchOrder,
    TResult Function(_SearchEquipment value)? searchEquipmnet,
    TResult Function(_SearchService value)? searchService,
    required TResult orElse(),
  }) {
    if (loadServices != null) {
      return loadServices(this);
    }
    return orElse();
  }
}

abstract class _LoadServices implements MarketplaceEvent {
  const factory _LoadServices({required final int page}) = _$LoadServicesImpl;

  int get page;
  @JsonKey(ignore: true)
  _$$LoadServicesImplCopyWith<_$LoadServicesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchOrderImplCopyWith<$Res> {
  factory _$$SearchOrderImplCopyWith(
          _$SearchOrderImpl value, $Res Function(_$SearchOrderImpl) then) =
      __$$SearchOrderImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$SearchOrderImplCopyWithImpl<$Res>
    extends _$MarketplaceEventCopyWithImpl<$Res, _$SearchOrderImpl>
    implements _$$SearchOrderImplCopyWith<$Res> {
  __$$SearchOrderImplCopyWithImpl(
      _$SearchOrderImpl _value, $Res Function(_$SearchOrderImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_$SearchOrderImpl(
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchOrderImpl implements _SearchOrder {
  const _$SearchOrderImpl({required this.query});

  @override
  final String query;

  @override
  String toString() {
    return 'MarketplaceEvent.searchOrder(query: $query)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchOrderImpl &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchOrderImplCopyWith<_$SearchOrderImpl> get copyWith =>
      __$$SearchOrderImplCopyWithImpl<_$SearchOrderImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int page) loadOrders,
    required TResult Function(int page) loadEquipments,
    required TResult Function(int page) loadServices,
    required TResult Function(String query) searchOrder,
    required TResult Function(String query) searchEquipmnet,
    required TResult Function(String query) searchService,
  }) {
    return searchOrder(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int page)? loadOrders,
    TResult? Function(int page)? loadEquipments,
    TResult? Function(int page)? loadServices,
    TResult? Function(String query)? searchOrder,
    TResult? Function(String query)? searchEquipmnet,
    TResult? Function(String query)? searchService,
  }) {
    return searchOrder?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page)? loadOrders,
    TResult Function(int page)? loadEquipments,
    TResult Function(int page)? loadServices,
    TResult Function(String query)? searchOrder,
    TResult Function(String query)? searchEquipmnet,
    TResult Function(String query)? searchService,
    required TResult orElse(),
  }) {
    if (searchOrder != null) {
      return searchOrder(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadOrders value) loadOrders,
    required TResult Function(_LoadEquipments value) loadEquipments,
    required TResult Function(_LoadServices value) loadServices,
    required TResult Function(_SearchOrder value) searchOrder,
    required TResult Function(_SearchEquipment value) searchEquipmnet,
    required TResult Function(_SearchService value) searchService,
  }) {
    return searchOrder(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadOrders value)? loadOrders,
    TResult? Function(_LoadEquipments value)? loadEquipments,
    TResult? Function(_LoadServices value)? loadServices,
    TResult? Function(_SearchOrder value)? searchOrder,
    TResult? Function(_SearchEquipment value)? searchEquipmnet,
    TResult? Function(_SearchService value)? searchService,
  }) {
    return searchOrder?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadOrders value)? loadOrders,
    TResult Function(_LoadEquipments value)? loadEquipments,
    TResult Function(_LoadServices value)? loadServices,
    TResult Function(_SearchOrder value)? searchOrder,
    TResult Function(_SearchEquipment value)? searchEquipmnet,
    TResult Function(_SearchService value)? searchService,
    required TResult orElse(),
  }) {
    if (searchOrder != null) {
      return searchOrder(this);
    }
    return orElse();
  }
}

abstract class _SearchOrder implements MarketplaceEvent {
  const factory _SearchOrder({required final String query}) = _$SearchOrderImpl;

  String get query;
  @JsonKey(ignore: true)
  _$$SearchOrderImplCopyWith<_$SearchOrderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchEquipmentImplCopyWith<$Res> {
  factory _$$SearchEquipmentImplCopyWith(_$SearchEquipmentImpl value,
          $Res Function(_$SearchEquipmentImpl) then) =
      __$$SearchEquipmentImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$SearchEquipmentImplCopyWithImpl<$Res>
    extends _$MarketplaceEventCopyWithImpl<$Res, _$SearchEquipmentImpl>
    implements _$$SearchEquipmentImplCopyWith<$Res> {
  __$$SearchEquipmentImplCopyWithImpl(
      _$SearchEquipmentImpl _value, $Res Function(_$SearchEquipmentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_$SearchEquipmentImpl(
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchEquipmentImpl implements _SearchEquipment {
  const _$SearchEquipmentImpl({required this.query});

  @override
  final String query;

  @override
  String toString() {
    return 'MarketplaceEvent.searchEquipmnet(query: $query)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchEquipmentImpl &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchEquipmentImplCopyWith<_$SearchEquipmentImpl> get copyWith =>
      __$$SearchEquipmentImplCopyWithImpl<_$SearchEquipmentImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int page) loadOrders,
    required TResult Function(int page) loadEquipments,
    required TResult Function(int page) loadServices,
    required TResult Function(String query) searchOrder,
    required TResult Function(String query) searchEquipmnet,
    required TResult Function(String query) searchService,
  }) {
    return searchEquipmnet(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int page)? loadOrders,
    TResult? Function(int page)? loadEquipments,
    TResult? Function(int page)? loadServices,
    TResult? Function(String query)? searchOrder,
    TResult? Function(String query)? searchEquipmnet,
    TResult? Function(String query)? searchService,
  }) {
    return searchEquipmnet?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page)? loadOrders,
    TResult Function(int page)? loadEquipments,
    TResult Function(int page)? loadServices,
    TResult Function(String query)? searchOrder,
    TResult Function(String query)? searchEquipmnet,
    TResult Function(String query)? searchService,
    required TResult orElse(),
  }) {
    if (searchEquipmnet != null) {
      return searchEquipmnet(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadOrders value) loadOrders,
    required TResult Function(_LoadEquipments value) loadEquipments,
    required TResult Function(_LoadServices value) loadServices,
    required TResult Function(_SearchOrder value) searchOrder,
    required TResult Function(_SearchEquipment value) searchEquipmnet,
    required TResult Function(_SearchService value) searchService,
  }) {
    return searchEquipmnet(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadOrders value)? loadOrders,
    TResult? Function(_LoadEquipments value)? loadEquipments,
    TResult? Function(_LoadServices value)? loadServices,
    TResult? Function(_SearchOrder value)? searchOrder,
    TResult? Function(_SearchEquipment value)? searchEquipmnet,
    TResult? Function(_SearchService value)? searchService,
  }) {
    return searchEquipmnet?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadOrders value)? loadOrders,
    TResult Function(_LoadEquipments value)? loadEquipments,
    TResult Function(_LoadServices value)? loadServices,
    TResult Function(_SearchOrder value)? searchOrder,
    TResult Function(_SearchEquipment value)? searchEquipmnet,
    TResult Function(_SearchService value)? searchService,
    required TResult orElse(),
  }) {
    if (searchEquipmnet != null) {
      return searchEquipmnet(this);
    }
    return orElse();
  }
}

abstract class _SearchEquipment implements MarketplaceEvent {
  const factory _SearchEquipment({required final String query}) =
      _$SearchEquipmentImpl;

  String get query;
  @JsonKey(ignore: true)
  _$$SearchEquipmentImplCopyWith<_$SearchEquipmentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchServiceImplCopyWith<$Res> {
  factory _$$SearchServiceImplCopyWith(
          _$SearchServiceImpl value, $Res Function(_$SearchServiceImpl) then) =
      __$$SearchServiceImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$SearchServiceImplCopyWithImpl<$Res>
    extends _$MarketplaceEventCopyWithImpl<$Res, _$SearchServiceImpl>
    implements _$$SearchServiceImplCopyWith<$Res> {
  __$$SearchServiceImplCopyWithImpl(
      _$SearchServiceImpl _value, $Res Function(_$SearchServiceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_$SearchServiceImpl(
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchServiceImpl implements _SearchService {
  const _$SearchServiceImpl({required this.query});

  @override
  final String query;

  @override
  String toString() {
    return 'MarketplaceEvent.searchService(query: $query)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchServiceImpl &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchServiceImplCopyWith<_$SearchServiceImpl> get copyWith =>
      __$$SearchServiceImplCopyWithImpl<_$SearchServiceImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int page) loadOrders,
    required TResult Function(int page) loadEquipments,
    required TResult Function(int page) loadServices,
    required TResult Function(String query) searchOrder,
    required TResult Function(String query) searchEquipmnet,
    required TResult Function(String query) searchService,
  }) {
    return searchService(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int page)? loadOrders,
    TResult? Function(int page)? loadEquipments,
    TResult? Function(int page)? loadServices,
    TResult? Function(String query)? searchOrder,
    TResult? Function(String query)? searchEquipmnet,
    TResult? Function(String query)? searchService,
  }) {
    return searchService?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page)? loadOrders,
    TResult Function(int page)? loadEquipments,
    TResult Function(int page)? loadServices,
    TResult Function(String query)? searchOrder,
    TResult Function(String query)? searchEquipmnet,
    TResult Function(String query)? searchService,
    required TResult orElse(),
  }) {
    if (searchService != null) {
      return searchService(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadOrders value) loadOrders,
    required TResult Function(_LoadEquipments value) loadEquipments,
    required TResult Function(_LoadServices value) loadServices,
    required TResult Function(_SearchOrder value) searchOrder,
    required TResult Function(_SearchEquipment value) searchEquipmnet,
    required TResult Function(_SearchService value) searchService,
  }) {
    return searchService(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadOrders value)? loadOrders,
    TResult? Function(_LoadEquipments value)? loadEquipments,
    TResult? Function(_LoadServices value)? loadServices,
    TResult? Function(_SearchOrder value)? searchOrder,
    TResult? Function(_SearchEquipment value)? searchEquipmnet,
    TResult? Function(_SearchService value)? searchService,
  }) {
    return searchService?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadOrders value)? loadOrders,
    TResult Function(_LoadEquipments value)? loadEquipments,
    TResult Function(_LoadServices value)? loadServices,
    TResult Function(_SearchOrder value)? searchOrder,
    TResult Function(_SearchEquipment value)? searchEquipmnet,
    TResult Function(_SearchService value)? searchService,
    required TResult orElse(),
  }) {
    if (searchService != null) {
      return searchService(this);
    }
    return orElse();
  }
}

abstract class _SearchService implements MarketplaceEvent {
  const factory _SearchService({required final String query}) =
      _$SearchServiceImpl;

  String get query;
  @JsonKey(ignore: true)
  _$$SearchServiceImplCopyWith<_$SearchServiceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MarketplaceState {
  StateStatus get stateStatus => throw _privateConstructorUsedError;
  List<GeneralEntity> get equipments => throw _privateConstructorUsedError;
  List<GeneralEntity> get orders => throw _privateConstructorUsedError;
  List<GeneralEntity> get services => throw _privateConstructorUsedError;
  bool get lastForOrders => throw _privateConstructorUsedError;
  bool get lastForServices => throw _privateConstructorUsedError;
  bool get lastForEquipment => throw _privateConstructorUsedError;
  List<AdvertisementEntity> get searchedServices =>
      throw _privateConstructorUsedError;
  List<AdvertisementEntity> get searchedOrders =>
      throw _privateConstructorUsedError;
  List<AdvertisementEntity> get searchedEquipment =>
      throw _privateConstructorUsedError;

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
      List<GeneralEntity> services,
      bool lastForOrders,
      bool lastForServices,
      bool lastForEquipment,
      List<AdvertisementEntity> searchedServices,
      List<AdvertisementEntity> searchedOrders,
      List<AdvertisementEntity> searchedEquipment});

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
    Object? lastForOrders = null,
    Object? lastForServices = null,
    Object? lastForEquipment = null,
    Object? searchedServices = null,
    Object? searchedOrders = null,
    Object? searchedEquipment = null,
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
      lastForOrders: null == lastForOrders
          ? _value.lastForOrders
          : lastForOrders // ignore: cast_nullable_to_non_nullable
              as bool,
      lastForServices: null == lastForServices
          ? _value.lastForServices
          : lastForServices // ignore: cast_nullable_to_non_nullable
              as bool,
      lastForEquipment: null == lastForEquipment
          ? _value.lastForEquipment
          : lastForEquipment // ignore: cast_nullable_to_non_nullable
              as bool,
      searchedServices: null == searchedServices
          ? _value.searchedServices
          : searchedServices // ignore: cast_nullable_to_non_nullable
              as List<AdvertisementEntity>,
      searchedOrders: null == searchedOrders
          ? _value.searchedOrders
          : searchedOrders // ignore: cast_nullable_to_non_nullable
              as List<AdvertisementEntity>,
      searchedEquipment: null == searchedEquipment
          ? _value.searchedEquipment
          : searchedEquipment // ignore: cast_nullable_to_non_nullable
              as List<AdvertisementEntity>,
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
      List<GeneralEntity> services,
      bool lastForOrders,
      bool lastForServices,
      bool lastForEquipment,
      List<AdvertisementEntity> searchedServices,
      List<AdvertisementEntity> searchedOrders,
      List<AdvertisementEntity> searchedEquipment});

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
    Object? lastForOrders = null,
    Object? lastForServices = null,
    Object? lastForEquipment = null,
    Object? searchedServices = null,
    Object? searchedOrders = null,
    Object? searchedEquipment = null,
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
      lastForOrders: null == lastForOrders
          ? _value.lastForOrders
          : lastForOrders // ignore: cast_nullable_to_non_nullable
              as bool,
      lastForServices: null == lastForServices
          ? _value.lastForServices
          : lastForServices // ignore: cast_nullable_to_non_nullable
              as bool,
      lastForEquipment: null == lastForEquipment
          ? _value.lastForEquipment
          : lastForEquipment // ignore: cast_nullable_to_non_nullable
              as bool,
      searchedServices: null == searchedServices
          ? _value._searchedServices
          : searchedServices // ignore: cast_nullable_to_non_nullable
              as List<AdvertisementEntity>,
      searchedOrders: null == searchedOrders
          ? _value._searchedOrders
          : searchedOrders // ignore: cast_nullable_to_non_nullable
              as List<AdvertisementEntity>,
      searchedEquipment: null == searchedEquipment
          ? _value._searchedEquipment
          : searchedEquipment // ignore: cast_nullable_to_non_nullable
              as List<AdvertisementEntity>,
    ));
  }
}

/// @nodoc

class _$MarketplaceStateImpl implements _MarketplaceState {
  const _$MarketplaceStateImpl(
      {required this.stateStatus,
      required final List<GeneralEntity> equipments,
      required final List<GeneralEntity> orders,
      required final List<GeneralEntity> services,
      required this.lastForOrders,
      required this.lastForServices,
      required this.lastForEquipment,
      required final List<AdvertisementEntity> searchedServices,
      required final List<AdvertisementEntity> searchedOrders,
      required final List<AdvertisementEntity> searchedEquipment})
      : _equipments = equipments,
        _orders = orders,
        _services = services,
        _searchedServices = searchedServices,
        _searchedOrders = searchedOrders,
        _searchedEquipment = searchedEquipment;

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
  final bool lastForOrders;
  @override
  final bool lastForServices;
  @override
  final bool lastForEquipment;
  final List<AdvertisementEntity> _searchedServices;
  @override
  List<AdvertisementEntity> get searchedServices {
    if (_searchedServices is EqualUnmodifiableListView)
      return _searchedServices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_searchedServices);
  }

  final List<AdvertisementEntity> _searchedOrders;
  @override
  List<AdvertisementEntity> get searchedOrders {
    if (_searchedOrders is EqualUnmodifiableListView) return _searchedOrders;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_searchedOrders);
  }

  final List<AdvertisementEntity> _searchedEquipment;
  @override
  List<AdvertisementEntity> get searchedEquipment {
    if (_searchedEquipment is EqualUnmodifiableListView)
      return _searchedEquipment;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_searchedEquipment);
  }

  @override
  String toString() {
    return 'MarketplaceState(stateStatus: $stateStatus, equipments: $equipments, orders: $orders, services: $services, lastForOrders: $lastForOrders, lastForServices: $lastForServices, lastForEquipment: $lastForEquipment, searchedServices: $searchedServices, searchedOrders: $searchedOrders, searchedEquipment: $searchedEquipment)';
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
            const DeepCollectionEquality().equals(other._services, _services) &&
            (identical(other.lastForOrders, lastForOrders) ||
                other.lastForOrders == lastForOrders) &&
            (identical(other.lastForServices, lastForServices) ||
                other.lastForServices == lastForServices) &&
            (identical(other.lastForEquipment, lastForEquipment) ||
                other.lastForEquipment == lastForEquipment) &&
            const DeepCollectionEquality()
                .equals(other._searchedServices, _searchedServices) &&
            const DeepCollectionEquality()
                .equals(other._searchedOrders, _searchedOrders) &&
            const DeepCollectionEquality()
                .equals(other._searchedEquipment, _searchedEquipment));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      stateStatus,
      const DeepCollectionEquality().hash(_equipments),
      const DeepCollectionEquality().hash(_orders),
      const DeepCollectionEquality().hash(_services),
      lastForOrders,
      lastForServices,
      lastForEquipment,
      const DeepCollectionEquality().hash(_searchedServices),
      const DeepCollectionEquality().hash(_searchedOrders),
      const DeepCollectionEquality().hash(_searchedEquipment));

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
          required final List<GeneralEntity> services,
          required final bool lastForOrders,
          required final bool lastForServices,
          required final bool lastForEquipment,
          required final List<AdvertisementEntity> searchedServices,
          required final List<AdvertisementEntity> searchedOrders,
          required final List<AdvertisementEntity> searchedEquipment}) =
      _$MarketplaceStateImpl;

  @override
  StateStatus get stateStatus;
  @override
  List<GeneralEntity> get equipments;
  @override
  List<GeneralEntity> get orders;
  @override
  List<GeneralEntity> get services;
  @override
  bool get lastForOrders;
  @override
  bool get lastForServices;
  @override
  bool get lastForEquipment;
  @override
  List<AdvertisementEntity> get searchedServices;
  @override
  List<AdvertisementEntity> get searchedOrders;
  @override
  List<AdvertisementEntity> get searchedEquipment;
  @override
  @JsonKey(ignore: true)
  _$$MarketplaceStateImplCopyWith<_$MarketplaceStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
