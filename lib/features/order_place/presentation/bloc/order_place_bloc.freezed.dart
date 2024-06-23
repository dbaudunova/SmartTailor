// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_place_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$OrderPlaceEvent {
  String get type => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String type) showFields,
    required TResult Function(String type) addType,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String type)? showFields,
    TResult? Function(String type)? addType,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String type)? showFields,
    TResult Function(String type)? addType,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ShowFields value) showFields,
    required TResult Function(_AddType value) addType,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ShowFields value)? showFields,
    TResult? Function(_AddType value)? addType,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ShowFields value)? showFields,
    TResult Function(_AddType value)? addType,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OrderPlaceEventCopyWith<OrderPlaceEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderPlaceEventCopyWith<$Res> {
  factory $OrderPlaceEventCopyWith(
          OrderPlaceEvent value, $Res Function(OrderPlaceEvent) then) =
      _$OrderPlaceEventCopyWithImpl<$Res, OrderPlaceEvent>;
  @useResult
  $Res call({String type});
}

/// @nodoc
class _$OrderPlaceEventCopyWithImpl<$Res, $Val extends OrderPlaceEvent>
    implements $OrderPlaceEventCopyWith<$Res> {
  _$OrderPlaceEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ShowFieldsImplCopyWith<$Res>
    implements $OrderPlaceEventCopyWith<$Res> {
  factory _$$ShowFieldsImplCopyWith(
          _$ShowFieldsImpl value, $Res Function(_$ShowFieldsImpl) then) =
      __$$ShowFieldsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String type});
}

/// @nodoc
class __$$ShowFieldsImplCopyWithImpl<$Res>
    extends _$OrderPlaceEventCopyWithImpl<$Res, _$ShowFieldsImpl>
    implements _$$ShowFieldsImplCopyWith<$Res> {
  __$$ShowFieldsImplCopyWithImpl(
      _$ShowFieldsImpl _value, $Res Function(_$ShowFieldsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
  }) {
    return _then(_$ShowFieldsImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ShowFieldsImpl implements _ShowFields {
  const _$ShowFieldsImpl({required this.type});

  @override
  final String type;

  @override
  String toString() {
    return 'OrderPlaceEvent.showFields(type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShowFieldsImpl &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShowFieldsImplCopyWith<_$ShowFieldsImpl> get copyWith =>
      __$$ShowFieldsImplCopyWithImpl<_$ShowFieldsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String type) showFields,
    required TResult Function(String type) addType,
  }) {
    return showFields(type);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String type)? showFields,
    TResult? Function(String type)? addType,
  }) {
    return showFields?.call(type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String type)? showFields,
    TResult Function(String type)? addType,
    required TResult orElse(),
  }) {
    if (showFields != null) {
      return showFields(type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ShowFields value) showFields,
    required TResult Function(_AddType value) addType,
  }) {
    return showFields(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ShowFields value)? showFields,
    TResult? Function(_AddType value)? addType,
  }) {
    return showFields?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ShowFields value)? showFields,
    TResult Function(_AddType value)? addType,
    required TResult orElse(),
  }) {
    if (showFields != null) {
      return showFields(this);
    }
    return orElse();
  }
}

abstract class _ShowFields implements OrderPlaceEvent {
  const factory _ShowFields({required final String type}) = _$ShowFieldsImpl;

  @override
  String get type;
  @override
  @JsonKey(ignore: true)
  _$$ShowFieldsImplCopyWith<_$ShowFieldsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddTypeImplCopyWith<$Res>
    implements $OrderPlaceEventCopyWith<$Res> {
  factory _$$AddTypeImplCopyWith(
          _$AddTypeImpl value, $Res Function(_$AddTypeImpl) then) =
      __$$AddTypeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String type});
}

/// @nodoc
class __$$AddTypeImplCopyWithImpl<$Res>
    extends _$OrderPlaceEventCopyWithImpl<$Res, _$AddTypeImpl>
    implements _$$AddTypeImplCopyWith<$Res> {
  __$$AddTypeImplCopyWithImpl(
      _$AddTypeImpl _value, $Res Function(_$AddTypeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
  }) {
    return _then(_$AddTypeImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddTypeImpl implements _AddType {
  const _$AddTypeImpl({required this.type});

  @override
  final String type;

  @override
  String toString() {
    return 'OrderPlaceEvent.addType(type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddTypeImpl &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddTypeImplCopyWith<_$AddTypeImpl> get copyWith =>
      __$$AddTypeImplCopyWithImpl<_$AddTypeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String type) showFields,
    required TResult Function(String type) addType,
  }) {
    return addType(type);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String type)? showFields,
    TResult? Function(String type)? addType,
  }) {
    return addType?.call(type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String type)? showFields,
    TResult Function(String type)? addType,
    required TResult orElse(),
  }) {
    if (addType != null) {
      return addType(type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ShowFields value) showFields,
    required TResult Function(_AddType value) addType,
  }) {
    return addType(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ShowFields value)? showFields,
    TResult? Function(_AddType value)? addType,
  }) {
    return addType?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ShowFields value)? showFields,
    TResult Function(_AddType value)? addType,
    required TResult orElse(),
  }) {
    if (addType != null) {
      return addType(this);
    }
    return orElse();
  }
}

abstract class _AddType implements OrderPlaceEvent {
  const factory _AddType({required final String type}) = _$AddTypeImpl;

