// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'confirmation_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ConfirmationModelImpl _$$ConfirmationModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ConfirmationModelImpl(
      email: json['email'] as String,
      code: json['code'] as String,
    );

Map<String, dynamic> _$$ConfirmationModelImplToJson(
        _$ConfirmationModelImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'code': instance.code,
    };
