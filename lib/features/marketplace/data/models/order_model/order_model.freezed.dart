// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OrderModel _$OrderModelFromJson(Map<String, dynamic> json) {
  return _OrderModel.fromJson(json);
}

/// @nodoc
mixin _$OrderModel {
  int get orderId => throw _privateConstructorUsedError;
  String get orderPhotoUrl => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get orderDescription => throw _privateConstructorUsedError;
  int get price => throw _privateConstructorUsedError;
  String get dateOfException => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderModelCopyWith<OrderModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderModelCopyWith<$Res> {
  factory $OrderModelCopyWith(
          OrderModel value, $Res Function(OrderModel) then) =
      _$OrderModelCopyWithImpl<$Res, OrderModel>;
  @useResult
  $Res call(
      {int orderId,
      String orderPhotoUrl,
      String name,
      String orderDescription,
      int price,
      String dateOfException});
}

/// @nodoc
class _$OrderModelCopyWithImpl<$Res, $Val extends OrderModel>
    implements $OrderModelCopyWith<$Res> {
  _$OrderModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = null,
    Object? orderPhotoUrl = null,
    Object? name = null,
    Object? orderDescription = null,
    Object? price = null,
    Object? dateOfException = null,
  }) {
    return _then(_value.copyWith(
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as int,
      orderPhotoUrl: null == orderPhotoUrl
          ? _value.orderPhotoUrl
          : orderPhotoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      orderDescription: null == orderDescription
          ? _value.orderDescription
          : orderDescription // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      dateOfException: null == dateOfException
          ? _value.dateOfException
          : dateOfException // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OrderModelImplCopyWith<$Res>
    implements $OrderModelCopyWith<$Res> {
  factory _$$OrderModelImplCopyWith(
          _$OrderModelImpl value, $Res Function(_$OrderModelImpl) then) =
      __$$OrderModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int orderId,
      String orderPhotoUrl,
      String name,
      String orderDescription,
      int price,
      String dateOfException});
}

/// @nodoc
class __$$OrderModelImplCopyWithImpl<$Res>
    extends _$OrderModelCopyWithImpl<$Res, _$OrderModelImpl>
    implements _$$OrderModelImplCopyWith<$Res> {
  __$$OrderModelImplCopyWithImpl(
      _$OrderModelImpl _value, $Res Function(_$OrderModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = null,
    Object? orderPhotoUrl = null,
    Object? name = null,
    Object? orderDescription = null,
    Object? price = null,
    Object? dateOfException = null,
  }) {
    return _then(_$OrderModelImpl(
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as int,
      orderPhotoUrl: null == orderPhotoUrl
          ? _value.orderPhotoUrl
          : orderPhotoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      orderDescription: null == orderDescription
          ? _value.orderDescription
          : orderDescription // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      dateOfException: null == dateOfException
          ? _value.dateOfException
          : dateOfException // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderModelImpl implements _OrderModel {
  _$OrderModelImpl(
      {required this.orderId,
      required this.orderPhotoUrl,
      required this.name,
      required this.orderDescription,
      required this.price,
      required this.dateOfException});

  factory _$OrderModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderModelImplFromJson(json);

  @override
  final int orderId;
  @override
  final String orderPhotoUrl;
  @override
  final String name;
  @override
  final String orderDescription;
  @override
  final int price;
  @override
  final String dateOfException;

  @override
  String toString() {
    return 'OrderModel(orderId: $orderId, orderPhotoUrl: $orderPhotoUrl, name: $name, orderDescription: $orderDescription, price: $price, dateOfException: $dateOfException)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderModelImpl &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.orderPhotoUrl, orderPhotoUrl) ||
                other.orderPhotoUrl == orderPhotoUrl) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.orderDescription, orderDescription) ||
                other.orderDescription == orderDescription) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.dateOfException, dateOfException) ||
                other.dateOfException == dateOfException));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, orderId, orderPhotoUrl, name,
      orderDescription, price, dateOfException);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderModelImplCopyWith<_$OrderModelImpl> get copyWith =>
      __$$OrderModelImplCopyWithImpl<_$OrderModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderModelImplToJson(
      this,
    );
  }
}

abstract class _OrderModel implements OrderModel {
  factory _OrderModel(
      {required final int orderId,
      required final String orderPhotoUrl,
      required final String name,
      required final String orderDescription,
      required final int price,
      required final String dateOfException}) = _$OrderModelImpl;

  factory _OrderModel.fromJson(Map<String, dynamic> json) =
      _$OrderModelImpl.fromJson;

  @override
  int get orderId;
  @override
  String get orderPhotoUrl;
  @override
  String get name;
  @override
  String get orderDescription;
  @override
  int get price;
  @override
  String get dateOfException;
  @override
  @JsonKey(ignore: true)
  _$$OrderModelImplCopyWith<_$OrderModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
