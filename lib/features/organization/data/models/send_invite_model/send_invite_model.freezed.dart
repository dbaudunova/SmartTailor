// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'send_invite_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SendInviteModel _$SendInviteModelFromJson(Map<String, dynamic> json) {
  return _SendInviteModel.fromJson(json);
}

/// @nodoc
mixin _$SendInviteModel {
  String get surname => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get patronymic => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;
  String get position => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SendInviteModelCopyWith<SendInviteModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendInviteModelCopyWith<$Res> {
  factory $SendInviteModelCopyWith(
          SendInviteModel value, $Res Function(SendInviteModel) then) =
      _$SendInviteModelCopyWithImpl<$Res, SendInviteModel>;
  @useResult
  $Res call(
      {String surname,
      String name,
      String patronymic,
      String email,
      String phoneNumber,
      String position});
}

/// @nodoc
class _$SendInviteModelCopyWithImpl<$Res, $Val extends SendInviteModel>
    implements $SendInviteModelCopyWith<$Res> {
  _$SendInviteModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? surname = null,
    Object? name = null,
    Object? patronymic = null,
    Object? email = null,
    Object? phoneNumber = null,
    Object? position = null,
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
      patronymic: null == patronymic
          ? _value.patronymic
          : patronymic // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SendInviteModelImplCopyWith<$Res>
    implements $SendInviteModelCopyWith<$Res> {
  factory _$$SendInviteModelImplCopyWith(_$SendInviteModelImpl value,
          $Res Function(_$SendInviteModelImpl) then) =
      __$$SendInviteModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String surname,
      String name,
      String patronymic,
      String email,
      String phoneNumber,
      String position});
}

/// @nodoc
class __$$SendInviteModelImplCopyWithImpl<$Res>
    extends _$SendInviteModelCopyWithImpl<$Res, _$SendInviteModelImpl>
    implements _$$SendInviteModelImplCopyWith<$Res> {
  __$$SendInviteModelImplCopyWithImpl(
      _$SendInviteModelImpl _value, $Res Function(_$SendInviteModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? surname = null,
    Object? name = null,
    Object? patronymic = null,
    Object? email = null,
    Object? phoneNumber = null,
    Object? position = null,
  }) {
    return _then(_$SendInviteModelImpl(
      surname: null == surname
          ? _value.surname
          : surname // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      patronymic: null == patronymic
          ? _value.patronymic
          : patronymic // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SendInviteModelImpl implements _SendInviteModel {
  _$SendInviteModelImpl(
      {required this.surname,
      required this.name,
      required this.patronymic,
      required this.email,
      required this.phoneNumber,
      required this.position});

  factory _$SendInviteModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SendInviteModelImplFromJson(json);

  @override
  final String surname;
  @override
  final String name;
  @override
  final String patronymic;
  @override
  final String email;
  @override
  final String phoneNumber;
  @override
  final String position;

  @override
  String toString() {
    return 'SendInviteModel(surname: $surname, name: $name, patronymic: $patronymic, email: $email, phoneNumber: $phoneNumber, position: $position)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendInviteModelImpl &&
            (identical(other.surname, surname) || other.surname == surname) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.patronymic, patronymic) ||
                other.patronymic == patronymic) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.position, position) ||
                other.position == position));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, surname, name, patronymic, email, phoneNumber, position);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SendInviteModelImplCopyWith<_$SendInviteModelImpl> get copyWith =>
      __$$SendInviteModelImplCopyWithImpl<_$SendInviteModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SendInviteModelImplToJson(
      this,
    );
  }
}

abstract class _SendInviteModel implements SendInviteModel {
  factory _SendInviteModel(
      {required final String surname,
      required final String name,
      required final String patronymic,
      required final String email,
      required final String phoneNumber,
      required final String position}) = _$SendInviteModelImpl;

  factory _SendInviteModel.fromJson(Map<String, dynamic> json) =
      _$SendInviteModelImpl.fromJson;

  @override
  String get surname;
  @override
  String get name;
  @override
  String get patronymic;
  @override
  String get email;
  @override
  String get phoneNumber;
  @override
  String get position;
  @override
  @JsonKey(ignore: true)
  _$$SendInviteModelImplCopyWith<_$SendInviteModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
