// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'announcement_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AnnouncementEntity _$AnnouncementEntityFromJson(Map<String, dynamic> json) =>
    AnnouncementEntity(
      id: (json['id'] as num?)?.toInt(),
      imagePath: json['imagePath'] as String?,
      type: json['type'] as String?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      createdAt: json['createdAt'] as String?,
    );

Map<String, dynamic> _$AnnouncementEntityToJson(AnnouncementEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'imagePath': instance.imagePath,
      'type': instance.type,
      'name': instance.name,
      'description': instance.description,
      'createdAt': instance.createdAt,
    };
