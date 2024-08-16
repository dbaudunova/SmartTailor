// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service_detailed_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ServiceDetailedModel _$ServiceDetailedModelFromJson(
        Map<String, dynamic> json) =>
    ServiceDetailedModel(
      authorFullName: json['authorFullName'] as String?,
      authorImage: json['authorImage'] as String?,
      contactInfo: json['contactInfo'] as String?,
      description: json['description'] as String?,
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      price: (json['price'] as num?)?.toDouble(),
      serviceImages: (json['serviceImages'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      serviceApplicants: (json['serviceApplicants'] as List<dynamic>?)
          ?.map((e) => EquipmentBuyers.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ServiceDetailedModelToJson(
        ServiceDetailedModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'price': instance.price,
      'contactInfo': instance.contactInfo,
      'authorImage': instance.authorImage,
      'authorFullName': instance.authorFullName,
      'serviceImages': instance.serviceImages,
      'serviceApplicants': instance.serviceApplicants,
    };
