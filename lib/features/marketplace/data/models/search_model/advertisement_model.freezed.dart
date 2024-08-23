// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'advertisement_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AdvertisementModel _$AdvertisementModelFromJson(Map<String, dynamic> json) {
  return _AdvertisementModel.fromJson(json);
}

/// @nodoc
mixin _$AdvertisementModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  double? get price => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;
  String? get authorFullName => throw _privateConstructorUsedError;
  String? get authorImageUrl => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AdvertisementModelCopyWith<AdvertisementModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdvertisementModelCopyWith<$Res> {
  factory $AdvertisementModelCopyWith(
          AdvertisementModel value, $Res Function(AdvertisementModel) then) =
      _$AdvertisementModelCopyWithImpl<$Res, AdvertisementModel>;
  @useResult
  $Res call(
      {int id,
      String name,
      String description,
      double? price,
      String imageUrl,
      String? authorFullName,
      String? authorImageUrl,
      String? type});
}

/// @nodoc
class _$AdvertisementModelCopyWithImpl<$Res, $Val extends AdvertisementModel>
    implements $AdvertisementModelCopyWith<$Res> {
  _$AdvertisementModelCopyWithImpl(this._value, this._then);

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
    Object? price = freezed,
    Object? imageUrl = null,
    Object? authorFullName = freezed,
    Object? authorImageUrl = freezed,
    Object? type = freezed,
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
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      authorFullName: freezed == authorFullName
          ? _value.authorFullName
          : authorFullName // ignore: cast_nullable_to_non_nullable
              as String?,
      authorImageUrl: freezed == authorImageUrl
          ? _value.authorImageUrl
          : authorImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AdvertisementModelImplCopyWith<$Res>
    implements $AdvertisementModelCopyWith<$Res> {
  factory _$$AdvertisementModelImplCopyWith(_$AdvertisementModelImpl value,
          $Res Function(_$AdvertisementModelImpl) then) =
      __$$AdvertisementModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String description,
      double? price,
      String imageUrl,
      String? authorFullName,
      String? authorImageUrl,
      String? type});
}

