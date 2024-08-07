// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'organization_info_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OrganizationInfoModel _$OrganizationInfoModelFromJson(
    Map<String, dynamic> json) {
  return _OrganizationInfoModel.fromJson(json);
}

/// @nodoc
mixin _$OrganizationInfoModel {
  int? get id => throw _privateConstructorUsedError;
  String? get imagePath => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrganizationInfoModelCopyWith<OrganizationInfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrganizationInfoModelCopyWith<$Res> {
  factory $OrganizationInfoModelCopyWith(OrganizationInfoModel value,
          $Res Function(OrganizationInfoModel) then) =
      _$OrganizationInfoModelCopyWithImpl<$Res, OrganizationInfoModel>;
  @useResult
  $Res call(
      {int? id,
      String? imagePath,
      String? name,
      String? description,
      String? createdAt});
}

/// @nodoc
class _$OrganizationInfoModelCopyWithImpl<$Res,
        $Val extends OrganizationInfoModel>
    implements $OrganizationInfoModelCopyWith<$Res> {
  _$OrganizationInfoModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? imagePath = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      imagePath: freezed == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OrganizationInfoModelImplCopyWith<$Res>
    implements $OrganizationInfoModelCopyWith<$Res> {
  factory _$$OrganizationInfoModelImplCopyWith(
          _$OrganizationInfoModelImpl value,
          $Res Function(_$OrganizationInfoModelImpl) then) =
      __$$OrganizationInfoModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? imagePath,
      String? name,
      String? description,
      String? createdAt});
}

/// @nodoc
class __$$OrganizationInfoModelImplCopyWithImpl<$Res>
    extends _$OrganizationInfoModelCopyWithImpl<$Res,
        _$OrganizationInfoModelImpl>
    implements _$$OrganizationInfoModelImplCopyWith<$Res> {
  __$$OrganizationInfoModelImplCopyWithImpl(_$OrganizationInfoModelImpl _value,
      $Res Function(_$OrganizationInfoModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? imagePath = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_$OrganizationInfoModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      imagePath: freezed == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrganizationInfoModelImpl implements _OrganizationInfoModel {
  _$OrganizationInfoModelImpl(
      {required this.id,
      required this.imagePath,
      required this.name,
      required this.description,
      required this.createdAt});

  factory _$OrganizationInfoModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrganizationInfoModelImplFromJson(json);

  @override
  final int? id;
  @override
  final String? imagePath;
  @override
  final String? name;
  @override
  final String? description;
  @override
  final String? createdAt;

  @override
  String toString() {
    return 'OrganizationInfoModel(id: $id, imagePath: $imagePath, name: $name, description: $description, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrganizationInfoModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.imagePath, imagePath) ||
                other.imagePath == imagePath) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, imagePath, name, description, createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrganizationInfoModelImplCopyWith<_$OrganizationInfoModelImpl>
      get copyWith => __$$OrganizationInfoModelImplCopyWithImpl<
          _$OrganizationInfoModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrganizationInfoModelImplToJson(
      this,
    );
  }
}

abstract class _OrganizationInfoModel implements OrganizationInfoModel {
  factory _OrganizationInfoModel(
      {required final int? id,
      required final String? imagePath,
      required final String? name,
      required final String? description,
      required final String? createdAt}) = _$OrganizationInfoModelImpl;

  factory _OrganizationInfoModel.fromJson(Map<String, dynamic> json) =
      _$OrganizationInfoModelImpl.fromJson;

  @override
  int? get id;
  @override
  String? get imagePath;
  @override
  String? get name;
  @override
  String? get description;
  @override
  String? get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$OrganizationInfoModelImplCopyWith<_$OrganizationInfoModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
