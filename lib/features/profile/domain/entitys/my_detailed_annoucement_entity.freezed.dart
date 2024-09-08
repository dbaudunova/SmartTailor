// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_detailed_annoucement_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MyDetailedAnnounceEntity _$MyDetailedAnnounceEntityFromJson(
    Map<String, dynamic> json) {
  return _MyDetailedAnnounceEntity.fromJson(json);
}

/// @nodoc
mixin _$MyDetailedAnnounceEntity {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  String get contactInfo => throw _privateConstructorUsedError;
  String get authorImage => throw _privateConstructorUsedError;
  String get authorFullName => throw _privateConstructorUsedError;
  List<String> get images => throw _privateConstructorUsedError;
  String? get dateOfExecution => throw _privateConstructorUsedError;
  String? get ordersStatus => throw _privateConstructorUsedError;
  List<OrderItems>? get orderItems => throw _privateConstructorUsedError;
  List<OrderCandidates>? get orderCandidates =>
      throw _privateConstructorUsedError;
  OrganizationExecutor? get executor => throw _privateConstructorUsedError;
  List<EquipmentBuyers>? get equipmentBuyers =>
      throw _privateConstructorUsedError;
  List<EquipmentBuyers>? get serviceApplicants =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MyDetailedAnnounceEntityCopyWith<MyDetailedAnnounceEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyDetailedAnnounceEntityCopyWith<$Res> {
  factory $MyDetailedAnnounceEntityCopyWith(MyDetailedAnnounceEntity value,
          $Res Function(MyDetailedAnnounceEntity) then) =
      _$MyDetailedAnnounceEntityCopyWithImpl<$Res, MyDetailedAnnounceEntity>;
  @useResult
  $Res call(
      {int id,
      String name,
      String description,
      double price,
      String contactInfo,
      String authorImage,
      String authorFullName,
      List<String> images,
      String? dateOfExecution,
      String? ordersStatus,
      List<OrderItems>? orderItems,
      List<OrderCandidates>? orderCandidates,
      OrganizationExecutor? executor,
      List<EquipmentBuyers>? equipmentBuyers,
      List<EquipmentBuyers>? serviceApplicants});
}

/// @nodoc
class _$MyDetailedAnnounceEntityCopyWithImpl<$Res,
        $Val extends MyDetailedAnnounceEntity>
    implements $MyDetailedAnnounceEntityCopyWith<$Res> {
  _$MyDetailedAnnounceEntityCopyWithImpl(this._value, this._then);

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
    Object? images = null,
    Object? dateOfExecution = freezed,
    Object? ordersStatus = freezed,
    Object? orderItems = freezed,
    Object? orderCandidates = freezed,
    Object? executor = freezed,
    Object? equipmentBuyers = freezed,
    Object? serviceApplicants = freezed,
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
              as double,
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
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>,
      dateOfExecution: freezed == dateOfExecution
          ? _value.dateOfExecution
          : dateOfExecution // ignore: cast_nullable_to_non_nullable
              as String?,
      ordersStatus: freezed == ordersStatus
          ? _value.ordersStatus
          : ordersStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      orderItems: freezed == orderItems
          ? _value.orderItems
          : orderItems // ignore: cast_nullable_to_non_nullable
              as List<OrderItems>?,
      orderCandidates: freezed == orderCandidates
          ? _value.orderCandidates
          : orderCandidates // ignore: cast_nullable_to_non_nullable
              as List<OrderCandidates>?,
      executor: freezed == executor
          ? _value.executor
          : executor // ignore: cast_nullable_to_non_nullable
              as OrganizationExecutor?,
      equipmentBuyers: freezed == equipmentBuyers
          ? _value.equipmentBuyers
          : equipmentBuyers // ignore: cast_nullable_to_non_nullable
              as List<EquipmentBuyers>?,
      serviceApplicants: freezed == serviceApplicants
          ? _value.serviceApplicants
          : serviceApplicants // ignore: cast_nullable_to_non_nullable
              as List<EquipmentBuyers>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MyDetailedAnnounceEntityImplCopyWith<$Res>
    implements $MyDetailedAnnounceEntityCopyWith<$Res> {
  factory _$$MyDetailedAnnounceEntityImplCopyWith(
          _$MyDetailedAnnounceEntityImpl value,
          $Res Function(_$MyDetailedAnnounceEntityImpl) then) =
      __$$MyDetailedAnnounceEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String description,
      double price,
      String contactInfo,
      String authorImage,
      String authorFullName,
      List<String> images,
      String? dateOfExecution,
      String? ordersStatus,
      List<OrderItems>? orderItems,
      List<OrderCandidates>? orderCandidates,
      OrganizationExecutor? executor,
      List<EquipmentBuyers>? equipmentBuyers,
      List<EquipmentBuyers>? serviceApplicants});
}

