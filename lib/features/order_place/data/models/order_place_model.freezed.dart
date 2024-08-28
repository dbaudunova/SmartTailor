// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_place_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OrderPlaceModel _$OrderPlaceModelFromJson(Map<String, dynamic> json) {
  return _OrderPlaceModel.fromJson(json);
}

/// @nodoc
mixin _$OrderPlaceModel {
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  List<String> get images => throw _privateConstructorUsedError;
  Set<Item> get items => throw _privateConstructorUsedError;
  String? get dateOfExecution => throw _privateConstructorUsedError;
  String get contactInfo => throw _privateConstructorUsedError;
  String? get price => throw _privateConstructorUsedError;
  int? get quantity => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderPlaceModelCopyWith<OrderPlaceModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderPlaceModelCopyWith<$Res> {
  factory $OrderPlaceModelCopyWith(
          OrderPlaceModel value, $Res Function(OrderPlaceModel) then) =
      _$OrderPlaceModelCopyWithImpl<$Res, OrderPlaceModel>;
  @useResult
  $Res call(
      {String name,
      String description,
      List<String> images,
      Set<Item> items,
      String? dateOfExecution,
      String contactInfo,
      String? price,
      int? quantity});
}

/// @nodoc
class _$OrderPlaceModelCopyWithImpl<$Res, $Val extends OrderPlaceModel>
    implements $OrderPlaceModelCopyWith<$Res> {
  _$OrderPlaceModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
    Object? images = null,
    Object? items = null,
    Object? dateOfExecution = freezed,
    Object? contactInfo = null,
    Object? price = freezed,
    Object? quantity = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as Set<Item>,
      dateOfExecution: freezed == dateOfExecution
          ? _value.dateOfExecution
          : dateOfExecution // ignore: cast_nullable_to_non_nullable
              as String?,
      contactInfo: null == contactInfo
          ? _value.contactInfo
          : contactInfo // ignore: cast_nullable_to_non_nullable
              as String,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OrderPlaceModelImplCopyWith<$Res>
    implements $OrderPlaceModelCopyWith<$Res> {
  factory _$$OrderPlaceModelImplCopyWith(_$OrderPlaceModelImpl value,
          $Res Function(_$OrderPlaceModelImpl) then) =
      __$$OrderPlaceModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String description,
      List<String> images,
      Set<Item> items,
      String? dateOfExecution,
      String contactInfo,
      String? price,
      int? quantity});
}

