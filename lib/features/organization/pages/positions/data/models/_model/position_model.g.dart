// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'position_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PositionModelImpl _$$PositionModelImplFromJson(Map<String, dynamic> json) =>
    _$PositionModelImpl(
      positionName: json['positionName'] as String?,
      weight: (json['weight'] as num?)?.toInt(),
      accessRights: (json['accessRights'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$PositionModelImplToJson(_$PositionModelImpl instance) =>
    <String, dynamic>{
      'positionName': instance.positionName,
      'weight': instance.weight,
      'accessRights': instance.accessRights,
    };
