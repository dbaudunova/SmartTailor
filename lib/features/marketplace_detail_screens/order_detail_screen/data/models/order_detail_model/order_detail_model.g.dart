// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderDetailModelImpl _$$OrderDetailModelImplFromJson(
        Map<String, dynamic> json) =>
    _$OrderDetailModelImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      description: json['description'] as String,
      price: (json['price'] as num).toInt(),
      contactInfo: json['contactInfo'] as String,
      authorImage: json['authorImage'] as String,
      authorFullName: json['authorFullName'] as String,
      orderImages: (json['orderImages'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      dateOfExecution: json['dateOfExecution'] as String,
      orderItems: (json['orderItems'] as List<dynamic>)
          .map((e) => Item.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$OrderDetailModelImplToJson(
        _$OrderDetailModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'price': instance.price,
      'contactInfo': instance.contactInfo,
      'authorImage': instance.authorImage,
      'authorFullName': instance.authorFullName,
      'orderImages': instance.orderImages,
      'dateOfExecution': instance.dateOfExecution,
      'orderItems': instance.orderItems,
    };
