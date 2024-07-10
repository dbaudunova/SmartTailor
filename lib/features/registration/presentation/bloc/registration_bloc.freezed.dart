// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'registration_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RegistrationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RegistrationModel registrationModel) registration,
    required TResult Function(String name) addName,
    required TResult Function(String surname) addSurname,
    required TResult Function(String fatherName) addFatherName,
    required TResult Function(String email) addEmail,
    required TResult Function(String phone) addPhone,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RegistrationModel registrationModel)? registration,
    TResult? Function(String name)? addName,
    TResult? Function(String surname)? addSurname,
    TResult? Function(String fatherName)? addFatherName,
    TResult? Function(String email)? addEmail,
    TResult? Function(String phone)? addPhone,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RegistrationModel registrationModel)? registration,
    TResult Function(String name)? addName,
    TResult Function(String surname)? addSurname,
    TResult Function(String fatherName)? addFatherName,
    TResult Function(String email)? addEmail,
    TResult Function(String phone)? addPhone,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Registration value) registration,
    required TResult Function(_AddName value) addName,
    required TResult Function(_AddSurname value) addSurname,
    required TResult Function(_AddFatherName value) addFatherName,
    required TResult Function(_AddEmail value) addEmail,
    required TResult Function(_AddPhone value) addPhone,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Registration value)? registration,
    TResult? Function(_AddName value)? addName,
    TResult? Function(_AddSurname value)? addSurname,
    TResult? Function(_AddFatherName value)? addFatherName,
    TResult? Function(_AddEmail value)? addEmail,
    TResult? Function(_AddPhone value)? addPhone,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Registration value)? registration,
    TResult Function(_AddName value)? addName,
    TResult Function(_AddSurname value)? addSurname,
    TResult Function(_AddFatherName value)? addFatherName,
    TResult Function(_AddEmail value)? addEmail,
    TResult Function(_AddPhone value)? addPhone,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegistrationEventCopyWith<$Res> {
  factory $RegistrationEventCopyWith(
          RegistrationEvent value, $Res Function(RegistrationEvent) then) =
      _$RegistrationEventCopyWithImpl<$Res, RegistrationEvent>;
}

