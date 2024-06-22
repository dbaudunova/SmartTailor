// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_place_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderPlaceModelImpl _$$OrderPlaceModelImplFromJson(
        Map<String, dynamic> json) =>
    _$OrderPlaceModelImpl(
      type: json['type'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      images:
          (json['images'] as List<dynamic>).map((e) => e as String).toList(),
      sizes: (json['sizes'] as List<dynamic>).map((e) => e as String).toList(),
      date: json['date'] as String,
      contactInfo: json['contactInfo'] as String,
      summ: (json['summ'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$OrderPlaceModelImplToJson(
        _$OrderPlaceModelImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'name': instance.name,
      'description': instance.description,
      'images': instance.images,
      'sizes': instance.sizes,
      'date': instance.date,
      'contactInfo': instance.contactInfo,
      'summ': instance.summ,
    };
