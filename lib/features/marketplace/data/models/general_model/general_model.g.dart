// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'general_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GeneralModelImpl _$$GeneralModelImplFromJson(Map<String, dynamic> json) =>
    _$GeneralModelImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      description: json['description'] as String,
      price: (json['price'] as num).toInt(),
      imageUrl: json['imageUrl'] as String,
      authorFullName: json['authorFullName'] as String,
      authorImageUrl: json['authorImageUrl'] as String,
    );

Map<String, dynamic> _$$GeneralModelImplToJson(_$GeneralModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'price': instance.price,
      'imageUrl': instance.imageUrl,
      'authorFullName': instance.authorFullName,
      'authorImageUrl': instance.authorImageUrl,
    };
