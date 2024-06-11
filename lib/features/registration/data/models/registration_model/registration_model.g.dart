// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'registration_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RegistrationModelImpl _$$RegistrationModelImplFromJson(
        Map<String, dynamic> json) =>
    _$RegistrationModelImpl(
      surname: json['surname'] as String,
      name: json['name'] as String,
      fatherName: json['fatherName'] as String,
      email: json['email'] as String,
      phone: json['phone'] as String,
      rememberMe: json['rememberMe'] as bool,
    );

Map<String, dynamic> _$$RegistrationModelImplToJson(
        _$RegistrationModelImpl instance) =>
    <String, dynamic>{
      'surname': instance.surname,
      'name': instance.name,
      'fatherName': instance.fatherName,
      'email': instance.email,
      'phone': instance.phone,
      'rememberMe': instance.rememberMe,
    };
