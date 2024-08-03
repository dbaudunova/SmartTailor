// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_detail_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OrderDetailModel _$OrderDetailModelFromJson(Map<String, dynamic> json) {
  return _OrderDetailModel.fromJson(json);
}

/// @nodoc
mixin _$OrderDetailModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  int get price => throw _privateConstructorUsedError;
  String get contactInfo => throw _privateConstructorUsedError;
  String get authorImage => throw _privateConstructorUsedError;
  String get authorFullName => throw _privateConstructorUsedError;
  List<String> get orderImages => throw _privateConstructorUsedError;
  String get dateOfExecution => throw _privateConstructorUsedError;
  List<Item> get orderItems => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderDetailModelCopyWith<OrderDetailModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderDetailModelCopyWith<$Res> {
  factory $OrderDetailModelCopyWith(
          OrderDetailModel value, $Res Function(OrderDetailModel) then) =
      _$OrderDetailModelCopyWithImpl<$Res, OrderDetailModel>;
  @useResult
  $Res call(
      {int id,
      String name,
      String description,
      int price,
      String contactInfo,
      String authorImage,
      String authorFullName,
      List<String> orderImages,
      String dateOfExecution,
      List<Item> orderItems});
}

/// @nodoc
class _$OrderDetailModelCopyWithImpl<$Res, $Val extends OrderDetailModel>
    implements $OrderDetailModelCopyWith<$Res> {
  _$OrderDetailModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? price = null,
    Object? contactInfo = null,
    Object? authorImage = null,
    Object? authorFullName = null,
    Object? orderImages = null,
    Object? dateOfExecution = null,
    Object? orderItems = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      contactInfo: null == contactInfo
          ? _value.contactInfo
          : contactInfo // ignore: cast_nullable_to_non_nullable
              as String,
      authorImage: null == authorImage
          ? _value.authorImage
          : authorImage // ignore: cast_nullable_to_non_nullable
              as String,
      authorFullName: null == authorFullName
          ? _value.authorFullName
          : authorFullName // ignore: cast_nullable_to_non_nullable
              as String,
      orderImages: null == orderImages
          ? _value.orderImages
          : orderImages // ignore: cast_nullable_to_non_nullable
              as List<String>,
      dateOfExecution: null == dateOfExecution
          ? _value.dateOfExecution
          : dateOfExecution // ignore: cast_nullable_to_non_nullable
              as String,
      orderItems: null == orderItems
          ? _value.orderItems
          : orderItems // ignore: cast_nullable_to_non_nullable
              as List<Item>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OrderDetailModelImplCopyWith<$Res>
    implements $OrderDetailModelCopyWith<$Res> {
  factory _$$OrderDetailModelImplCopyWith(_$OrderDetailModelImpl value,
          $Res Function(_$OrderDetailModelImpl) then) =
      __$$OrderDetailModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String description,
      int price,
      String contactInfo,
      String authorImage,
      String authorFullName,
      List<String> orderImages,
      String dateOfExecution,
      List<Item> orderItems});
}

