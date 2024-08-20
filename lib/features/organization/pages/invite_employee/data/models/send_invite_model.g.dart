// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'send_invite_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SendInviteModelImpl _$$SendInviteModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SendInviteModelImpl(
      surname: json['surname'] as String,
      name: json['name'] as String,
      patronymic: json['patronymic'] as String,
      email: json['email'] as String,
      phoneNumber: json['phoneNumber'] as String,
      position: json['position'] as String,
    );

Map<String, dynamic> _$$SendInviteModelImplToJson(
        _$SendInviteModelImpl instance) =>
    <String, dynamic>{
      'surname': instance.surname,
      'name': instance.name,
      'patronymic': instance.patronymic,
      'email': instance.email,
      'phoneNumber': instance.phoneNumber,
      'position': instance.position,
    };
