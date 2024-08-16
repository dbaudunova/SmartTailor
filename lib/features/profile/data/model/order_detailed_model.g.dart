// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_detailed_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderDetailedModel _$OrderDetailedModelFromJson(Map<String, dynamic> json) =>
    OrderDetailedModel(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      description: json['description'] as String?,
      authorFullName: json['authorFullName'] as String?,
      authorImage: json['authorImage'] as String?,
      contactInfo: json['contactInfo'] as String?,
      dateOfExecution: json['dateOfExecution'] as String?,
      orderCandidates: (json['orderCandidates'] as List<dynamic>?)
          ?.map((e) => OrderCandidates.fromJson(e as Map<String, dynamic>))
          .toList(),
      orderImages: (json['orderImages'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      orderItems: (json['orderItems'] as List<dynamic>?)
          !.map((e) => OrderItems.fromJson(e as Map<String, dynamic>))
          .toList(),
      ordersStatus: json['ordersStatus'] as String?,
      price: (json['price'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$OrderDetailedModelToJson(OrderDetailedModel instance) =>
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
      'ordersStatus': instance.ordersStatus,
      'orderItems': instance.orderItems,
      'orderCandidates': instance.orderCandidates,
    };