/// @nodoc
class __$$OrderDetailModelImplCopyWithImpl<$Res>
    extends _$OrderDetailModelCopyWithImpl<$Res, _$OrderDetailModelImpl>
    implements _$$OrderDetailModelImplCopyWith<$Res> {
  __$$OrderDetailModelImplCopyWithImpl(_$OrderDetailModelImpl _value,
      $Res Function(_$OrderDetailModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? price = null,
    Object? contactInfo = null,
    Object? authorImage = null,
    Object? authorFullName = null,
    Object? orderImages = null,
    Object? dateOfExecution = null,
    Object? orderItems = null,
  }) {
    return _then(_$OrderDetailModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      contactInfo: null == contactInfo
          ? _value.contactInfo
          : contactInfo // ignore: cast_nullable_to_non_nullable
              as String,
      authorImage: null == authorImage
          ? _value.authorImage
          : authorImage // ignore: cast_nullable_to_non_nullable
              as String,
      authorFullName: null == authorFullName
          ? _value.authorFullName
          : authorFullName // ignore: cast_nullable_to_non_nullable
              as String,
      orderImages: null == orderImages
          ? _value._orderImages
          : orderImages // ignore: cast_nullable_to_non_nullable
              as List<String>,
      dateOfExecution: null == dateOfExecution
          ? _value.dateOfExecution
          : dateOfExecution // ignore: cast_nullable_to_non_nullable
              as String,
      orderItems: null == orderItems
          ? _value._orderItems
          : orderItems // ignore: cast_nullable_to_non_nullable
              as List<Item>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderDetailModelImpl implements _OrderDetailModel {
  _$OrderDetailModelImpl(
      {required this.id,
      required this.name,
      required this.description,
      required this.price,
      required this.contactInfo,
      required this.authorImage,
      required this.authorFullName,
      required final List<String> orderImages,
      required this.dateOfExecution,
      required final List<Item> orderItems})
      : _orderImages = orderImages,
        _orderItems = orderItems;

  factory _$OrderDetailModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderDetailModelImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String description;
  @override
  final int price;
  @override
  final String contactInfo;
  @override
  final String authorImage;
  @override
  final String authorFullName;
  final List<String> _orderImages;
  @override
  List<String> get orderImages {
    if (_orderImages is EqualUnmodifiableListView) return _orderImages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_orderImages);
  }

  @override
  final String dateOfExecution;
  final List<Item> _orderItems;
  @override
  List<Item> get orderItems {
    if (_orderItems is EqualUnmodifiableListView) return _orderItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_orderItems);
  }

  @override
  String toString() {
    return 'OrderDetailModel(id: $id, name: $name, description: $description, price: $price, contactInfo: $contactInfo, authorImage: $authorImage, authorFullName: $authorFullName, orderImages: $orderImages, dateOfExecution: $dateOfExecution, orderItems: $orderItems)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderDetailModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.contactInfo, contactInfo) ||
                other.contactInfo == contactInfo) &&
            (identical(other.authorImage, authorImage) ||
                other.authorImage == authorImage) &&
            (identical(other.authorFullName, authorFullName) ||
                other.authorFullName == authorFullName) &&
            const DeepCollectionEquality()
                .equals(other._orderImages, _orderImages) &&
            (identical(other.dateOfExecution, dateOfExecution) ||
                other.dateOfExecution == dateOfExecution) &&
            const DeepCollectionEquality()
                .equals(other._orderItems, _orderItems));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      description,
      price,
      contactInfo,
      authorImage,
      authorFullName,
      const DeepCollectionEquality().hash(_orderImages),
      dateOfExecution,
      const DeepCollectionEquality().hash(_orderItems));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderDetailModelImplCopyWith<_$OrderDetailModelImpl> get copyWith =>
      __$$OrderDetailModelImplCopyWithImpl<_$OrderDetailModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderDetailModelImplToJson(
      this,
    );
  }
}

abstract class _OrderDetailModel implements OrderDetailModel {
  factory _OrderDetailModel(
      {required final int id,
      required final String name,
      required final String description,
      required final int price,
      required final String contactInfo,
      required final String authorImage,
      required final String authorFullName,
      required final List<String> orderImages,
      required final String dateOfExecution,
      required final List<Item> orderItems}) = _$OrderDetailModelImpl;

  factory _OrderDetailModel.fromJson(Map<String, dynamic> json) =
      _$OrderDetailModelImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get description;
  @override
  int get price;
  @override
  String get contactInfo;
  @override
  String get authorImage;
  @override
  String get authorFullName;
  @override
  List<String> get orderImages;
  @override
  String get dateOfExecution;
  @override
  List<Item> get orderItems;
  @override
  @JsonKey(ignore: true)
  _$$OrderDetailModelImplCopyWith<_$OrderDetailModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
