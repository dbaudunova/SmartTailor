// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'equipment_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EquipmentModelImpl _$$EquipmentModelImplFromJson(Map<String, dynamic> json) =>
    _$EquipmentModelImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      description: json['description'] as String,
      price: (json['price'] as num).toInt(),
      equipmentImageUrl: json['equipmentImageUrl'] as String,
      authorFullName: json['authorFullName'] as String,
      authorImageUrl: json['authorImageUrl'] as String,
    );

Map<String, dynamic> _$$EquipmentModelImplToJson(
        _$EquipmentModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'price': instance.price,
      'equipmentImageUrl': instance.equipmentImageUrl,
      'authorFullName': instance.authorFullName,
      'authorImageUrl': instance.authorImageUrl,
    };
