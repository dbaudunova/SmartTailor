// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'registration_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RegistrationModel _$RegistrationModelFromJson(Map<String, dynamic> json) {
  return _RegistrationModel.fromJson(json);
}

/// @nodoc
mixin _$RegistrationModel {
  String get surname => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get fatherName => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  bool get rememberMe => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RegistrationModelCopyWith<RegistrationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegistrationModelCopyWith<$Res> {
  factory $RegistrationModelCopyWith(
          RegistrationModel value, $Res Function(RegistrationModel) then) =
      _$RegistrationModelCopyWithImpl<$Res, RegistrationModel>;
  @useResult
  $Res call(
      {String surname,
      String name,
      String fatherName,
      String email,
      String phone,
      bool rememberMe});
}

/// @nodoc
class _$RegistrationModelCopyWithImpl<$Res, $Val extends RegistrationModel>
    implements $RegistrationModelCopyWith<$Res> {
  _$RegistrationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? surname = null,
    Object? name = null,
    Object? fatherName = null,
    Object? email = null,
    Object? phone = null,
    Object? rememberMe = null,
  }) {
    return _then(_value.copyWith(
      surname: null == surname
          ? _value.surname
          : surname // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      fatherName: null == fatherName
          ? _value.fatherName
          : fatherName // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      rememberMe: null == rememberMe
          ? _value.rememberMe
          : rememberMe // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RegistrationModelImplCopyWith<$Res>
    implements $RegistrationModelCopyWith<$Res> {
  factory _$$RegistrationModelImplCopyWith(_$RegistrationModelImpl value,
          $Res Function(_$RegistrationModelImpl) then) =
      __$$RegistrationModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String surname,
      String name,
      String fatherName,
      String email,
      String phone,
      bool rememberMe});
}

/// @nodoc
class __$$RegistrationModelImplCopyWithImpl<$Res>
    extends _$RegistrationModelCopyWithImpl<$Res, _$RegistrationModelImpl>
    implements _$$RegistrationModelImplCopyWith<$Res> {
  __$$RegistrationModelImplCopyWithImpl(_$RegistrationModelImpl _value,
      $Res Function(_$RegistrationModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? surname = null,
    Object? name = null,
    Object? fatherName = null,
    Object? email = null,
    Object? phone = null,
    Object? rememberMe = null,
  }) {
    return _then(_$RegistrationModelImpl(
      surname: null == surname
          ? _value.surname
          : surname // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      fatherName: null == fatherName
          ? _value.fatherName
          : fatherName // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      rememberMe: null == rememberMe
          ? _value.rememberMe
          : rememberMe // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RegistrationModelImpl implements _RegistrationModel {
  const _$RegistrationModelImpl(
      {required this.surname,
      required this.name,
      required this.fatherName,
      required this.email,
      required this.phone,
      required this.rememberMe});

  factory _$RegistrationModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RegistrationModelImplFromJson(json);

  @override
  final String surname;
  @override
  final String name;
  @override
  final String fatherName;
  @override
  final String email;
  @override
  final String phone;
  @override
  final bool rememberMe;

  @override
  String toString() {
    return 'RegistrationModel(surname: $surname, name: $name, fatherName: $fatherName, email: $email, phone: $phone, rememberMe: $rememberMe)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegistrationModelImpl &&
            (identical(other.surname, surname) || other.surname == surname) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.fatherName, fatherName) ||
                other.fatherName == fatherName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.rememberMe, rememberMe) ||
                other.rememberMe == rememberMe));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, surname, name, fatherName, email, phone, rememberMe);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegistrationModelImplCopyWith<_$RegistrationModelImpl> get copyWith =>
      __$$RegistrationModelImplCopyWithImpl<_$RegistrationModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RegistrationModelImplToJson(
      this,
    );
  }
}

abstract class _RegistrationModel implements RegistrationModel {
  const factory _RegistrationModel(
      {required final String surname,
      required final String name,
      required final String fatherName,
      required final String email,
      required final String phone,
      required final bool rememberMe}) = _$RegistrationModelImpl;

  factory _RegistrationModel.fromJson(Map<String, dynamic> json) =
      _$RegistrationModelImpl.fromJson;

  @override
  String get surname;
  @override
  String get name;
  @override
  String get fatherName;
  @override
  String get email;
  @override
  String get phone;
  @override
  bool get rememberMe;
  @override
  @JsonKey(ignore: true)
  _$$RegistrationModelImplCopyWith<_$RegistrationModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
