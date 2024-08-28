// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'registration_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RegistrationModelImpl _$$RegistrationModelImplFromJson(
        Map<String, dynamic> json) =>
    _$RegistrationModelImpl(
      email: json['email'] as String,
      name: json['name'] as String,
      surname: json['surname'] as String,
      patronymic: json['patronymic'] as String,
      phoneNumber: json['phoneNumber'] as String,
    );

Map<String, dynamic> _$$RegistrationModelImplToJson(
        _$RegistrationModelImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'name': instance.name,
      'surname': instance.surname,
      'patronymic': instance.patronymic,
      'phoneNumber': instance.phoneNumber,
    };
