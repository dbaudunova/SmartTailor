// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_order_detailed_announce_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MyOrderAnnounceDetaileModel _$MyOrderAnnounceDetaileModelFromJson(
        Map<String, dynamic> json) =>
    MyOrderAnnounceDetaileModel(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      description: json['description'] as String,
      price: (json['price'] as num).toDouble(),
      contactInfo: json['contactInfo'] as String,
      authorImage: json['authorImage'] as String,
      authorFullName: json['authorFullName'] as String,
      orderImages: (json['orderImages'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      dateOfExecution: json['dateOfExecution'] as String?,
      ordersStatus: json['ordersStatus'] as String?,
      orderItems: (json['orderItems'] as List<dynamic>?)
          ?.map((e) => OrderItems.fromJson(e as Map<String, dynamic>))
          .toList(),
      orderCandidates: (json['orderCandidates'] as List<dynamic>?)
          ?.map((e) => OrderCandidates.fromJson(e as Map<String, dynamic>))
          .toList(),
      executor: json['executor'] == null
          ? null
          : OrganizationExecutor.fromJson(
              json['executor'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$MyOrderAnnounceDetaileModelToJson(
        MyOrderAnnounceDetaileModel instance) =>
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
      'executor': instance.executor,
    };
