// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'equipment_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EquipmentDetailModelImpl _$$EquipmentDetailModelImplFromJson(
        Map<String, dynamic> json) =>
    _$EquipmentDetailModelImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      description: json['description'] as String,
      price: (json['price'] as num).toInt(),
      contactInfo: json['contactInfo'] as String,
      authorImage: json['authorImage'] as String,
      authorFullName: json['authorFullName'] as String,
      equipmentImages: (json['equipmentImages'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      quantity: (json['quantity'] as num).toInt(),
    );

Map<String, dynamic> _$$EquipmentDetailModelImplToJson(
        _$EquipmentDetailModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'price': instance.price,
      'contactInfo': instance.contactInfo,
      'authorImage': instance.authorImage,
      'authorFullName': instance.authorFullName,
      'equipmentImages': instance.equipmentImages,
      'quantity': instance.quantity,
    };
