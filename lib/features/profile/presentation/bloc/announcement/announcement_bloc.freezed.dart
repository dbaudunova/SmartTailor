// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'announcement_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AnnouncementEvent {
  int? get id => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? id) getOrderDetailed,
    required TResult Function(int? id) getEquipmentDetailed,
    required TResult Function(int? id) getServiceDetailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? id)? getOrderDetailed,
    TResult? Function(int? id)? getEquipmentDetailed,
    TResult? Function(int? id)? getServiceDetailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? id)? getOrderDetailed,
    TResult Function(int? id)? getEquipmentDetailed,
    TResult Function(int? id)? getServiceDetailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetOrderDetailed value) getOrderDetailed,
    required TResult Function(_GetEquipmentDetailed value) getEquipmentDetailed,
    required TResult Function(_GetServiceDetailed value) getServiceDetailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetOrderDetailed value)? getOrderDetailed,
    TResult? Function(_GetEquipmentDetailed value)? getEquipmentDetailed,
    TResult? Function(_GetServiceDetailed value)? getServiceDetailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetOrderDetailed value)? getOrderDetailed,
    TResult Function(_GetEquipmentDetailed value)? getEquipmentDetailed,
    TResult Function(_GetServiceDetailed value)? getServiceDetailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AnnouncementEventCopyWith<AnnouncementEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnnouncementEventCopyWith<$Res> {
  factory $AnnouncementEventCopyWith(
          AnnouncementEvent value, $Res Function(AnnouncementEvent) then) =
      _$AnnouncementEventCopyWithImpl<$Res, AnnouncementEvent>;
  @useResult
  $Res call({int? id});
}

/// @nodoc
class _$AnnouncementEventCopyWithImpl<$Res, $Val extends AnnouncementEvent>
    implements $AnnouncementEventCopyWith<$Res> {
  _$AnnouncementEventCopyWithImpl(this._value, this._then);

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
abstract class _$$GetOrderDetailedImplCopyWith<$Res>
    implements $AnnouncementEventCopyWith<$Res> {
  factory _$$GetOrderDetailedImplCopyWith(_$GetOrderDetailedImpl value,
          $Res Function(_$GetOrderDetailedImpl) then) =
      __$$GetOrderDetailedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id});
}

/// @nodoc
class __$$GetOrderDetailedImplCopyWithImpl<$Res>
    extends _$AnnouncementEventCopyWithImpl<$Res, _$GetOrderDetailedImpl>
    implements _$$GetOrderDetailedImplCopyWith<$Res> {
  __$$GetOrderDetailedImplCopyWithImpl(_$GetOrderDetailedImpl _value,
      $Res Function(_$GetOrderDetailedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_$GetOrderDetailedImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$GetOrderDetailedImpl implements _GetOrderDetailed {
  const _$GetOrderDetailedImpl({this.id});

  @override
  final int? id;

  @override
  String toString() {
    return 'AnnouncementEvent.getOrderDetailed(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetOrderDetailedImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetOrderDetailedImplCopyWith<_$GetOrderDetailedImpl> get copyWith =>
      __$$GetOrderDetailedImplCopyWithImpl<_$GetOrderDetailedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? id) getOrderDetailed,
    required TResult Function(int? id) getEquipmentDetailed,
    required TResult Function(int? id) getServiceDetailed,
  }) {
    return getOrderDetailed(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? id)? getOrderDetailed,
    TResult? Function(int? id)? getEquipmentDetailed,
    TResult? Function(int? id)? getServiceDetailed,
  }) {
    return getOrderDetailed?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? id)? getOrderDetailed,
    TResult Function(int? id)? getEquipmentDetailed,
    TResult Function(int? id)? getServiceDetailed,
    required TResult orElse(),
  }) {
    if (getOrderDetailed != null) {
      return getOrderDetailed(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetOrderDetailed value) getOrderDetailed,
    required TResult Function(_GetEquipmentDetailed value) getEquipmentDetailed,
    required TResult Function(_GetServiceDetailed value) getServiceDetailed,
  }) {
    return getOrderDetailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetOrderDetailed value)? getOrderDetailed,
    TResult? Function(_GetEquipmentDetailed value)? getEquipmentDetailed,
    TResult? Function(_GetServiceDetailed value)? getServiceDetailed,
  }) {
    return getOrderDetailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetOrderDetailed value)? getOrderDetailed,
    TResult Function(_GetEquipmentDetailed value)? getEquipmentDetailed,
    TResult Function(_GetServiceDetailed value)? getServiceDetailed,
    required TResult orElse(),
  }) {
    if (getOrderDetailed != null) {
      return getOrderDetailed(this);
    }
    return orElse();
  }
}