/// @nodoc
class _$RegistrationEventCopyWithImpl<$Res, $Val extends RegistrationEvent>
    implements $RegistrationEventCopyWith<$Res> {
  _$RegistrationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$RegistrationImplCopyWith<$Res> {
  factory _$$RegistrationImplCopyWith(
          _$RegistrationImpl value, $Res Function(_$RegistrationImpl) then) =
      __$$RegistrationImplCopyWithImpl<$Res>;
  @useResult
  $Res call({RegistrationModel registrationModel});

  $RegistrationModelCopyWith<$Res> get registrationModel;
}

/// @nodoc
class __$$RegistrationImplCopyWithImpl<$Res>
    extends _$RegistrationEventCopyWithImpl<$Res, _$RegistrationImpl>
    implements _$$RegistrationImplCopyWith<$Res> {
  __$$RegistrationImplCopyWithImpl(
      _$RegistrationImpl _value, $Res Function(_$RegistrationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? registrationModel = null,
  }) {
    return _then(_$RegistrationImpl(
      registrationModel: null == registrationModel
          ? _value.registrationModel
          : registrationModel // ignore: cast_nullable_to_non_nullable
              as RegistrationModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $RegistrationModelCopyWith<$Res> get registrationModel {
    return $RegistrationModelCopyWith<$Res>(_value.registrationModel, (value) {
      return _then(_value.copyWith(registrationModel: value));
    });
  }
}

/// @nodoc

class _$RegistrationImpl implements _Registration {
  const _$RegistrationImpl({required this.registrationModel});

  @override
  final RegistrationModel registrationModel;

  @override
  String toString() {
    return 'RegistrationEvent.registration(registrationModel: $registrationModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegistrationImpl &&
            (identical(other.registrationModel, registrationModel) ||
                other.registrationModel == registrationModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, registrationModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegistrationImplCopyWith<_$RegistrationImpl> get copyWith =>
      __$$RegistrationImplCopyWithImpl<_$RegistrationImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RegistrationModel registrationModel) registration,
    required TResult Function(String name) addName,
    required TResult Function(String surname) addSurname,
    required TResult Function(String fatherName) addFatherName,
    required TResult Function(String email) addEmail,
    required TResult Function(String phone) addPhone,
  }) {
    return registration(registrationModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RegistrationModel registrationModel)? registration,
    TResult? Function(String name)? addName,
    TResult? Function(String surname)? addSurname,
    TResult? Function(String fatherName)? addFatherName,
    TResult? Function(String email)? addEmail,
    TResult? Function(String phone)? addPhone,
  }) {
    return registration?.call(registrationModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RegistrationModel registrationModel)? registration,
    TResult Function(String name)? addName,
    TResult Function(String surname)? addSurname,
    TResult Function(String fatherName)? addFatherName,
    TResult Function(String email)? addEmail,
    TResult Function(String phone)? addPhone,
    required TResult orElse(),
  }) {
    if (registration != null) {
      return registration(registrationModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Registration value) registration,
    required TResult Function(_AddName value) addName,
    required TResult Function(_AddSurname value) addSurname,
    required TResult Function(_AddFatherName value) addFatherName,
    required TResult Function(_AddEmail value) addEmail,
    required TResult Function(_AddPhone value) addPhone,
  }) {
    return registration(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Registration value)? registration,
    TResult? Function(_AddName value)? addName,
    TResult? Function(_AddSurname value)? addSurname,
    TResult? Function(_AddFatherName value)? addFatherName,
    TResult? Function(_AddEmail value)? addEmail,
    TResult? Function(_AddPhone value)? addPhone,
  }) {
    return registration?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Registration value)? registration,
    TResult Function(_AddName value)? addName,
    TResult Function(_AddSurname value)? addSurname,
    TResult Function(_AddFatherName value)? addFatherName,
    TResult Function(_AddEmail value)? addEmail,
    TResult Function(_AddPhone value)? addPhone,
    required TResult orElse(),
  }) {
    if (registration != null) {
      return registration(this);
    }
    return orElse();
  }
}

abstract class _Registration implements RegistrationEvent {
  const factory _Registration(
          {required final RegistrationModel registrationModel}) =
      _$RegistrationImpl;

  RegistrationModel get registrationModel;
  @JsonKey(ignore: true)
  _$$RegistrationImplCopyWith<_$RegistrationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddNameImplCopyWith<$Res> {
  factory _$$AddNameImplCopyWith(
          _$AddNameImpl value, $Res Function(_$AddNameImpl) then) =
      __$$AddNameImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$AddNameImplCopyWithImpl<$Res>
    extends _$RegistrationEventCopyWithImpl<$Res, _$AddNameImpl>
    implements _$$AddNameImplCopyWith<$Res> {
  __$$AddNameImplCopyWithImpl(
      _$AddNameImpl _value, $Res Function(_$AddNameImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$AddNameImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddNameImpl implements _AddName {
  const _$AddNameImpl({required this.name});

  @override
  final String name;

  @override
  String toString() {
    return 'RegistrationEvent.addName(name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddNameImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddNameImplCopyWith<_$AddNameImpl> get copyWith =>
      __$$AddNameImplCopyWithImpl<_$AddNameImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RegistrationModel registrationModel) registration,
    required TResult Function(String name) addName,
    required TResult Function(String surname) addSurname,
    required TResult Function(String fatherName) addFatherName,
    required TResult Function(String email) addEmail,
    required TResult Function(String phone) addPhone,
  }) {
    return addName(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RegistrationModel registrationModel)? registration,
    TResult? Function(String name)? addName,
    TResult? Function(String surname)? addSurname,
    TResult? Function(String fatherName)? addFatherName,
    TResult? Function(String email)? addEmail,
    TResult? Function(String phone)? addPhone,
  }) {
    return addName?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RegistrationModel registrationModel)? registration,
    TResult Function(String name)? addName,
    TResult Function(String surname)? addSurname,
    TResult Function(String fatherName)? addFatherName,
    TResult Function(String email)? addEmail,
    TResult Function(String phone)? addPhone,
    required TResult orElse(),
  }) {
    if (addName != null) {
      return addName(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Registration value) registration,
    required TResult Function(_AddName value) addName,
    required TResult Function(_AddSurname value) addSurname,
    required TResult Function(_AddFatherName value) addFatherName,
    required TResult Function(_AddEmail value) addEmail,
    required TResult Function(_AddPhone value) addPhone,
  }) {
    return addName(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Registration value)? registration,
    TResult? Function(_AddName value)? addName,
    TResult? Function(_AddSurname value)? addSurname,
    TResult? Function(_AddFatherName value)? addFatherName,
    TResult? Function(_AddEmail value)? addEmail,
    TResult? Function(_AddPhone value)? addPhone,
  }) {
    return addName?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Registration value)? registration,
    TResult Function(_AddName value)? addName,
    TResult Function(_AddSurname value)? addSurname,
    TResult Function(_AddFatherName value)? addFatherName,
    TResult Function(_AddEmail value)? addEmail,
    TResult Function(_AddPhone value)? addPhone,
    required TResult orElse(),
  }) {
    if (addName != null) {
      return addName(this);
    }
    return orElse();
  }
}

