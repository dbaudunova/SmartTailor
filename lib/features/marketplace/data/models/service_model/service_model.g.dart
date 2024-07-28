// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ServiceModelImpl _$$ServiceModelImplFromJson(Map<String, dynamic> json) =>
    _$ServiceModelImpl(
      id: (json['id'] as num).toInt(),
      imagePath: json['imagePath'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      price: (json['price'] as num).toInt(),
      authorImagePath: json['authorImagePath'] as String,
      authorName: json['authorName'] as String,
      authorSurname: json['authorSurname'] as String,
      patronymic: json['patronymic'] as String,
    );

Map<String, dynamic> _$$ServiceModelImplToJson(_$ServiceModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'imagePath': instance.imagePath,
      'name': instance.name,
      'description': instance.description,
      'price': instance.price,
      'authorImagePath': instance.authorImagePath,
      'authorName': instance.authorName,
      'authorSurname': instance.authorSurname,
      'patronymic': instance.patronymic,
    };