/// @nodoc
class __$$MyDetailedAnnounceEntityImplCopyWithImpl<$Res>
    extends _$MyDetailedAnnounceEntityCopyWithImpl<$Res,
        _$MyDetailedAnnounceEntityImpl>
    implements _$$MyDetailedAnnounceEntityImplCopyWith<$Res> {
  __$$MyDetailedAnnounceEntityImplCopyWithImpl(
      _$MyDetailedAnnounceEntityImpl _value,
      $Res Function(_$MyDetailedAnnounceEntityImpl) _then)
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
    Object? images = null,
    Object? dateOfExecution = freezed,
    Object? ordersStatus = freezed,
    Object? orderItems = freezed,
    Object? orderCandidates = freezed,
    Object? executor = freezed,
    Object? equipmentBuyers = freezed,
    Object? serviceApplicants = freezed,
  }) {
    return _then(_$MyDetailedAnnounceEntityImpl(
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
              as double,
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
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>,
      dateOfExecution: freezed == dateOfExecution
          ? _value.dateOfExecution
          : dateOfExecution // ignore: cast_nullable_to_non_nullable
              as String?,
      ordersStatus: freezed == ordersStatus
          ? _value.ordersStatus
          : ordersStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      orderItems: freezed == orderItems
          ? _value._orderItems
          : orderItems // ignore: cast_nullable_to_non_nullable
              as List<OrderItems>?,
      orderCandidates: freezed == orderCandidates
          ? _value._orderCandidates
          : orderCandidates // ignore: cast_nullable_to_non_nullable
              as List<OrderCandidates>?,
      executor: freezed == executor
          ? _value.executor
          : executor // ignore: cast_nullable_to_non_nullable
              as OrganizationExecutor?,
      equipmentBuyers: freezed == equipmentBuyers
          ? _value._equipmentBuyers
          : equipmentBuyers // ignore: cast_nullable_to_non_nullable
              as List<EquipmentBuyers>?,
      serviceApplicants: freezed == serviceApplicants
          ? _value._serviceApplicants
          : serviceApplicants // ignore: cast_nullable_to_non_nullable
              as List<EquipmentBuyers>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MyDetailedAnnounceEntityImpl implements _MyDetailedAnnounceEntity {
  const _$MyDetailedAnnounceEntityImpl(
      {required this.id,
      required this.name,
      required this.description,
      required this.price,
      required this.contactInfo,
      required this.authorImage,
      required this.authorFullName,
      required final List<String> images,
      this.dateOfExecution,
      this.ordersStatus,
      final List<OrderItems>? orderItems,
      final List<OrderCandidates>? orderCandidates,
      this.executor,
      final List<EquipmentBuyers>? equipmentBuyers,
      final List<EquipmentBuyers>? serviceApplicants})
      : _images = images,
        _orderItems = orderItems,
        _orderCandidates = orderCandidates,
        _equipmentBuyers = equipmentBuyers,
        _serviceApplicants = serviceApplicants;

  factory _$MyDetailedAnnounceEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$MyDetailedAnnounceEntityImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String description;
  @override
  final double price;
  @override
  final String contactInfo;
  @override
  final String authorImage;
  @override
  final String authorFullName;
  final List<String> _images;
  @override
  List<String> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  final String? dateOfExecution;
  @override
  final String? ordersStatus;
  final List<OrderItems>? _orderItems;
  @override
  List<OrderItems>? get orderItems {
    final value = _orderItems;
    if (value == null) return null;
    if (_orderItems is EqualUnmodifiableListView) return _orderItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<OrderCandidates>? _orderCandidates;
  @override
  List<OrderCandidates>? get orderCandidates {
    final value = _orderCandidates;
    if (value == null) return null;
    if (_orderCandidates is EqualUnmodifiableListView) return _orderCandidates;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final OrganizationExecutor? executor;
  final List<EquipmentBuyers>? _equipmentBuyers;
  @override
  List<EquipmentBuyers>? get equipmentBuyers {
    final value = _equipmentBuyers;
    if (value == null) return null;
    if (_equipmentBuyers is EqualUnmodifiableListView) return _equipmentBuyers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<EquipmentBuyers>? _serviceApplicants;
  @override
  List<EquipmentBuyers>? get serviceApplicants {
    final value = _serviceApplicants;
    if (value == null) return null;
    if (_serviceApplicants is EqualUnmodifiableListView)
      return _serviceApplicants;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'MyDetailedAnnounceEntity(id: $id, name: $name, description: $description, price: $price, contactInfo: $contactInfo, authorImage: $authorImage, authorFullName: $authorFullName, images: $images, dateOfExecution: $dateOfExecution, ordersStatus: $ordersStatus, orderItems: $orderItems, orderCandidates: $orderCandidates, executor: $executor, equipmentBuyers: $equipmentBuyers, serviceApplicants: $serviceApplicants)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MyDetailedAnnounceEntityImpl &&
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
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.dateOfExecution, dateOfExecution) ||
                other.dateOfExecution == dateOfExecution) &&
            (identical(other.ordersStatus, ordersStatus) ||
                other.ordersStatus == ordersStatus) &&
            const DeepCollectionEquality()
                .equals(other._orderItems, _orderItems) &&
            const DeepCollectionEquality()
                .equals(other._orderCandidates, _orderCandidates) &&
            (identical(other.executor, executor) ||
                other.executor == executor) &&
            const DeepCollectionEquality()
                .equals(other._equipmentBuyers, _equipmentBuyers) &&
            const DeepCollectionEquality()
                .equals(other._serviceApplicants, _serviceApplicants));
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
      const DeepCollectionEquality().hash(_images),
      dateOfExecution,
      ordersStatus,
      const DeepCollectionEquality().hash(_orderItems),
      const DeepCollectionEquality().hash(_orderCandidates),
      executor,
      const DeepCollectionEquality().hash(_equipmentBuyers),
      const DeepCollectionEquality().hash(_serviceApplicants));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MyDetailedAnnounceEntityImplCopyWith<_$MyDetailedAnnounceEntityImpl>
      get copyWith => __$$MyDetailedAnnounceEntityImplCopyWithImpl<
          _$MyDetailedAnnounceEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MyDetailedAnnounceEntityImplToJson(
      this,
    );
  }
}

abstract class _MyDetailedAnnounceEntity implements MyDetailedAnnounceEntity {
  const factory _MyDetailedAnnounceEntity(
          {required final int id,
          required final String name,
          required final String description,
          required final double price,
          required final String contactInfo,
          required final String authorImage,
          required final String authorFullName,
          required final List<String> images,
          final String? dateOfExecution,
          final String? ordersStatus,
          final List<OrderItems>? orderItems,
          final List<OrderCandidates>? orderCandidates,
          final OrganizationExecutor? executor,
          final List<EquipmentBuyers>? equipmentBuyers,
          final List<EquipmentBuyers>? serviceApplicants}) =
      _$MyDetailedAnnounceEntityImpl;

  factory _MyDetailedAnnounceEntity.fromJson(Map<String, dynamic> json) =
      _$MyDetailedAnnounceEntityImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get description;
  @override
  double get price;
  @override
  String get contactInfo;
  @override
  String get authorImage;
  @override
  String get authorFullName;
  @override
  List<String> get images;
  @override
  String? get dateOfExecution;
  @override
  String? get ordersStatus;
  @override
  List<OrderItems>? get orderItems;
  @override
  List<OrderCandidates>? get orderCandidates;
  @override
  OrganizationExecutor? get executor;
  @override
  List<EquipmentBuyers>? get equipmentBuyers;
  @override
  List<EquipmentBuyers>? get serviceApplicants;
  @override
  @JsonKey(ignore: true)
  _$$MyDetailedAnnounceEntityImplCopyWith<_$MyDetailedAnnounceEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
