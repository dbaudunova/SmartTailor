// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'current_order_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CurrentOrderModelImpl _$$CurrentOrderModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CurrentOrderModelImpl(
      id: (json['id'] as num?)?.toInt(),
      imageUrl: json['imageUrl'] as String?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      price: (json['price'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$CurrentOrderModelImplToJson(
        _$CurrentOrderModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'imageUrl': instance.imageUrl,
      'name': instance.name,
      'description': instance.description,
      'price': instance.price,
    };
