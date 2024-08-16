// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'history_order_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HistoryOrderListModelImpl _$$HistoryOrderListModelImplFromJson(
        Map<String, dynamic> json) =>
    _$HistoryOrderListModelImpl(
      totalCount: (json['totalCount'] as num?)?.toInt(),
      orders: (json['orders'] as List<dynamic>?)
          ?.map((e) => CurrentOrderModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      isLast: json['isLast'] as bool?,
      organizationId: (json['organizationId'] as num?)?.toInt(),
      organizationName: json['organizationName'] as String?,
      organizationDescription: json['organizationDescription'] as String?,
    );

Map<String, dynamic> _$$HistoryOrderListModelImplToJson(
        _$HistoryOrderListModelImpl instance) =>
    <String, dynamic>{
      'totalCount': instance.totalCount,
      'orders': instance.orders,
      'isLast': instance.isLast,
      'organizationId': instance.organizationId,
      'organizationName': instance.organizationName,
      'organizationDescription': instance.organizationDescription,
    };