abstract class _GetOrderDetailed implements AnnouncementEvent {
  const factory _GetOrderDetailed({final int? id}) = _$GetOrderDetailedImpl;

  @override
  int? get id;
  @override
  @JsonKey(ignore: true)
  _$$GetOrderDetailedImplCopyWith<_$GetOrderDetailedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetEquipmentDetailedImplCopyWith<$Res>
    implements $AnnouncementEventCopyWith<$Res> {
  factory _$$GetEquipmentDetailedImplCopyWith(_$GetEquipmentDetailedImpl value,
          $Res Function(_$GetEquipmentDetailedImpl) then) =
      __$$GetEquipmentDetailedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id});
}

/// @nodoc
class __$$GetEquipmentDetailedImplCopyWithImpl<$Res>
    extends _$AnnouncementEventCopyWithImpl<$Res, _$GetEquipmentDetailedImpl>
    implements _$$GetEquipmentDetailedImplCopyWith<$Res> {
  __$$GetEquipmentDetailedImplCopyWithImpl(_$GetEquipmentDetailedImpl _value,
      $Res Function(_$GetEquipmentDetailedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_$GetEquipmentDetailedImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$GetEquipmentDetailedImpl implements _GetEquipmentDetailed {
  const _$GetEquipmentDetailedImpl({this.id});

  @override
  final int? id;

  @override
  String toString() {
    return 'AnnouncementEvent.getEquipmentDetailed(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetEquipmentDetailedImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetEquipmentDetailedImplCopyWith<_$GetEquipmentDetailedImpl>
      get copyWith =>
          __$$GetEquipmentDetailedImplCopyWithImpl<_$GetEquipmentDetailedImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? id) getOrderDetailed,
    required TResult Function(int? id) getEquipmentDetailed,
    required TResult Function(int? id) getServiceDetailed,
  }) {
    return getEquipmentDetailed(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? id)? getOrderDetailed,
    TResult? Function(int? id)? getEquipmentDetailed,
    TResult? Function(int? id)? getServiceDetailed,
  }) {
    return getEquipmentDetailed?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? id)? getOrderDetailed,
    TResult Function(int? id)? getEquipmentDetailed,
    TResult Function(int? id)? getServiceDetailed,
    required TResult orElse(),
  }) {
    if (getEquipmentDetailed != null) {
      return getEquipmentDetailed(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetOrderDetailed value) getOrderDetailed,
    required TResult Function(_GetEquipmentDetailed value) getEquipmentDetailed,
    required TResult Function(_GetServiceDetailed value) getServiceDetailed,
  }) {
    return getEquipmentDetailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetOrderDetailed value)? getOrderDetailed,
    TResult? Function(_GetEquipmentDetailed value)? getEquipmentDetailed,
    TResult? Function(_GetServiceDetailed value)? getServiceDetailed,
  }) {
    return getEquipmentDetailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetOrderDetailed value)? getOrderDetailed,
    TResult Function(_GetEquipmentDetailed value)? getEquipmentDetailed,
    TResult Function(_GetServiceDetailed value)? getServiceDetailed,
    required TResult orElse(),
  }) {
    if (getEquipmentDetailed != null) {
      return getEquipmentDetailed(this);
    }
    return orElse();
  }
}

abstract class _GetEquipmentDetailed implements AnnouncementEvent {
  const factory _GetEquipmentDetailed({final int? id}) =
      _$GetEquipmentDetailedImpl;

  @override
  int? get id;
  @override
  @JsonKey(ignore: true)
  _$$GetEquipmentDetailedImplCopyWith<_$GetEquipmentDetailedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetServiceDetailedImplCopyWith<$Res>
    implements $AnnouncementEventCopyWith<$Res> {
  factory _$$GetServiceDetailedImplCopyWith(_$GetServiceDetailedImpl value,
          $Res Function(_$GetServiceDetailedImpl) then) =
      __$$GetServiceDetailedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id});
}

