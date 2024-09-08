// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_services_detailed_announce_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MyServiceDetailedAnnounceModel _$MyServiceDetailedAnnounceModelFromJson(
        Map<String, dynamic> json) =>
    MyServiceDetailedAnnounceModel(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      description: json['description'] as String,
      price: (json['price'] as num).toDouble(),
      contactInfo: json['contactInfo'] as String,
      authorImage: json['authorImage'] as String,
      authorFullName: json['authorFullName'] as String,
      serviceImages: (json['serviceImages'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      serviceApplicants: (json['serviceApplicants'] as List<dynamic>?)
          ?.map((e) => EquipmentBuyers.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MyServiceDetailedAnnounceModelToJson(
        MyServiceDetailedAnnounceModel instance) =>
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