abstract class _AddName implements RegistrationEvent {
  const factory _AddName({required final String name}) = _$AddNameImpl;

  String get name;
  @JsonKey(ignore: true)
  _$$AddNameImplCopyWith<_$AddNameImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddSurnameImplCopyWith<$Res> {
  factory _$$AddSurnameImplCopyWith(
          _$AddSurnameImpl value, $Res Function(_$AddSurnameImpl) then) =
      __$$AddSurnameImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String surname});
}

/// @nodoc
class __$$AddSurnameImplCopyWithImpl<$Res>
    extends _$RegistrationEventCopyWithImpl<$Res, _$AddSurnameImpl>
    implements _$$AddSurnameImplCopyWith<$Res> {
  __$$AddSurnameImplCopyWithImpl(
      _$AddSurnameImpl _value, $Res Function(_$AddSurnameImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? surname = null,
  }) {
    return _then(_$AddSurnameImpl(
      surname: null == surname
          ? _value.surname
          : surname // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddSurnameImpl implements _AddSurname {
  const _$AddSurnameImpl({required this.surname});

  @override
  final String surname;

  @override
  String toString() {
    return 'RegistrationEvent.addSurname(surname: $surname)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddSurnameImpl &&
            (identical(other.surname, surname) || other.surname == surname));
  }

  @override
  int get hashCode => Object.hash(runtimeType, surname);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddSurnameImplCopyWith<_$AddSurnameImpl> get copyWith =>
      __$$AddSurnameImplCopyWithImpl<_$AddSurnameImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RegistrationModel registrationModel) registration,
    required TResult Function(String name) addName,
    required TResult Function(String surname) addSurname,
    required TResult Function(String fatherName) addFatherName,
    required TResult Function(String email) addEmail,
    required TResult Function(String phone) addPhone,
  }) {
    return addSurname(surname);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RegistrationModel registrationModel)? registration,
    TResult? Function(String name)? addName,
    TResult? Function(String surname)? addSurname,
    TResult? Function(String fatherName)? addFatherName,
    TResult? Function(String email)? addEmail,
    TResult? Function(String phone)? addPhone,
  }) {
    return addSurname?.call(surname);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RegistrationModel registrationModel)? registration,
    TResult Function(String name)? addName,
    TResult Function(String surname)? addSurname,
    TResult Function(String fatherName)? addFatherName,
    TResult Function(String email)? addEmail,
    TResult Function(String phone)? addPhone,
    required TResult orElse(),
  }) {
    if (addSurname != null) {
      return addSurname(surname);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Registration value) registration,
    required TResult Function(_AddName value) addName,
    required TResult Function(_AddSurname value) addSurname,
    required TResult Function(_AddFatherName value) addFatherName,
    required TResult Function(_AddEmail value) addEmail,
    required TResult Function(_AddPhone value) addPhone,
  }) {
    return addSurname(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Registration value)? registration,
    TResult? Function(_AddName value)? addName,
    TResult? Function(_AddSurname value)? addSurname,
    TResult? Function(_AddFatherName value)? addFatherName,
    TResult? Function(_AddEmail value)? addEmail,
    TResult? Function(_AddPhone value)? addPhone,
  }) {
    return addSurname?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Registration value)? registration,
    TResult Function(_AddName value)? addName,
    TResult Function(_AddSurname value)? addSurname,
    TResult Function(_AddFatherName value)? addFatherName,
    TResult Function(_AddEmail value)? addEmail,
    TResult Function(_AddPhone value)? addPhone,
    required TResult orElse(),
  }) {
    if (addSurname != null) {
      return addSurname(this);
    }
    return orElse();
  }
}