  @override
  String get type;
  @override
  @JsonKey(ignore: true)
  _$$AddTypeImplCopyWith<_$AddTypeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$OrderPlaceState {
  StateStatus get stateStatus => throw _privateConstructorUsedError;
  OrderPlaceModel get orderPlaceModel => throw _privateConstructorUsedError;
  bool? get showFields => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OrderPlaceStateCopyWith<OrderPlaceState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderPlaceStateCopyWith<$Res> {
  factory $OrderPlaceStateCopyWith(
          OrderPlaceState value, $Res Function(OrderPlaceState) then) =
      _$OrderPlaceStateCopyWithImpl<$Res, OrderPlaceState>;
  @useResult
  $Res call(
      {StateStatus stateStatus,
      OrderPlaceModel orderPlaceModel,
      bool? showFields});

  $StateStatusCopyWith<$Res> get stateStatus;
  $OrderPlaceModelCopyWith<$Res> get orderPlaceModel;
}

/// @nodoc
class _$OrderPlaceStateCopyWithImpl<$Res, $Val extends OrderPlaceState>
    implements $OrderPlaceStateCopyWith<$Res> {
  _$OrderPlaceStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stateStatus = null,
    Object? orderPlaceModel = null,
    Object? showFields = freezed,
  }) {
    return _then(_value.copyWith(
      stateStatus: null == stateStatus
          ? _value.stateStatus
          : stateStatus // ignore: cast_nullable_to_non_nullable
              as StateStatus,
      orderPlaceModel: null == orderPlaceModel
          ? _value.orderPlaceModel
          : orderPlaceModel // ignore: cast_nullable_to_non_nullable
              as OrderPlaceModel,
      showFields: freezed == showFields
          ? _value.showFields
          : showFields // ignore: cast_nullable_to_non_nullable
              as bool?,
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
  $OrderPlaceModelCopyWith<$Res> get orderPlaceModel {
    return $OrderPlaceModelCopyWith<$Res>(_value.orderPlaceModel, (value) {
      return _then(_value.copyWith(orderPlaceModel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OrderPlaceStateImplCopyWith<$Res>
    implements $OrderPlaceStateCopyWith<$Res> {
  factory _$$OrderPlaceStateImplCopyWith(_$OrderPlaceStateImpl value,
          $Res Function(_$OrderPlaceStateImpl) then) =
      __$$OrderPlaceStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {StateStatus stateStatus,
      OrderPlaceModel orderPlaceModel,
      bool? showFields});

  @override
  $StateStatusCopyWith<$Res> get stateStatus;
  @override
  $OrderPlaceModelCopyWith<$Res> get orderPlaceModel;
}

/// @nodoc
class __$$OrderPlaceStateImplCopyWithImpl<$Res>
    extends _$OrderPlaceStateCopyWithImpl<$Res, _$OrderPlaceStateImpl>
    implements _$$OrderPlaceStateImplCopyWith<$Res> {
  __$$OrderPlaceStateImplCopyWithImpl(
      _$OrderPlaceStateImpl _value, $Res Function(_$OrderPlaceStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stateStatus = null,
    Object? orderPlaceModel = null,
    Object? showFields = freezed,
  }) {
    return _then(_$OrderPlaceStateImpl(
      stateStatus: null == stateStatus
          ? _value.stateStatus
          : stateStatus // ignore: cast_nullable_to_non_nullable
              as StateStatus,
      orderPlaceModel: null == orderPlaceModel
          ? _value.orderPlaceModel
          : orderPlaceModel // ignore: cast_nullable_to_non_nullable
              as OrderPlaceModel,
      showFields: freezed == showFields
          ? _value.showFields
          : showFields // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$OrderPlaceStateImpl implements _OrderPlaceState {
  const _$OrderPlaceStateImpl(
      {required this.stateStatus,
      required this.orderPlaceModel,
      required this.showFields});

  @override
  final StateStatus stateStatus;
  @override
  final OrderPlaceModel orderPlaceModel;
  @override
  final bool? showFields;

  @override
  String toString() {
    return 'OrderPlaceState(stateStatus: $stateStatus, orderPlaceModel: $orderPlaceModel, showFields: $showFields)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderPlaceStateImpl &&
            (identical(other.stateStatus, stateStatus) ||
                other.stateStatus == stateStatus) &&
            (identical(other.orderPlaceModel, orderPlaceModel) ||
                other.orderPlaceModel == orderPlaceModel) &&
            (identical(other.showFields, showFields) ||
                other.showFields == showFields));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, stateStatus, orderPlaceModel, showFields);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderPlaceStateImplCopyWith<_$OrderPlaceStateImpl> get copyWith =>
      __$$OrderPlaceStateImplCopyWithImpl<_$OrderPlaceStateImpl>(
          this, _$identity);
}

abstract class _OrderPlaceState implements OrderPlaceState {
  const factory _OrderPlaceState(
      {required final StateStatus stateStatus,
      required final OrderPlaceModel orderPlaceModel,
      required final bool? showFields}) = _$OrderPlaceStateImpl;

  @override
  StateStatus get stateStatus;
  @override
  OrderPlaceModel get orderPlaceModel;
  @override
  bool? get showFields;
  @override
  @JsonKey(ignore: true)
  _$$OrderPlaceStateImplCopyWith<_$OrderPlaceStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
