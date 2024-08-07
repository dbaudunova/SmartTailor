// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'general_responce.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GeneralResponceModelImpl _$$GeneralResponceModelImplFromJson(
        Map<String, dynamic> json) =>
    _$GeneralResponceModelImpl(
      listModels: (json['advertisement'] as List<dynamic>)
          .map((e) => GeneralOrderModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      isLast: json['isLast'] as bool?,
      totalCount: (json['totalCount'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$GeneralResponceModelImplToJson(
        _$GeneralResponceModelImpl instance) =>
    <String, dynamic>{
      'advertisement': instance.listModels,
      'isLast': instance.isLast,
      'totalCount': instance.totalCount,
    };