abstract class _AddSurname implements RegistrationEvent {
  const factory _AddSurname({required final String surname}) = _$AddSurnameImpl;

  String get surname;
  @JsonKey(ignore: true)
  _$$AddSurnameImplCopyWith<_$AddSurnameImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddFatherNameImplCopyWith<$Res> {
  factory _$$AddFatherNameImplCopyWith(
          _$AddFatherNameImpl value, $Res Function(_$AddFatherNameImpl) then) =
      __$$AddFatherNameImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String fatherName});
}

/// @nodoc
class __$$AddFatherNameImplCopyWithImpl<$Res>
    extends _$RegistrationEventCopyWithImpl<$Res, _$AddFatherNameImpl>
    implements _$$AddFatherNameImplCopyWith<$Res> {
  __$$AddFatherNameImplCopyWithImpl(
      _$AddFatherNameImpl _value, $Res Function(_$AddFatherNameImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fatherName = null,
  }) {
    return _then(_$AddFatherNameImpl(
      fatherName: null == fatherName
          ? _value.fatherName
          : fatherName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddFatherNameImpl implements _AddFatherName {
  const _$AddFatherNameImpl({required this.fatherName});

  @override
  final String fatherName;

  @override
  String toString() {
    return 'RegistrationEvent.addFatherName(fatherName: $fatherName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddFatherNameImpl &&
            (identical(other.fatherName, fatherName) ||
                other.fatherName == fatherName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, fatherName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddFatherNameImplCopyWith<_$AddFatherNameImpl> get copyWith =>
      __$$AddFatherNameImplCopyWithImpl<_$AddFatherNameImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RegistrationModel registrationModel) registration,
    required TResult Function(String name) addName,
    required TResult Function(String surname) addSurname,
    required TResult Function(String fatherName) addFatherName,
    required TResult Function(String email) addEmail,
    required TResult Function(String phone) addPhone,
  }) {
    return addFatherName(fatherName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RegistrationModel registrationModel)? registration,
    TResult? Function(String name)? addName,
    TResult? Function(String surname)? addSurname,
    TResult? Function(String fatherName)? addFatherName,
    TResult? Function(String email)? addEmail,
    TResult? Function(String phone)? addPhone,
  }) {
    return addFatherName?.call(fatherName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RegistrationModel registrationModel)? registration,
    TResult Function(String name)? addName,
    TResult Function(String surname)? addSurname,
    TResult Function(String fatherName)? addFatherName,
    TResult Function(String email)? addEmail,
    TResult Function(String phone)? addPhone,
    required TResult orElse(),
  }) {
    if (addFatherName != null) {
      return addFatherName(fatherName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Registration value) registration,
    required TResult Function(_AddName value) addName,
    required TResult Function(_AddSurname value) addSurname,
    required TResult Function(_AddFatherName value) addFatherName,
    required TResult Function(_AddEmail value) addEmail,
    required TResult Function(_AddPhone value) addPhone,
  }) {
    return addFatherName(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Registration value)? registration,
    TResult? Function(_AddName value)? addName,
    TResult? Function(_AddSurname value)? addSurname,
    TResult? Function(_AddFatherName value)? addFatherName,
    TResult? Function(_AddEmail value)? addEmail,
    TResult? Function(_AddPhone value)? addPhone,
  }) {
    return addFatherName?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Registration value)? registration,
    TResult Function(_AddName value)? addName,
    TResult Function(_AddSurname value)? addSurname,
    TResult Function(_AddFatherName value)? addFatherName,
    TResult Function(_AddEmail value)? addEmail,
    TResult Function(_AddPhone value)? addPhone,
    required TResult orElse(),
  }) {
    if (addFatherName != null) {
      return addFatherName(this);
    }
    return orElse();
  }
}

