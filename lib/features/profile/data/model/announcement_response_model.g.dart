// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'announcement_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AnnouncementResponseModel _$AnnouncementResponseModelFromJson(
        Map<String, dynamic> json) =>
    AnnouncementResponseModel(
      advertisement: (json['advertisement'] as List<dynamic>?)
          ?.map((e) => AnnouncementEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      isLast: json['isLast'] as bool?,
      totalCount: (json['totalCount'] as num?)?.toInt(),
    );

Map<String, dynamic> _$AnnouncementResponseModelToJson(
        AnnouncementResponseModel instance) =>
    <String, dynamic>{
      'advertisement': instance.advertisement,
      'isLast': instance.isLast,
      'totalCount': instance.totalCount,
    };