/// @nodoc
class __$$AdvertisementModelImplCopyWithImpl<$Res>
    extends _$AdvertisementModelCopyWithImpl<$Res, _$AdvertisementModelImpl>
    implements _$$AdvertisementModelImplCopyWith<$Res> {
  __$$AdvertisementModelImplCopyWithImpl(_$AdvertisementModelImpl _value,
      $Res Function(_$AdvertisementModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? price = freezed,
    Object? imageUrl = null,
    Object? authorFullName = freezed,
    Object? authorImageUrl = freezed,
    Object? type = freezed,
  }) {
    return _then(_$AdvertisementModelImpl(
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
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      authorFullName: freezed == authorFullName
          ? _value.authorFullName
          : authorFullName // ignore: cast_nullable_to_non_nullable
              as String?,
      authorImageUrl: freezed == authorImageUrl
          ? _value.authorImageUrl
          : authorImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AdvertisementModelImpl implements _AdvertisementModel {
  const _$AdvertisementModelImpl(
      {required this.id,
      required this.name,
      required this.description,
      required this.price,
      required this.imageUrl,
      required this.authorFullName,
      required this.authorImageUrl,
      required this.type});

  factory _$AdvertisementModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AdvertisementModelImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String description;
  @override
  final double? price;
  @override
  final String imageUrl;
  @override
  final String? authorFullName;
  @override
  final String? authorImageUrl;
  @override
  final String? type;

  @override
  String toString() {
    return 'AdvertisementModel(id: $id, name: $name, description: $description, price: $price, imageUrl: $imageUrl, authorFullName: $authorFullName, authorImageUrl: $authorImageUrl, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdvertisementModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.authorFullName, authorFullName) ||
                other.authorFullName == authorFullName) &&
            (identical(other.authorImageUrl, authorImageUrl) ||
                other.authorImageUrl == authorImageUrl) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, description, price,
      imageUrl, authorFullName, authorImageUrl, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AdvertisementModelImplCopyWith<_$AdvertisementModelImpl> get copyWith =>
      __$$AdvertisementModelImplCopyWithImpl<_$AdvertisementModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AdvertisementModelImplToJson(
      this,
    );
  }
}

abstract class _AdvertisementModel implements AdvertisementModel {
  const factory _AdvertisementModel(
      {required final int id,
      required final String name,
      required final String description,
      required final double? price,
      required final String imageUrl,
      required final String? authorFullName,
      required final String? authorImageUrl,
      required final String? type}) = _$AdvertisementModelImpl;

  factory _AdvertisementModel.fromJson(Map<String, dynamic> json) =
      _$AdvertisementModelImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get description;
  @override
  double? get price;
  @override
  String get imageUrl;
  @override
  String? get authorFullName;
  @override
  String? get authorImageUrl;
  @override
  String? get type;
  @override
  @JsonKey(ignore: true)
  _$$AdvertisementModelImplCopyWith<_$AdvertisementModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AdvertisementResponseModel _$AdvertisementResponseModelFromJson(
    Map<String, dynamic> json) {
  return _AdvertisementResponseModel.fromJson(json);
}

/// @nodoc
mixin _$AdvertisementResponseModel {
  List<AdvertisementModel> get advertisement =>
      throw _privateConstructorUsedError;
  bool get isLast => throw _privateConstructorUsedError;
  int get totalCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AdvertisementResponseModelCopyWith<AdvertisementResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdvertisementResponseModelCopyWith<$Res> {
  factory $AdvertisementResponseModelCopyWith(AdvertisementResponseModel value,
          $Res Function(AdvertisementResponseModel) then) =
      _$AdvertisementResponseModelCopyWithImpl<$Res,
          AdvertisementResponseModel>;
  @useResult
  $Res call(
      {List<AdvertisementModel> advertisement, bool isLast, int totalCount});
}

/// @nodoc
class _$AdvertisementResponseModelCopyWithImpl<$Res,
        $Val extends AdvertisementResponseModel>
    implements $AdvertisementResponseModelCopyWith<$Res> {
  _$AdvertisementResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? advertisement = null,
    Object? isLast = null,
    Object? totalCount = null,
  }) {
    return _then(_value.copyWith(
      advertisement: null == advertisement
          ? _value.advertisement
          : advertisement // ignore: cast_nullable_to_non_nullable
              as List<AdvertisementModel>,
      isLast: null == isLast
          ? _value.isLast
          : isLast // ignore: cast_nullable_to_non_nullable
              as bool,
      totalCount: null == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AdvertisementResponseModelImplCopyWith<$Res>
    implements $AdvertisementResponseModelCopyWith<$Res> {
  factory _$$AdvertisementResponseModelImplCopyWith(
          _$AdvertisementResponseModelImpl value,
          $Res Function(_$AdvertisementResponseModelImpl) then) =
      __$$AdvertisementResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<AdvertisementModel> advertisement, bool isLast, int totalCount});
}

/// @nodoc
class __$$AdvertisementResponseModelImplCopyWithImpl<$Res>
    extends _$AdvertisementResponseModelCopyWithImpl<$Res,
        _$AdvertisementResponseModelImpl>
    implements _$$AdvertisementResponseModelImplCopyWith<$Res> {
  __$$AdvertisementResponseModelImplCopyWithImpl(
      _$AdvertisementResponseModelImpl _value,
      $Res Function(_$AdvertisementResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? advertisement = null,
    Object? isLast = null,
    Object? totalCount = null,
  }) {
    return _then(_$AdvertisementResponseModelImpl(
      advertisement: null == advertisement
          ? _value._advertisement
          : advertisement // ignore: cast_nullable_to_non_nullable
              as List<AdvertisementModel>,
      isLast: null == isLast
          ? _value.isLast
          : isLast // ignore: cast_nullable_to_non_nullable
              as bool,
      totalCount: null == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AdvertisementResponseModelImpl implements _AdvertisementResponseModel {
  const _$AdvertisementResponseModelImpl(
      {required final List<AdvertisementModel> advertisement,
      required this.isLast,
      required this.totalCount})
      : _advertisement = advertisement;

  factory _$AdvertisementResponseModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$AdvertisementResponseModelImplFromJson(json);

  final List<AdvertisementModel> _advertisement;
  @override
  List<AdvertisementModel> get advertisement {
    if (_advertisement is EqualUnmodifiableListView) return _advertisement;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_advertisement);
  }

  @override
  final bool isLast;
  @override
  final int totalCount;

  @override
  String toString() {
    return 'AdvertisementResponseModel(advertisement: $advertisement, isLast: $isLast, totalCount: $totalCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdvertisementResponseModelImpl &&
            const DeepCollectionEquality()
                .equals(other._advertisement, _advertisement) &&
            (identical(other.isLast, isLast) || other.isLast == isLast) &&
            (identical(other.totalCount, totalCount) ||
                other.totalCount == totalCount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_advertisement), isLast, totalCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AdvertisementResponseModelImplCopyWith<_$AdvertisementResponseModelImpl>
      get copyWith => __$$AdvertisementResponseModelImplCopyWithImpl<
          _$AdvertisementResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AdvertisementResponseModelImplToJson(
      this,
    );
  }
}

abstract class _AdvertisementResponseModel
    implements AdvertisementResponseModel {
  const factory _AdvertisementResponseModel(
      {required final List<AdvertisementModel> advertisement,
      required final bool isLast,
      required final int totalCount}) = _$AdvertisementResponseModelImpl;

  factory _AdvertisementResponseModel.fromJson(Map<String, dynamic> json) =
      _$AdvertisementResponseModelImpl.fromJson;

  @override
  List<AdvertisementModel> get advertisement;
  @override
  bool get isLast;
  @override
  int get totalCount;
  @override
  @JsonKey(ignore: true)
  _$$AdvertisementResponseModelImplCopyWith<_$AdvertisementResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
