// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProfileModel _$ProfileModelFromJson(Map<String, dynamic> json) => ProfileModel(
      id: (json['id'] as num?)?.toInt(),
      imagePath: json['imagePath'] as String?,
      name: json['name'] as String?,
      surname: json['surname'] as String?,
      patronymic: json['patronymic'] as String?,
      email: json['email'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      hasSubscription: json['hasSubscription'] as bool?,
    );

Map<String, dynamic> _$ProfileModelToJson(ProfileModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'imagePath': instance.imagePath,
      'name': instance.name,
      'surname': instance.surname,
      'patronymic': instance.patronymic,
      'email': instance.email,
      'phoneNumber': instance.phoneNumber,
      'hasSubscription': instance.hasSubscription,
    };
