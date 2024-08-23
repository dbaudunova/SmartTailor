// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'advertisement_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AdvertisementModelImpl _$$AdvertisementModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AdvertisementModelImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      description: json['description'] as String,
      price: (json['price'] as num?)?.toDouble(),
      imageUrl: json['imageUrl'] as String,
      authorFullName: json['authorFullName'] as String?,
      authorImageUrl: json['authorImageUrl'] as String?,
      type: json['type'] as String?,
    );

Map<String, dynamic> _$$AdvertisementModelImplToJson(
        _$AdvertisementModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'price': instance.price,
      'imageUrl': instance.imageUrl,
      'authorFullName': instance.authorFullName,
      'authorImageUrl': instance.authorImageUrl,
      'type': instance.type,
    };

_$AdvertisementResponseModelImpl _$$AdvertisementResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AdvertisementResponseModelImpl(
      advertisement: (json['advertisement'] as List<dynamic>)
          .map((e) => AdvertisementModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      isLast: json['isLast'] as bool,
      totalCount: (json['totalCount'] as num).toInt(),
    );

Map<String, dynamic> _$$AdvertisementResponseModelImplToJson(
        _$AdvertisementResponseModelImpl instance) =>
    <String, dynamic>{
      'advertisement': instance.advertisement,
      'isLast': instance.isLast,
      'totalCount': instance.totalCount,
    };