/// @nodoc
class __$$GetServiceDetailedImplCopyWithImpl<$Res>
    extends _$AnnouncementEventCopyWithImpl<$Res, _$GetServiceDetailedImpl>
    implements _$$GetServiceDetailedImplCopyWith<$Res> {
  __$$GetServiceDetailedImplCopyWithImpl(_$GetServiceDetailedImpl _value,
      $Res Function(_$GetServiceDetailedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_$GetServiceDetailedImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$GetServiceDetailedImpl implements _GetServiceDetailed {
  const _$GetServiceDetailedImpl({this.id});

  @override
  final int? id;

  @override
  String toString() {
    return 'AnnouncementEvent.getServiceDetailed(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetServiceDetailedImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetServiceDetailedImplCopyWith<_$GetServiceDetailedImpl> get copyWith =>
      __$$GetServiceDetailedImplCopyWithImpl<_$GetServiceDetailedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? id) getOrderDetailed,
    required TResult Function(int? id) getEquipmentDetailed,
    required TResult Function(int? id) getServiceDetailed,
  }) {
    return getServiceDetailed(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? id)? getOrderDetailed,
    TResult? Function(int? id)? getEquipmentDetailed,
    TResult? Function(int? id)? getServiceDetailed,
  }) {
    return getServiceDetailed?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? id)? getOrderDetailed,
    TResult Function(int? id)? getEquipmentDetailed,
    TResult Function(int? id)? getServiceDetailed,
    required TResult orElse(),
  }) {
    if (getServiceDetailed != null) {
      return getServiceDetailed(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetOrderDetailed value) getOrderDetailed,
    required TResult Function(_GetEquipmentDetailed value) getEquipmentDetailed,
    required TResult Function(_GetServiceDetailed value) getServiceDetailed,
  }) {
    return getServiceDetailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetOrderDetailed value)? getOrderDetailed,
    TResult? Function(_GetEquipmentDetailed value)? getEquipmentDetailed,
    TResult? Function(_GetServiceDetailed value)? getServiceDetailed,
  }) {
    return getServiceDetailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetOrderDetailed value)? getOrderDetailed,
    TResult Function(_GetEquipmentDetailed value)? getEquipmentDetailed,
    TResult Function(_GetServiceDetailed value)? getServiceDetailed,
    required TResult orElse(),
  }) {
    if (getServiceDetailed != null) {
      return getServiceDetailed(this);
    }
    return orElse();
  }
}

abstract class _GetServiceDetailed implements AnnouncementEvent {
  const factory _GetServiceDetailed({final int? id}) = _$GetServiceDetailedImpl;