abstract class _AddFatherName implements RegistrationEvent {
  const factory _AddFatherName({required final String fatherName}) =
      _$AddFatherNameImpl;

  String get fatherName;
  @JsonKey(ignore: true)
  _$$AddFatherNameImplCopyWith<_$AddFatherNameImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddEmailImplCopyWith<$Res> {
  factory _$$AddEmailImplCopyWith(
          _$AddEmailImpl value, $Res Function(_$AddEmailImpl) then) =
      __$$AddEmailImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$AddEmailImplCopyWithImpl<$Res>
    extends _$RegistrationEventCopyWithImpl<$Res, _$AddEmailImpl>
    implements _$$AddEmailImplCopyWith<$Res> {
  __$$AddEmailImplCopyWithImpl(
      _$AddEmailImpl _value, $Res Function(_$AddEmailImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$AddEmailImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddEmailImpl implements _AddEmail {
  const _$AddEmailImpl({required this.email});

  @override
  final String email;

  @override
  String toString() {
    return 'RegistrationEvent.addEmail(email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddEmailImpl &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddEmailImplCopyWith<_$AddEmailImpl> get copyWith =>
      __$$AddEmailImplCopyWithImpl<_$AddEmailImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RegistrationModel registrationModel) registration,
    required TResult Function(String name) addName,
    required TResult Function(String surname) addSurname,
    required TResult Function(String fatherName) addFatherName,
    required TResult Function(String email) addEmail,
    required TResult Function(String phone) addPhone,
  }) {
    return addEmail(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RegistrationModel registrationModel)? registration,
    TResult? Function(String name)? addName,
    TResult? Function(String surname)? addSurname,
    TResult? Function(String fatherName)? addFatherName,
    TResult? Function(String email)? addEmail,
    TResult? Function(String phone)? addPhone,
  }) {
    return addEmail?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RegistrationModel registrationModel)? registration,
    TResult Function(String name)? addName,
    TResult Function(String surname)? addSurname,
    TResult Function(String fatherName)? addFatherName,
    TResult Function(String email)? addEmail,
    TResult Function(String phone)? addPhone,
    required TResult orElse(),
  }) {
    if (addEmail != null) {
      return addEmail(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Registration value) registration,
    required TResult Function(_AddName value) addName,
    required TResult Function(_AddSurname value) addSurname,
    required TResult Function(_AddFatherName value) addFatherName,
    required TResult Function(_AddEmail value) addEmail,
    required TResult Function(_AddPhone value) addPhone,
  }) {
    return addEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Registration value)? registration,
    TResult? Function(_AddName value)? addName,
    TResult? Function(_AddSurname value)? addSurname,
    TResult? Function(_AddFatherName value)? addFatherName,
    TResult? Function(_AddEmail value)? addEmail,
    TResult? Function(_AddPhone value)? addPhone,
  }) {
    return addEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Registration value)? registration,
    TResult Function(_AddName value)? addName,
    TResult Function(_AddSurname value)? addSurname,
    TResult Function(_AddFatherName value)? addFatherName,
    TResult Function(_AddEmail value)? addEmail,
    TResult Function(_AddPhone value)? addPhone,
    required TResult orElse(),
  }) {
    if (addEmail != null) {
      return addEmail(this);
    }
    return orElse();
  }
}

abstract class _AddEmail implements RegistrationEvent {
  const factory _AddEmail({required final String email}) = _$AddEmailImpl;

  String get email;
  @JsonKey(ignore: true)
  _$$AddEmailImplCopyWith<_$AddEmailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddPhoneImplCopyWith<$Res> {
  factory _$$AddPhoneImplCopyWith(
          _$AddPhoneImpl value, $Res Function(_$AddPhoneImpl) then) =
      __$$AddPhoneImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String phone});
}

