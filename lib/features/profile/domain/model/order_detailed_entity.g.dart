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
      employeeId: (json['employeeId'] as num?)?.toInt(),
      employeeFullName: json['employeeFullName'] as String?,
      employeeEmail: json['employeeEmail'] as String?,
      employeePhoneNumber: json['employeePhoneNumber'] as String?,
      organizationName: json['organizationName'] as String?,
    );

Map<String, dynamic> _$OrderCandidatesToJson(OrderCandidates instance) =>
    <String, dynamic>{
      'employeeId': instance.employeeId,
      'employeeFullName': instance.employeeFullName,
      'employeeEmail': instance.employeeEmail,
      'employeePhoneNumber': instance.employeePhoneNumber,
      'organizationName': instance.organizationName,
    };
