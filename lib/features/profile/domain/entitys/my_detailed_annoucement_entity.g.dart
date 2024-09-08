// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_detailed_annoucement_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MyDetailedAnnounceEntityImpl _$$MyDetailedAnnounceEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$MyDetailedAnnounceEntityImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      description: json['description'] as String,
      price: (json['price'] as num).toDouble(),
      contactInfo: json['contactInfo'] as String,
      authorImage: json['authorImage'] as String,
      authorFullName: json['authorFullName'] as String,
      images:
          (json['images'] as List<dynamic>).map((e) => e as String).toList(),
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
      equipmentBuyers: (json['equipmentBuyers'] as List<dynamic>?)
          ?.map((e) => EquipmentBuyers.fromJson(e as Map<String, dynamic>))
          .toList(),
      serviceApplicants: (json['serviceApplicants'] as List<dynamic>?)
          ?.map((e) => EquipmentBuyers.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$MyDetailedAnnounceEntityImplToJson(
        _$MyDetailedAnnounceEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'price': instance.price,
      'contactInfo': instance.contactInfo,
      'authorImage': instance.authorImage,
      'authorFullName': instance.authorFullName,
      'images': instance.images,
      'dateOfExecution': instance.dateOfExecution,
      'ordersStatus': instance.ordersStatus,
      'orderItems': instance.orderItems,
      'orderCandidates': instance.orderCandidates,
      'executor': instance.executor,
      'equipmentBuyers': instance.equipmentBuyers,
      'serviceApplicants': instance.serviceApplicants,
    };
