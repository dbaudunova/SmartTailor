// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'service_detail_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ServiceDetailModel _$ServiceDetailModelFromJson(Map<String, dynamic> json) {
  return _ServiceDetailModel.fromJson(json);
}

/// @nodoc
mixin _$ServiceDetailModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  int get price => throw _privateConstructorUsedError;
  String get contactInfo => throw _privateConstructorUsedError;
  String get authorImage => throw _privateConstructorUsedError;
  String get authorFullName => throw _privateConstructorUsedError;
  List<String> get serviceImages => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ServiceDetailModelCopyWith<ServiceDetailModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServiceDetailModelCopyWith<$Res> {
  factory $ServiceDetailModelCopyWith(
          ServiceDetailModel value, $Res Function(ServiceDetailModel) then) =
      _$ServiceDetailModelCopyWithImpl<$Res, ServiceDetailModel>;
  @useResult
  $Res call(
      {int id,
      String name,
      String description,
      int price,
      String contactInfo,
      String authorImage,
      String authorFullName,
      List<String> serviceImages});
}

/// @nodoc
class _$ServiceDetailModelCopyWithImpl<$Res, $Val extends ServiceDetailModel>
    implements $ServiceDetailModelCopyWith<$Res> {
  _$ServiceDetailModelCopyWithImpl(this._value, this._then);

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
    Object? serviceImages = null,
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
      serviceImages: null == serviceImages
          ? _value.serviceImages
          : serviceImages // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ServiceDetailModelImplCopyWith<$Res>
    implements $ServiceDetailModelCopyWith<$Res> {
  factory _$$ServiceDetailModelImplCopyWith(_$ServiceDetailModelImpl value,
          $Res Function(_$ServiceDetailModelImpl) then) =
      __$$ServiceDetailModelImplCopyWithImpl<$Res>;
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
      List<String> serviceImages});
}

/// @nodoc
class __$$ServiceDetailModelImplCopyWithImpl<$Res>
    extends _$ServiceDetailModelCopyWithImpl<$Res, _$ServiceDetailModelImpl>
    implements _$$ServiceDetailModelImplCopyWith<$Res> {
  __$$ServiceDetailModelImplCopyWithImpl(_$ServiceDetailModelImpl _value,
      $Res Function(_$ServiceDetailModelImpl) _then)
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
    Object? serviceImages = null,
  }) {
    return _then(_$ServiceDetailModelImpl(
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
      serviceImages: null == serviceImages
          ? _value._serviceImages
          : serviceImages // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ServiceDetailModelImpl implements _ServiceDetailModel {
  _$ServiceDetailModelImpl(
      {required this.id,
      required this.name,
      required this.description,
      required this.price,
      required this.contactInfo,
      required this.authorImage,
      required this.authorFullName,
      required final List<String> serviceImages})
      : _serviceImages = serviceImages;

  factory _$ServiceDetailModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ServiceDetailModelImplFromJson(json);

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
  final List<String> _serviceImages;
  @override
  List<String> get serviceImages {
    if (_serviceImages is EqualUnmodifiableListView) return _serviceImages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_serviceImages);
  }

  @override
  String toString() {
    return 'ServiceDetailModel(id: $id, name: $name, description: $description, price: $price, contactInfo: $contactInfo, authorImage: $authorImage, authorFullName: $authorFullName, serviceImages: $serviceImages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServiceDetailModelImpl &&
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
                .equals(other._serviceImages, _serviceImages));
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
      const DeepCollectionEquality().hash(_serviceImages));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ServiceDetailModelImplCopyWith<_$ServiceDetailModelImpl> get copyWith =>
      __$$ServiceDetailModelImplCopyWithImpl<_$ServiceDetailModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ServiceDetailModelImplToJson(
      this,
    );
  }
}

abstract class _ServiceDetailModel implements ServiceDetailModel {
  factory _ServiceDetailModel(
      {required final int id,
      required final String name,
      required final String description,
      required final int price,
      required final String contactInfo,
      required final String authorImage,
      required final String authorFullName,
      required final List<String> serviceImages}) = _$ServiceDetailModelImpl;

  factory _ServiceDetailModel.fromJson(Map<String, dynamic> json) =
      _$ServiceDetailModelImpl.fromJson;

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
  List<String> get serviceImages;
  @override
  @JsonKey(ignore: true)
  _$$ServiceDetailModelImplCopyWith<_$ServiceDetailModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
