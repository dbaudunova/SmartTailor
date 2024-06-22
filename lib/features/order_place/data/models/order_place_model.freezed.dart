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
  String get type => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  List<String> get images => throw _privateConstructorUsedError;
  List<String> get sizes => throw _privateConstructorUsedError;
  String get date => throw _privateConstructorUsedError;
  String get contactInfo => throw _privateConstructorUsedError;
  int? get summ => throw _privateConstructorUsedError;

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
      {String type,
      String name,
      String description,
      List<String> images,
      List<String> sizes,
      String date,
      String contactInfo,
      int? summ});
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
    Object? type = null,
    Object? name = null,
    Object? description = null,
    Object? images = null,
    Object? sizes = null,
    Object? date = null,
    Object? contactInfo = null,
    Object? summ = freezed,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
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
      sizes: null == sizes
          ? _value.sizes
          : sizes // ignore: cast_nullable_to_non_nullable
              as List<String>,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      contactInfo: null == contactInfo
          ? _value.contactInfo
          : contactInfo // ignore: cast_nullable_to_non_nullable
              as String,
      summ: freezed == summ
          ? _value.summ
          : summ // ignore: cast_nullable_to_non_nullable
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
      {String type,
      String name,
      String description,
      List<String> images,
      List<String> sizes,
      String date,
      String contactInfo,
      int? summ});
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
    Object? type = null,
    Object? name = null,
    Object? description = null,
    Object? images = null,
    Object? sizes = null,
    Object? date = null,
    Object? contactInfo = null,
    Object? summ = freezed,
  }) {
    return _then(_$OrderPlaceModelImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
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
      sizes: null == sizes
          ? _value._sizes
          : sizes // ignore: cast_nullable_to_non_nullable
              as List<String>,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      contactInfo: null == contactInfo
          ? _value.contactInfo
          : contactInfo // ignore: cast_nullable_to_non_nullable
              as String,
      summ: freezed == summ
          ? _value.summ
          : summ // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderPlaceModelImpl implements _OrderPlaceModel {
  const _$OrderPlaceModelImpl(
      {required this.type,
      required this.name,
      required this.description,
      required final List<String> images,
      required final List<String> sizes,
      required this.date,
      required this.contactInfo,
      required this.summ})
      : _images = images,
        _sizes = sizes;

  factory _$OrderPlaceModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderPlaceModelImplFromJson(json);

  @override
  final String type;
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

  final List<String> _sizes;
  @override
  List<String> get sizes {
    if (_sizes is EqualUnmodifiableListView) return _sizes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sizes);
  }

  @override
  final String date;
  @override
  final String contactInfo;
  @override
  final int? summ;

  @override
  String toString() {
    return 'OrderPlaceModel(type: $type, name: $name, description: $description, images: $images, sizes: $sizes, date: $date, contactInfo: $contactInfo, summ: $summ)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderPlaceModelImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            const DeepCollectionEquality().equals(other._sizes, _sizes) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.contactInfo, contactInfo) ||
                other.contactInfo == contactInfo) &&
            (identical(other.summ, summ) || other.summ == summ));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      type,
      name,
      description,
      const DeepCollectionEquality().hash(_images),
      const DeepCollectionEquality().hash(_sizes),
      date,
      contactInfo,
      summ);

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
  const factory _OrderPlaceModel(
      {required final String type,
      required final String name,
      required final String description,
      required final List<String> images,
      required final List<String> sizes,
      required final String date,
      required final String contactInfo,
      required final int? summ}) = _$OrderPlaceModelImpl;

  factory _OrderPlaceModel.fromJson(Map<String, dynamic> json) =
      _$OrderPlaceModelImpl.fromJson;

  @override
  String get type;
  @override
  String get name;
  @override
  String get description;
  @override
  List<String> get images;
  @override
  List<String> get sizes;
  @override
  String get date;
  @override
  String get contactInfo;
  @override
  int? get summ;
  @override
  @JsonKey(ignore: true)
  _$$OrderPlaceModelImplCopyWith<_$OrderPlaceModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
