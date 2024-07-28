// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'equipment_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EquipmentModelImpl _$$EquipmentModelImplFromJson(Map<String, dynamic> json) =>
    _$EquipmentModelImpl(
      equipmentId: (json['equipmentId'] as num).toInt(),
      equipmentPhotoUrl: json['equipmentPhotoUrl'] as String,
      name: json['name'] as String,
      price: (json['price'] as num).toInt(),
      authorImageUrl: json['authorImageUrl'] as String,
      authorFullName: json['authorFullName'] as String,
      description: json['description'] as String,
    );

Map<String, dynamic> _$$EquipmentModelImplToJson(
        _$EquipmentModelImpl instance) =>
    <String, dynamic>{
      'equipmentId': instance.equipmentId,
      'equipmentPhotoUrl': instance.equipmentPhotoUrl,
      'name': instance.name,
      'price': instance.price,
      'authorImageUrl': instance.authorImageUrl,
      'authorFullName': instance.authorFullName,
      'description': instance.description,
    };
