// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'employee_detail_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EmployeeDetailModel _$EmployeeDetailModelFromJson(Map<String, dynamic> json) {
  return _EmployeeDetailModel.fromJson(json);
}

/// @nodoc
mixin _$EmployeeDetailModel {
  int? get id => throw _privateConstructorUsedError;
  String? get imagePath => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get surname => throw _privateConstructorUsedError;
  String? get patronymic => throw _privateConstructorUsedError;
  String? get phoneNumber => throw _privateConstructorUsedError;
  String? get positionName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EmployeeDetailModelCopyWith<EmployeeDetailModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmployeeDetailModelCopyWith<$Res> {
  factory $EmployeeDetailModelCopyWith(
          EmployeeDetailModel value, $Res Function(EmployeeDetailModel) then) =
      _$EmployeeDetailModelCopyWithImpl<$Res, EmployeeDetailModel>;
  @useResult
  $Res call(
      {int? id,
      String? imagePath,
      String? email,
      String? name,
      String? surname,
      String? patronymic,
      String? phoneNumber,
      String? positionName});
}

/// @nodoc
class _$EmployeeDetailModelCopyWithImpl<$Res, $Val extends EmployeeDetailModel>
    implements $EmployeeDetailModelCopyWith<$Res> {
  _$EmployeeDetailModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? imagePath = freezed,
    Object? email = freezed,
    Object? name = freezed,
    Object? surname = freezed,
    Object? patronymic = freezed,
    Object? phoneNumber = freezed,
    Object? positionName = freezed,
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
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      surname: freezed == surname
          ? _value.surname
          : surname // ignore: cast_nullable_to_non_nullable
              as String?,
      patronymic: freezed == patronymic
          ? _value.patronymic
          : patronymic // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      positionName: freezed == positionName
          ? _value.positionName
          : positionName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EmployeeDetailModelImplCopyWith<$Res>
    implements $EmployeeDetailModelCopyWith<$Res> {
  factory _$$EmployeeDetailModelImplCopyWith(_$EmployeeDetailModelImpl value,
          $Res Function(_$EmployeeDetailModelImpl) then) =
      __$$EmployeeDetailModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? imagePath,
      String? email,
      String? name,
      String? surname,
      String? patronymic,
      String? phoneNumber,
      String? positionName});
}

/// @nodoc
class __$$EmployeeDetailModelImplCopyWithImpl<$Res>
    extends _$EmployeeDetailModelCopyWithImpl<$Res, _$EmployeeDetailModelImpl>
    implements _$$EmployeeDetailModelImplCopyWith<$Res> {
  __$$EmployeeDetailModelImplCopyWithImpl(_$EmployeeDetailModelImpl _value,
      $Res Function(_$EmployeeDetailModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? imagePath = freezed,
    Object? email = freezed,
    Object? name = freezed,
    Object? surname = freezed,
    Object? patronymic = freezed,
    Object? phoneNumber = freezed,
    Object? positionName = freezed,
  }) {
    return _then(_$EmployeeDetailModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      imagePath: freezed == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      surname: freezed == surname
          ? _value.surname
          : surname // ignore: cast_nullable_to_non_nullable
              as String?,
      patronymic: freezed == patronymic
          ? _value.patronymic
          : patronymic // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      positionName: freezed == positionName
          ? _value.positionName
          : positionName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EmployeeDetailModelImpl implements _EmployeeDetailModel {
  _$EmployeeDetailModelImpl(
      {required this.id,
      required this.imagePath,
      required this.email,
      required this.name,
      required this.surname,
      required this.patronymic,
      required this.phoneNumber,
      required this.positionName});

  factory _$EmployeeDetailModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$EmployeeDetailModelImplFromJson(json);

  @override
  final int? id;
  @override
  final String? imagePath;
  @override
  final String? email;
  @override
  final String? name;
  @override
  final String? surname;
  @override
  final String? patronymic;
  @override
  final String? phoneNumber;
  @override
  final String? positionName;

  @override
  String toString() {
    return 'EmployeeDetailModel(id: $id, imagePath: $imagePath, email: $email, name: $name, surname: $surname, patronymic: $patronymic, phoneNumber: $phoneNumber, positionName: $positionName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmployeeDetailModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.imagePath, imagePath) ||
                other.imagePath == imagePath) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.surname, surname) || other.surname == surname) &&
            (identical(other.patronymic, patronymic) ||
                other.patronymic == patronymic) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.positionName, positionName) ||
                other.positionName == positionName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, imagePath, email, name,
      surname, patronymic, phoneNumber, positionName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EmployeeDetailModelImplCopyWith<_$EmployeeDetailModelImpl> get copyWith =>
      __$$EmployeeDetailModelImplCopyWithImpl<_$EmployeeDetailModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EmployeeDetailModelImplToJson(
      this,
    );
  }
}

abstract class _EmployeeDetailModel implements EmployeeDetailModel {
  factory _EmployeeDetailModel(
      {required final int? id,
      required final String? imagePath,
      required final String? email,
      required final String? name,
      required final String? surname,
      required final String? patronymic,
      required final String? phoneNumber,
      required final String? positionName}) = _$EmployeeDetailModelImpl;

  factory _EmployeeDetailModel.fromJson(Map<String, dynamic> json) =
      _$EmployeeDetailModelImpl.fromJson;

  @override
  int? get id;
  @override
  String? get imagePath;
  @override
  String? get email;
  @override
  String? get name;
  @override
  String? get surname;
  @override
  String? get patronymic;
  @override
  String? get phoneNumber;
  @override
  String? get positionName;
  @override
  @JsonKey(ignore: true)
  _$$EmployeeDetailModelImplCopyWith<_$EmployeeDetailModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