/// @nodoc
class __$$AddPhoneImplCopyWithImpl<$Res>
    extends _$RegistrationEventCopyWithImpl<$Res, _$AddPhoneImpl>
    implements _$$AddPhoneImplCopyWith<$Res> {
  __$$AddPhoneImplCopyWithImpl(
      _$AddPhoneImpl _value, $Res Function(_$AddPhoneImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phone = null,
  }) {
    return _then(_$AddPhoneImpl(
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddPhoneImpl implements _AddPhone {
  const _$AddPhoneImpl({required this.phone});

  @override
  final String phone;

  @override
  String toString() {
    return 'RegistrationEvent.addPhone(phone: $phone)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddPhoneImpl &&
            (identical(other.phone, phone) || other.phone == phone));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phone);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddPhoneImplCopyWith<_$AddPhoneImpl> get copyWith =>
      __$$AddPhoneImplCopyWithImpl<_$AddPhoneImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RegistrationModel registrationModel) registration,
    required TResult Function(String name) addName,
    required TResult Function(String surname) addSurname,
    required TResult Function(String fatherName) addFatherName,
    required TResult Function(String email) addEmail,
    required TResult Function(String phone) addPhone,
  }) {
    return addPhone(phone);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RegistrationModel registrationModel)? registration,
    TResult? Function(String name)? addName,
    TResult? Function(String surname)? addSurname,
    TResult? Function(String fatherName)? addFatherName,
    TResult? Function(String email)? addEmail,
    TResult? Function(String phone)? addPhone,
  }) {
    return addPhone?.call(phone);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RegistrationModel registrationModel)? registration,
    TResult Function(String name)? addName,
    TResult Function(String surname)? addSurname,
    TResult Function(String fatherName)? addFatherName,
    TResult Function(String email)? addEmail,
    TResult Function(String phone)? addPhone,
    required TResult orElse(),
  }) {
    if (addPhone != null) {
      return addPhone(phone);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Registration value) registration,
    required TResult Function(_AddName value) addName,
    required TResult Function(_AddSurname value) addSurname,
    required TResult Function(_AddFatherName value) addFatherName,
    required TResult Function(_AddEmail value) addEmail,
    required TResult Function(_AddPhone value) addPhone,
  }) {
    return addPhone(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Registration value)? registration,
    TResult? Function(_AddName value)? addName,
    TResult? Function(_AddSurname value)? addSurname,
    TResult? Function(_AddFatherName value)? addFatherName,
    TResult? Function(_AddEmail value)? addEmail,
    TResult? Function(_AddPhone value)? addPhone,
  }) {
    return addPhone?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Registration value)? registration,
    TResult Function(_AddName value)? addName,
    TResult Function(_AddSurname value)? addSurname,
    TResult Function(_AddFatherName value)? addFatherName,
    TResult Function(_AddEmail value)? addEmail,
    TResult Function(_AddPhone value)? addPhone,
    required TResult orElse(),
  }) {
    if (addPhone != null) {
      return addPhone(this);
    }
    return orElse();
  }
}

abstract class _AddPhone implements RegistrationEvent {
  const factory _AddPhone({required final String phone}) = _$AddPhoneImpl;

