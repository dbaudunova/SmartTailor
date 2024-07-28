// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'service_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ServiceModel _$ServiceModelFromJson(Map<String, dynamic> json) {
  return _ServiceModel.fromJson(json);
}

/// @nodoc
mixin _$ServiceModel {
  int get id => throw _privateConstructorUsedError;
  String get imagePath => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  int get price => throw _privateConstructorUsedError;
  String get authorImagePath => throw _privateConstructorUsedError;
  String get authorName => throw _privateConstructorUsedError;
  String get authorSurname => throw _privateConstructorUsedError;
  String get patronymic => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ServiceModelCopyWith<ServiceModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServiceModelCopyWith<$Res> {
  factory $ServiceModelCopyWith(
          ServiceModel value, $Res Function(ServiceModel) then) =
      _$ServiceModelCopyWithImpl<$Res, ServiceModel>;
  @useResult
  $Res call(
      {int id,
      String imagePath,
      String name,
      String description,
      int price,
      String authorImagePath,
      String authorName,
      String authorSurname,
      String patronymic});
}

/// @nodoc
class _$ServiceModelCopyWithImpl<$Res, $Val extends ServiceModel>
    implements $ServiceModelCopyWith<$Res> {
  _$ServiceModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? imagePath = null,
    Object? name = null,
    Object? description = null,
    Object? price = null,
    Object? authorImagePath = null,
    Object? authorName = null,
    Object? authorSurname = null,
    Object? patronymic = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      imagePath: null == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String,
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
      authorImagePath: null == authorImagePath
          ? _value.authorImagePath
          : authorImagePath // ignore: cast_nullable_to_non_nullable
              as String,
      authorName: null == authorName
          ? _value.authorName
          : authorName // ignore: cast_nullable_to_non_nullable
              as String,
      authorSurname: null == authorSurname
          ? _value.authorSurname
          : authorSurname // ignore: cast_nullable_to_non_nullable
              as String,
      patronymic: null == patronymic
          ? _value.patronymic
          : patronymic // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ServiceModelImplCopyWith<$Res>
    implements $ServiceModelCopyWith<$Res> {
  factory _$$ServiceModelImplCopyWith(
          _$ServiceModelImpl value, $Res Function(_$ServiceModelImpl) then) =
      __$$ServiceModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String imagePath,
      String name,
      String description,
      int price,
      String authorImagePath,
      String authorName,
      String authorSurname,
      String patronymic});
}

/// @nodoc
class __$$ServiceModelImplCopyWithImpl<$Res>
    extends _$ServiceModelCopyWithImpl<$Res, _$ServiceModelImpl>
    implements _$$ServiceModelImplCopyWith<$Res> {
  __$$ServiceModelImplCopyWithImpl(
      _$ServiceModelImpl _value, $Res Function(_$ServiceModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? imagePath = null,
    Object? name = null,
    Object? description = null,
    Object? price = null,
    Object? authorImagePath = null,
    Object? authorName = null,
    Object? authorSurname = null,
    Object? patronymic = null,
  }) {
    return _then(_$ServiceModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      imagePath: null == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String,
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
      authorImagePath: null == authorImagePath
          ? _value.authorImagePath
          : authorImagePath // ignore: cast_nullable_to_non_nullable
              as String,
      authorName: null == authorName
          ? _value.authorName
          : authorName // ignore: cast_nullable_to_non_nullable
              as String,
      authorSurname: null == authorSurname
          ? _value.authorSurname
          : authorSurname // ignore: cast_nullable_to_non_nullable
              as String,
      patronymic: null == patronymic
          ? _value.patronymic
          : patronymic // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ServiceModelImpl implements _ServiceModel {
  _$ServiceModelImpl(
      {required this.id,
      required this.imagePath,
      required this.name,
      required this.description,
      required this.price,
      required this.authorImagePath,
      required this.authorName,
      required this.authorSurname,
      required this.patronymic});

  factory _$ServiceModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ServiceModelImplFromJson(json);

  @override
  final int id;
  @override
  final String imagePath;
  @override
  final String name;
  @override
  final String description;
  @override
  final int price;
  @override
  final String authorImagePath;
  @override
  final String authorName;
  @override
  final String authorSurname;
  @override
  final String patronymic;

  @override
  String toString() {
    return 'ServiceModel(id: $id, imagePath: $imagePath, name: $name, description: $description, price: $price, authorImagePath: $authorImagePath, authorName: $authorName, authorSurname: $authorSurname, patronymic: $patronymic)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServiceModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.imagePath, imagePath) ||
                other.imagePath == imagePath) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.authorImagePath, authorImagePath) ||
                other.authorImagePath == authorImagePath) &&
            (identical(other.authorName, authorName) ||
                other.authorName == authorName) &&
            (identical(other.authorSurname, authorSurname) ||
                other.authorSurname == authorSurname) &&
            (identical(other.patronymic, patronymic) ||
                other.patronymic == patronymic));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, imagePath, name, description,
      price, authorImagePath, authorName, authorSurname, patronymic);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ServiceModelImplCopyWith<_$ServiceModelImpl> get copyWith =>
      __$$ServiceModelImplCopyWithImpl<_$ServiceModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ServiceModelImplToJson(
      this,
    );
  }
}

abstract class _ServiceModel implements ServiceModel {
  factory _ServiceModel(
      {required final int id,
      required final String imagePath,
      required final String name,
      required final String description,
      required final int price,
      required final String authorImagePath,
      required final String authorName,
      required final String authorSurname,
      required final String patronymic}) = _$ServiceModelImpl;

  factory _ServiceModel.fromJson(Map<String, dynamic> json) =
      _$ServiceModelImpl.fromJson;

  @override
  int get id;
  @override
  String get imagePath;
  @override
  String get name;
  @override
  String get description;
  @override
  int get price;
  @override
  String get authorImagePath;
  @override
  String get authorName;
  @override
  String get authorSurname;
  @override
  String get patronymic;
  @override
  @JsonKey(ignore: true)
  _$$ServiceModelImplCopyWith<_$ServiceModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
