// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ServiceDetailModelImpl _$$ServiceDetailModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ServiceDetailModelImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      description: json['description'] as String,
      price: (json['price'] as num).toInt(),
      contactInfo: json['contactInfo'] as String,
      authorImage: json['authorImage'] as String,
      authorFullName: json['authorFullName'] as String,
      serviceImages: (json['serviceImages'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$ServiceDetailModelImplToJson(
        _$ServiceDetailModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'price': instance.price,
      'contactInfo': instance.contactInfo,
      'authorImage': instance.authorImage,
      'authorFullName': instance.authorFullName,
      'serviceImages': instance.serviceImages,
    };
