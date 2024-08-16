// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'equipment_detailed_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EquipmentDetailedModel _$EquipmentDetailedModelFromJson(
        Map<String, dynamic> json) =>
    EquipmentDetailedModel(
      authorFullName: json['authorFullName'] as String?,
      authorImage: json['authorImage'] as String?,
      contactInfo: json['contactInfo'] as String?,
      description: json['description'] as String?,
      equipmentImages: (json['equipmentImages'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      price: (json['price'] as num?)?.toDouble(),
      equipmentBuyers: (json['equipmentBuyers'] as List<dynamic>?)
          ?.map((e) => EquipmentBuyers.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$EquipmentDetailedModelToJson(
        EquipmentDetailedModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'price': instance.price,
      'contactInfo': instance.contactInfo,
      'authorImage': instance.authorImage,
      'authorFullName': instance.authorFullName,
      'equipmentImages': instance.equipmentImages,
      'equipmentBuyers': instance.equipmentBuyers,
    };
