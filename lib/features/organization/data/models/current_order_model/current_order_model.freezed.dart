// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'current_order_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CurrentOrderModel _$CurrentOrderModelFromJson(Map<String, dynamic> json) {
  return _CurrentOrderModel.fromJson(json);
}

/// @nodoc
mixin _$CurrentOrderModel {
  int? get id => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  double? get price => throw _privateConstructorUsedError;
  @OrderStatusConverter()
  OrderStatus get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CurrentOrderModelCopyWith<CurrentOrderModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrentOrderModelCopyWith<$Res> {
  factory $CurrentOrderModelCopyWith(
          CurrentOrderModel value, $Res Function(CurrentOrderModel) then) =
      _$CurrentOrderModelCopyWithImpl<$Res, CurrentOrderModel>;
  @useResult
  $Res call(
      {int? id,
      String? imageUrl,
      String? name,
      String? description,
      double? price,
      @OrderStatusConverter() OrderStatus status});
}

/// @nodoc
class _$CurrentOrderModelCopyWithImpl<$Res, $Val extends CurrentOrderModel>
    implements $CurrentOrderModelCopyWith<$Res> {
  _$CurrentOrderModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? imageUrl = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? price = freezed,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as OrderStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CurrentOrderModelImplCopyWith<$Res>
    implements $CurrentOrderModelCopyWith<$Res> {
  factory _$$CurrentOrderModelImplCopyWith(_$CurrentOrderModelImpl value,
          $Res Function(_$CurrentOrderModelImpl) then) =
      __$$CurrentOrderModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? imageUrl,
      String? name,
      String? description,
      double? price,
      @OrderStatusConverter() OrderStatus status});
}

/// @nodoc
class __$$CurrentOrderModelImplCopyWithImpl<$Res>
    extends _$CurrentOrderModelCopyWithImpl<$Res, _$CurrentOrderModelImpl>
    implements _$$CurrentOrderModelImplCopyWith<$Res> {
  __$$CurrentOrderModelImplCopyWithImpl(_$CurrentOrderModelImpl _value,
      $Res Function(_$CurrentOrderModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? imageUrl = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? price = freezed,
    Object? status = null,
  }) {
    return _then(_$CurrentOrderModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as OrderStatus,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CurrentOrderModelImpl implements _CurrentOrderModel {
  _$CurrentOrderModelImpl(
      {required this.id,
      required this.imageUrl,
      required this.name,
      required this.description,
      required this.price,
      @OrderStatusConverter() required this.status});

  factory _$CurrentOrderModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CurrentOrderModelImplFromJson(json);

  @override
  final int? id;
  @override
  final String? imageUrl;
  @override
  final String? name;
  @override
  final String? description;
  @override
  final double? price;
  @override
  @OrderStatusConverter()
  final OrderStatus status;

  @override
  String toString() {
    return 'CurrentOrderModel(id: $id, imageUrl: $imageUrl, name: $name, description: $description, price: $price, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CurrentOrderModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, imageUrl, name, description, price, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CurrentOrderModelImplCopyWith<_$CurrentOrderModelImpl> get copyWith =>
      __$$CurrentOrderModelImplCopyWithImpl<_$CurrentOrderModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CurrentOrderModelImplToJson(
      this,
    );
  }
}

abstract class _CurrentOrderModel implements CurrentOrderModel {
  factory _CurrentOrderModel(
          {required final int? id,
          required final String? imageUrl,
          required final String? name,
          required final String? description,
          required final double? price,
          @OrderStatusConverter() required final OrderStatus status}) =
      _$CurrentOrderModelImpl;

  factory _CurrentOrderModel.fromJson(Map<String, dynamic> json) =
      _$CurrentOrderModelImpl.fromJson;

  @override
  int? get id;
  @override
  String? get imageUrl;
  @override
  String? get name;
  @override
  String? get description;
  @override
  double? get price;
  @override
  @OrderStatusConverter()
  OrderStatus get status;
  @override
  @JsonKey(ignore: true)
  _$$CurrentOrderModelImplCopyWith<_$CurrentOrderModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