  String get phone;
  @JsonKey(ignore: true)
  _$$AddPhoneImplCopyWith<_$AddPhoneImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RegistrationState {
  StateStatus get stateStatus => throw _privateConstructorUsedError;
  RegistrationModel get registrationModel => throw _privateConstructorUsedError;
  bool get isButtonAvailable => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RegistrationStateCopyWith<RegistrationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegistrationStateCopyWith<$Res> {
  factory $RegistrationStateCopyWith(
          RegistrationState value, $Res Function(RegistrationState) then) =
      _$RegistrationStateCopyWithImpl<$Res, RegistrationState>;
  @useResult
  $Res call(
      {StateStatus stateStatus,
      RegistrationModel registrationModel,
      bool isButtonAvailable});

  $StateStatusCopyWith<$Res> get stateStatus;
  $RegistrationModelCopyWith<$Res> get registrationModel;
}

/// @nodoc
class _$RegistrationStateCopyWithImpl<$Res, $Val extends RegistrationState>
    implements $RegistrationStateCopyWith<$Res> {
  _$RegistrationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stateStatus = null,
    Object? registrationModel = null,
    Object? isButtonAvailable = null,
  }) {
    return _then(_value.copyWith(
      stateStatus: null == stateStatus
          ? _value.stateStatus
          : stateStatus // ignore: cast_nullable_to_non_nullable
              as StateStatus,
      registrationModel: null == registrationModel
          ? _value.registrationModel
          : registrationModel // ignore: cast_nullable_to_non_nullable
              as RegistrationModel,
      isButtonAvailable: null == isButtonAvailable
          ? _value.isButtonAvailable
          : isButtonAvailable // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $StateStatusCopyWith<$Res> get stateStatus {
    return $StateStatusCopyWith<$Res>(_value.stateStatus, (value) {
      return _then(_value.copyWith(stateStatus: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $RegistrationModelCopyWith<$Res> get registrationModel {
    return $RegistrationModelCopyWith<$Res>(_value.registrationModel, (value) {
      return _then(_value.copyWith(registrationModel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RegistrationStateImplCopyWith<$Res>
    implements $RegistrationStateCopyWith<$Res> {
  factory _$$RegistrationStateImplCopyWith(_$RegistrationStateImpl value,
          $Res Function(_$RegistrationStateImpl) then) =
      __$$RegistrationStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {StateStatus stateStatus,
      RegistrationModel registrationModel,
      bool isButtonAvailable});

  @override
  $StateStatusCopyWith<$Res> get stateStatus;
  @override
  $RegistrationModelCopyWith<$Res> get registrationModel;
}

/// @nodoc
class __$$RegistrationStateImplCopyWithImpl<$Res>
    extends _$RegistrationStateCopyWithImpl<$Res, _$RegistrationStateImpl>
    implements _$$RegistrationStateImplCopyWith<$Res> {
  __$$RegistrationStateImplCopyWithImpl(_$RegistrationStateImpl _value,
      $Res Function(_$RegistrationStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stateStatus = null,
    Object? registrationModel = null,
    Object? isButtonAvailable = null,
  }) {
    return _then(_$RegistrationStateImpl(
      stateStatus: null == stateStatus
          ? _value.stateStatus
          : stateStatus // ignore: cast_nullable_to_non_nullable
              as StateStatus,
      registrationModel: null == registrationModel
          ? _value.registrationModel
          : registrationModel // ignore: cast_nullable_to_non_nullable
              as RegistrationModel,
      isButtonAvailable: null == isButtonAvailable
          ? _value.isButtonAvailable
          : isButtonAvailable // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$RegistrationStateImpl implements _RegistrationState {
  const _$RegistrationStateImpl(
      {required this.stateStatus,
      required this.registrationModel,
      required this.isButtonAvailable});

  @override
  final StateStatus stateStatus;
  @override
  final RegistrationModel registrationModel;
  @override
  final bool isButtonAvailable;

  @override
  String toString() {
    return 'RegistrationState(stateStatus: $stateStatus, registrationModel: $registrationModel, isButtonAvailable: $isButtonAvailable)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegistrationStateImpl &&
            (identical(other.stateStatus, stateStatus) ||
                other.stateStatus == stateStatus) &&
            (identical(other.registrationModel, registrationModel) ||
                other.registrationModel == registrationModel) &&
            (identical(other.isButtonAvailable, isButtonAvailable) ||
                other.isButtonAvailable == isButtonAvailable));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, stateStatus, registrationModel, isButtonAvailable);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegistrationStateImplCopyWith<_$RegistrationStateImpl> get copyWith =>
      __$$RegistrationStateImplCopyWithImpl<_$RegistrationStateImpl>(
          this, _$identity);
}

abstract class _RegistrationState implements RegistrationState {
  const factory _RegistrationState(
      {required final StateStatus stateStatus,
      required final RegistrationModel registrationModel,
      required final bool isButtonAvailable}) = _$RegistrationStateImpl;

  @override
  StateStatus get stateStatus;
  @override
  RegistrationModel get registrationModel;
  @override
  bool get isButtonAvailable;
  @override
  @JsonKey(ignore: true)
  _$$RegistrationStateImplCopyWith<_$RegistrationStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
