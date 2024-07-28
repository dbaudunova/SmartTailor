// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_place_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderPlaceModelImpl _$$OrderPlaceModelImplFromJson(
        Map<String, dynamic> json) =>
    _$OrderPlaceModelImpl(
      name: json['name'] as String,
      description: json['description'] as String,
      images:
          (json['images'] as List<dynamic>).map((e) => e as String).toList(),
      items: (json['items'] as List<dynamic>)
          .map((e) => Item.fromJson(e as Map<String, dynamic>))
          .toList(),
      dateOfExecution: json['dateOfExecution'] as String?,
      contactInfo: json['contactInfo'] as String,
      price: json['price'] as String?,
    );

Map<String, dynamic> _$$OrderPlaceModelImplToJson(
        _$OrderPlaceModelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'images': instance.images,
      'items': instance.items,
      'dateOfExecution': instance.dateOfExecution,
      'contactInfo': instance.contactInfo,
      'price': instance.price,
    };

_$ItemImpl _$$ItemImplFromJson(Map<String, dynamic> json) => _$ItemImpl(
      size: json['size'] as String,
      quantity: (json['quantity'] as num).toInt(),
    );

Map<String, dynamic> _$$ItemImplToJson(_$ItemImpl instance) =>
    <String, dynamic>{
      'size': instance.size,
      'quantity': instance.quantity,
    };
