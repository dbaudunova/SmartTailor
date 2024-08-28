// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_organixation_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CreateOrganizationModel _$CreateOrganizationModelFromJson(
    Map<String, dynamic> json) {
  return _CreateOrganizationModel.fromJson(json);
}

/// @nodoc
mixin _$CreateOrganizationModel {
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateOrganizationModelCopyWith<CreateOrganizationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateOrganizationModelCopyWith<$Res> {
  factory $CreateOrganizationModelCopyWith(CreateOrganizationModel value,
          $Res Function(CreateOrganizationModel) then) =
      _$CreateOrganizationModelCopyWithImpl<$Res, CreateOrganizationModel>;
  @useResult
  $Res call({String name, String description});
}

/// @nodoc
class _$CreateOrganizationModelCopyWithImpl<$Res,
        $Val extends CreateOrganizationModel>
    implements $CreateOrganizationModelCopyWith<$Res> {
  _$CreateOrganizationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateOrganizationModelImplCopyWith<$Res>
    implements $CreateOrganizationModelCopyWith<$Res> {
  factory _$$CreateOrganizationModelImplCopyWith(
          _$CreateOrganizationModelImpl value,
          $Res Function(_$CreateOrganizationModelImpl) then) =
      __$$CreateOrganizationModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String description});
}

/// @nodoc
class __$$CreateOrganizationModelImplCopyWithImpl<$Res>
    extends _$CreateOrganizationModelCopyWithImpl<$Res,
        _$CreateOrganizationModelImpl>
    implements _$$CreateOrganizationModelImplCopyWith<$Res> {
  __$$CreateOrganizationModelImplCopyWithImpl(
      _$CreateOrganizationModelImpl _value,
      $Res Function(_$CreateOrganizationModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
  }) {
    return _then(_$CreateOrganizationModelImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateOrganizationModelImpl implements _CreateOrganizationModel {
  _$CreateOrganizationModelImpl(
      {required this.name, required this.description});

  factory _$CreateOrganizationModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateOrganizationModelImplFromJson(json);

  @override
  final String name;
  @override
  final String description;

  @override
  String toString() {
    return 'CreateOrganizationModel(name: $name, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateOrganizationModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateOrganizationModelImplCopyWith<_$CreateOrganizationModelImpl>
      get copyWith => __$$CreateOrganizationModelImplCopyWithImpl<
          _$CreateOrganizationModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateOrganizationModelImplToJson(
      this,
    );
  }
}

abstract class _CreateOrganizationModel implements CreateOrganizationModel {
  factory _CreateOrganizationModel(
      {required final String name,
      required final String description}) = _$CreateOrganizationModelImpl;

  factory _CreateOrganizationModel.fromJson(Map<String, dynamic> json) =
      _$CreateOrganizationModelImpl.fromJson;

  @override
  String get name;
  @override
  String get description;
  @override
  @JsonKey(ignore: true)
  _$$CreateOrganizationModelImplCopyWith<_$CreateOrganizationModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
