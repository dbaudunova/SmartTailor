// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_detailed_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderItems _$OrderItemsFromJson(Map<String, dynamic> json) => OrderItems(
      size: json['size'] as String?,
      quantity: (json['quantity'] as num?)?.toInt(),
    );

Map<String, dynamic> _$OrderItemsToJson(OrderItems instance) =>
    <String, dynamic>{
      'size': instance.size,
      'quantity': instance.quantity,
    };

OrderCandidates _$OrderCandidatesFromJson(Map<String, dynamic> json) =>
    OrderCandidates(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$OrderCandidatesToJson(OrderCandidates instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
    };
