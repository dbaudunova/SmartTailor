// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'organization_info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrganizationInfoModelImpl _$$OrganizationInfoModelImplFromJson(
        Map<String, dynamic> json) =>
    _$OrganizationInfoModelImpl(
      id: (json['id'] as num?)?.toInt(),
      imagePath: json['imagePath'] as String?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      createdAt: json['createdAt'] as String?,
    );

Map<String, dynamic> _$$OrganizationInfoModelImplToJson(
        _$OrganizationInfoModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'imagePath': instance.imagePath,
      'name': instance.name,
      'description': instance.description,
      'createdAt': instance.createdAt,
    };