/// @nodoc
class __$$OrderPlaceModelImplCopyWithImpl<$Res>
    extends _$OrderPlaceModelCopyWithImpl<$Res, _$OrderPlaceModelImpl>
    implements _$$OrderPlaceModelImplCopyWith<$Res> {
  __$$OrderPlaceModelImplCopyWithImpl(
      _$OrderPlaceModelImpl _value, $Res Function(_$OrderPlaceModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
    Object? images = null,
    Object? items = null,
    Object? dateOfExecution = freezed,
    Object? contactInfo = null,
    Object? price = freezed,
    Object? quantity = freezed,
  }) {
    return _then(_$OrderPlaceModelImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as Set<Item>,
      dateOfExecution: freezed == dateOfExecution
          ? _value.dateOfExecution
          : dateOfExecution // ignore: cast_nullable_to_non_nullable
              as String?,
      contactInfo: null == contactInfo
          ? _value.contactInfo
          : contactInfo // ignore: cast_nullable_to_non_nullable
              as String,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderPlaceModelImpl implements _OrderPlaceModel {
  _$OrderPlaceModelImpl(
      {required this.name,
      required this.description,
      required final List<String> images,
      required final Set<Item> items,
      required this.dateOfExecution,
      required this.contactInfo,
      required this.price,
      required this.quantity})
      : _images = images,
        _items = items;

  factory _$OrderPlaceModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderPlaceModelImplFromJson(json);

  @override
  final String name;
  @override
  final String description;
  final List<String> _images;
  @override
  List<String> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  final Set<Item> _items;
  @override
  Set<Item> get items {
    if (_items is EqualUnmodifiableSetView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_items);
  }

  @override
  final String? dateOfExecution;
  @override
  final String contactInfo;
  @override
  final String? price;
  @override
  final int? quantity;

  @override
  String toString() {
    return 'OrderPlaceModel(name: $name, description: $description, images: $images, items: $items, dateOfExecution: $dateOfExecution, contactInfo: $contactInfo, price: $price, quantity: $quantity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderPlaceModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.dateOfExecution, dateOfExecution) ||
                other.dateOfExecution == dateOfExecution) &&
            (identical(other.contactInfo, contactInfo) ||
                other.contactInfo == contactInfo) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      description,
      const DeepCollectionEquality().hash(_images),
      const DeepCollectionEquality().hash(_items),
      dateOfExecution,
      contactInfo,
      price,
      quantity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderPlaceModelImplCopyWith<_$OrderPlaceModelImpl> get copyWith =>
      __$$OrderPlaceModelImplCopyWithImpl<_$OrderPlaceModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderPlaceModelImplToJson(
      this,
    );
  }
}

abstract class _OrderPlaceModel implements OrderPlaceModel {
  factory _OrderPlaceModel(
      {required final String name,
      required final String description,
      required final List<String> images,
      required final Set<Item> items,
      required final String? dateOfExecution,
      required final String contactInfo,
      required final String? price,
      required final int? quantity}) = _$OrderPlaceModelImpl;

  factory _OrderPlaceModel.fromJson(Map<String, dynamic> json) =
      _$OrderPlaceModelImpl.fromJson;

  @override
  String get name;
  @override
  String get description;
  @override
  List<String> get images;
  @override
  Set<Item> get items;
  @override
  String? get dateOfExecution;
  @override
  String get contactInfo;
  @override
  String? get price;
  @override
  int? get quantity;
  @override
  @JsonKey(ignore: true)
  _$$OrderPlaceModelImplCopyWith<_$OrderPlaceModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Item _$ItemFromJson(Map<String, dynamic> json) {
  return _Item.fromJson(json);
}

/// @nodoc
mixin _$Item {
  String get size => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ItemCopyWith<Item> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemCopyWith<$Res> {
  factory $ItemCopyWith(Item value, $Res Function(Item) then) =
      _$ItemCopyWithImpl<$Res, Item>;
  @useResult
  $Res call({String size, int quantity});
}

/// @nodoc
class _$ItemCopyWithImpl<$Res, $Val extends Item>
    implements $ItemCopyWith<$Res> {
  _$ItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? size = null,
    Object? quantity = null,
  }) {
    return _then(_value.copyWith(
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ItemImplCopyWith<$Res> implements $ItemCopyWith<$Res> {
  factory _$$ItemImplCopyWith(
          _$ItemImpl value, $Res Function(_$ItemImpl) then) =
      __$$ItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String size, int quantity});
}

/// @nodoc
class __$$ItemImplCopyWithImpl<$Res>
    extends _$ItemCopyWithImpl<$Res, _$ItemImpl>
    implements _$$ItemImplCopyWith<$Res> {
  __$$ItemImplCopyWithImpl(_$ItemImpl _value, $Res Function(_$ItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? size = null,
    Object? quantity = null,
  }) {
    return _then(_$ItemImpl(
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ItemImpl implements _Item {
  _$ItemImpl({required this.size, required this.quantity});

  factory _$ItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$ItemImplFromJson(json);

  @override
  final String size;
  @override
  final int quantity;

  @override
  String toString() {
    return 'Item(size: $size, quantity: $quantity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ItemImpl &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, size, quantity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ItemImplCopyWith<_$ItemImpl> get copyWith =>
      __$$ItemImplCopyWithImpl<_$ItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ItemImplToJson(
      this,
    );
  }
}

abstract class _Item implements Item {
  factory _Item({required final String size, required final int quantity}) =
      _$ItemImpl;

  factory _Item.fromJson(Map<String, dynamic> json) = _$ItemImpl.fromJson;

  @override
  String get size;
  @override
  int get quantity;
  @override
  @JsonKey(ignore: true)
  _$$ItemImplCopyWith<_$ItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
