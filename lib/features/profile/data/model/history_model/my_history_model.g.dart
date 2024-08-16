// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_history_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MyHistoryModelImpl _$$MyHistoryModelImplFromJson(Map<String, dynamic> json) =>
    _$MyHistoryModelImpl(
      totalCount: (json['totalCount'] as num?)?.toInt(),
      advertisement: (json['advertisement'] as List<dynamic>?)
          ?.map((e) => HistoryModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      isLast: json['isLast'] as bool?,
    );

Map<String, dynamic> _$$MyHistoryModelImplToJson(
        _$MyHistoryModelImpl instance) =>
    <String, dynamic>{
      'totalCount': instance.totalCount,
      'advertisement': instance.advertisement,
      'isLast': instance.isLast,
    };

_$HistoryModelImpl _$$HistoryModelImplFromJson(Map<String, dynamic> json) =>
    _$HistoryModelImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      price: (json['price'] as num?)?.toDouble(),
      status: json['status'] as String?,
      date: json['date'] as String?,
    );

Map<String, dynamic> _$$HistoryModelImplToJson(_$HistoryModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'price': instance.price,
      'status': instance.status,
      'date': instance.date,
    };