  @override
  int? get id;
  @override
  @JsonKey(ignore: true)
  _$$GetServiceDetailedImplCopyWith<_$GetServiceDetailedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AnnouncementState {
  StateStatus get stateStatus => throw _privateConstructorUsedError;
  OrderDetailedEntity? get detailedOrder => throw _privateConstructorUsedError;
  ServiceDetailedEntity? get detailedService =>
      throw _privateConstructorUsedError;
  EquipmentDetailedEntity? get detailedEquipment =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AnnouncementStateCopyWith<AnnouncementState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnnouncementStateCopyWith<$Res> {
  factory $AnnouncementStateCopyWith(
          AnnouncementState value, $Res Function(AnnouncementState) then) =
      _$AnnouncementStateCopyWithImpl<$Res, AnnouncementState>;
  @useResult
  $Res call(
      {StateStatus stateStatus,
      OrderDetailedEntity? detailedOrder,
      ServiceDetailedEntity? detailedService,
      EquipmentDetailedEntity? detailedEquipment});

  $StateStatusCopyWith<$Res> get stateStatus;
}

/// @nodoc
class _$AnnouncementStateCopyWithImpl<$Res, $Val extends AnnouncementState>
    implements $AnnouncementStateCopyWith<$Res> {
  _$AnnouncementStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stateStatus = null,
    Object? detailedOrder = freezed,
    Object? detailedService = freezed,
    Object? detailedEquipment = freezed,
  }) {
    return _then(_value.copyWith(
      stateStatus: null == stateStatus
          ? _value.stateStatus
          : stateStatus // ignore: cast_nullable_to_non_nullable
              as StateStatus,
      detailedOrder: freezed == detailedOrder
          ? _value.detailedOrder
          : detailedOrder // ignore: cast_nullable_to_non_nullable
              as OrderDetailedEntity?,
      detailedService: freezed == detailedService
          ? _value.detailedService
          : detailedService // ignore: cast_nullable_to_non_nullable
              as ServiceDetailedEntity?,
      detailedEquipment: freezed == detailedEquipment
          ? _value.detailedEquipment
          : detailedEquipment // ignore: cast_nullable_to_non_nullable
              as EquipmentDetailedEntity?,
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
abstract class _$$AnnouncementStateImplCopyWith<$Res>
    implements $AnnouncementStateCopyWith<$Res> {
  factory _$$AnnouncementStateImplCopyWith(_$AnnouncementStateImpl value,
          $Res Function(_$AnnouncementStateImpl) then) =
      __$$AnnouncementStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {StateStatus stateStatus,
      OrderDetailedEntity? detailedOrder,
      ServiceDetailedEntity? detailedService,
      EquipmentDetailedEntity? detailedEquipment});

  @override
  $StateStatusCopyWith<$Res> get stateStatus;
}

/// @nodoc
class __$$AnnouncementStateImplCopyWithImpl<$Res>
    extends _$AnnouncementStateCopyWithImpl<$Res, _$AnnouncementStateImpl>
    implements _$$AnnouncementStateImplCopyWith<$Res> {
  __$$AnnouncementStateImplCopyWithImpl(_$AnnouncementStateImpl _value,
      $Res Function(_$AnnouncementStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stateStatus = null,
    Object? detailedOrder = freezed,
    Object? detailedService = freezed,
    Object? detailedEquipment = freezed,
  }) {
    return _then(_$AnnouncementStateImpl(
      stateStatus: null == stateStatus
          ? _value.stateStatus
          : stateStatus // ignore: cast_nullable_to_non_nullable
              as StateStatus,
      detailedOrder: freezed == detailedOrder
          ? _value.detailedOrder
          : detailedOrder // ignore: cast_nullable_to_non_nullable
              as OrderDetailedEntity?,
      detailedService: freezed == detailedService
          ? _value.detailedService
          : detailedService // ignore: cast_nullable_to_non_nullable
              as ServiceDetailedEntity?,
      detailedEquipment: freezed == detailedEquipment
          ? _value.detailedEquipment
          : detailedEquipment // ignore: cast_nullable_to_non_nullable
              as EquipmentDetailedEntity?,
    ));
  }
}

/// @nodoc

class _$AnnouncementStateImpl implements _AnnouncementState {
  const _$AnnouncementStateImpl(
      {required this.stateStatus,
      this.detailedOrder,
      this.detailedService,
      this.detailedEquipment});

  @override
  final StateStatus stateStatus;
  @override
  final OrderDetailedEntity? detailedOrder;
  @override
  final ServiceDetailedEntity? detailedService;
  @override
  final EquipmentDetailedEntity? detailedEquipment;

  @override
  String toString() {
    return 'AnnouncementState(stateStatus: $stateStatus, detailedOrder: $detailedOrder, detailedService: $detailedService, detailedEquipment: $detailedEquipment)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnnouncementStateImpl &&
            (identical(other.stateStatus, stateStatus) ||
                other.stateStatus == stateStatus) &&
            (identical(other.detailedOrder, detailedOrder) ||
                other.detailedOrder == detailedOrder) &&
            (identical(other.detailedService, detailedService) ||
                other.detailedService == detailedService) &&
            (identical(other.detailedEquipment, detailedEquipment) ||
                other.detailedEquipment == detailedEquipment));
  }

  @override
  int get hashCode => Object.hash(runtimeType, stateStatus, detailedOrder,
      detailedService, detailedEquipment);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AnnouncementStateImplCopyWith<_$AnnouncementStateImpl> get copyWith =>
      __$$AnnouncementStateImplCopyWithImpl<_$AnnouncementStateImpl>(
          this, _$identity);
}

abstract class _AnnouncementState implements AnnouncementState {
  const factory _AnnouncementState(
          {required final StateStatus stateStatus,
          final OrderDetailedEntity? detailedOrder,
          final ServiceDetailedEntity? detailedService,
          final EquipmentDetailedEntity? detailedEquipment}) =
      _$AnnouncementStateImpl;

  @override
  StateStatus get stateStatus;
  @override
  OrderDetailedEntity? get detailedOrder;
  @override
  ServiceDetailedEntity? get detailedService;
  @override
  EquipmentDetailedEntity? get detailedEquipment;
  @override
  @JsonKey(ignore: true)
  _$$AnnouncementStateImplCopyWith<_$AnnouncementStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
