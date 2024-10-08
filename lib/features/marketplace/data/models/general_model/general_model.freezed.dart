// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'general_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GeneralOrderModel _$GeneralOrderModelFromJson(Map<String, dynamic> json) {
  return _GeneralModel.fromJson(json);
}

/// @nodoc
mixin _$GeneralOrderModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  int get price => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;
  String get authorFullName => throw _privateConstructorUsedError;
  String get authorImageUrl =>
      throw _privateConstructorUsedError; // required String dateOfExecution,
  String get dateOfExecution => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GeneralOrderModelCopyWith<GeneralOrderModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GeneralOrderModelCopyWith<$Res> {
  factory $GeneralOrderModelCopyWith(
          GeneralOrderModel value, $Res Function(GeneralOrderModel) then) =
      _$GeneralOrderModelCopyWithImpl<$Res, GeneralOrderModel>;
  @useResult
  $Res call(
      {int id,
      String name,
      String description,
      int price,
      String imageUrl,
      String authorFullName,
      String authorImageUrl,
      String dateOfExecution});
}

/// @nodoc
class _$GeneralOrderModelCopyWithImpl<$Res, $Val extends GeneralOrderModel>
    implements $GeneralOrderModelCopyWith<$Res> {
  _$GeneralOrderModelCopyWithImpl(this._value, this._then);

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
    Object? imageUrl = null,
    Object? authorFullName = null,
    Object? authorImageUrl = null,
    Object? dateOfExecution = null,
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
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      authorFullName: null == authorFullName
          ? _value.authorFullName
          : authorFullName // ignore: cast_nullable_to_non_nullable
              as String,
      authorImageUrl: null == authorImageUrl
          ? _value.authorImageUrl
          : authorImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      dateOfExecution: null == dateOfExecution
          ? _value.dateOfExecution
          : dateOfExecution // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GeneralModelImplCopyWith<$Res>
    implements $GeneralOrderModelCopyWith<$Res> {
  factory _$$GeneralModelImplCopyWith(
          _$GeneralModelImpl value, $Res Function(_$GeneralModelImpl) then) =
      __$$GeneralModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String description,
      int price,
      String imageUrl,
      String authorFullName,
      String authorImageUrl,
      String dateOfExecution});
}

/// @nodoc
class __$$GeneralModelImplCopyWithImpl<$Res>
    extends _$GeneralOrderModelCopyWithImpl<$Res, _$GeneralModelImpl>
    implements _$$GeneralModelImplCopyWith<$Res> {
  __$$GeneralModelImplCopyWithImpl(
      _$GeneralModelImpl _value, $Res Function(_$GeneralModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? price = null,
    Object? imageUrl = null,
    Object? authorFullName = null,
    Object? authorImageUrl = null,
    Object? dateOfExecution = null,
  }) {
    return _then(_$GeneralModelImpl(
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
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      authorFullName: null == authorFullName
          ? _value.authorFullName
          : authorFullName // ignore: cast_nullable_to_non_nullable
              as String,
      authorImageUrl: null == authorImageUrl
          ? _value.authorImageUrl
          : authorImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      dateOfExecution: null == dateOfExecution
          ? _value.dateOfExecution
          : dateOfExecution // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GeneralModelImpl implements _GeneralModel {
  _$GeneralModelImpl(
      {required this.id,
      required this.name,
      required this.description,
      required this.price,
      required this.imageUrl,
      required this.authorFullName,
      required this.authorImageUrl,
      this.dateOfExecution = ''});

  factory _$GeneralModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$GeneralModelImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String description;
  @override
  final int price;
  @override
  final String imageUrl;
  @override
  final String authorFullName;
  @override
  final String authorImageUrl;
// required String dateOfExecution,
  @override
  @JsonKey()
  final String dateOfExecution;

  @override
  String toString() {
    return 'GeneralOrderModel(id: $id, name: $name, description: $description, price: $price, imageUrl: $imageUrl, authorFullName: $authorFullName, authorImageUrl: $authorImageUrl, dateOfExecution: $dateOfExecution)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GeneralModelImpl &&
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
            (identical(other.dateOfExecution, dateOfExecution) ||
                other.dateOfExecution == dateOfExecution));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, description, price,
      imageUrl, authorFullName, authorImageUrl, dateOfExecution);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GeneralModelImplCopyWith<_$GeneralModelImpl> get copyWith =>
      __$$GeneralModelImplCopyWithImpl<_$GeneralModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GeneralModelImplToJson(
      this,
    );
  }
}

abstract class _GeneralModel implements GeneralOrderModel {
  factory _GeneralModel(
      {required final int id,
      required final String name,
      required final String description,
      required final int price,
      required final String imageUrl,
      required final String authorFullName,
      required final String authorImageUrl,
      final String dateOfExecution}) = _$GeneralModelImpl;

  factory _GeneralModel.fromJson(Map<String, dynamic> json) =
      _$GeneralModelImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get description;
  @override
  int get price;
  @override
  String get imageUrl;
  @override
  String get authorFullName;
  @override
  String get authorImageUrl;
  @override // required String dateOfExecution,
  String get dateOfExecution;
  @override
  @JsonKey(ignore: true)
  _$$GeneralModelImplCopyWith<_$GeneralModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
