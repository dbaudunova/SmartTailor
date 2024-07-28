// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderModelImpl _$$OrderModelImplFromJson(Map<String, dynamic> json) =>
    _$OrderModelImpl(
      orderId: (json['orderId'] as num).toInt(),
      orderPhotoUrl: json['orderPhotoUrl'] as String,
      name: json['name'] as String,
      orderDescription: json['orderDescription'] as String,
      price: (json['price'] as num).toInt(),
      dateOfException: json['dateOfException'] as String,
    );

Map<String, dynamic> _$$OrderModelImplToJson(_$OrderModelImpl instance) =>
    <String, dynamic>{
      'orderId': instance.orderId,
      'orderPhotoUrl': instance.orderPhotoUrl,
      'name': instance.name,
      'orderDescription': instance.orderDescription,
      'price': instance.price,
      'dateOfException': instance.dateOfException,
    };
