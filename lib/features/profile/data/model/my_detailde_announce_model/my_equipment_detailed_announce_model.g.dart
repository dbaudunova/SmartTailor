// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_equipment_detailed_announce_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MyEquipmentDetailedAnnounceModel _$MyEquipmentDetailedAnnounceModelFromJson(
        Map<String, dynamic> json) =>
    MyEquipmentDetailedAnnounceModel(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      description: json['description'] as String,
      price: (json['price'] as num).toDouble(),
      contactInfo: json['contactInfo'] as String,
      authorImage: json['authorImage'] as String,
      authorFullName: json['authorFullName'] as String,
      equipmentImages: (json['equipmentImages'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      equipmentBuyers: (json['equipmentBuyers'] as List<dynamic>?)
          ?.map((e) => EquipmentBuyers.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MyEquipmentDetailedAnnounceModelToJson(
        MyEquipmentDetailedAnnounceModel instance) =>
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
