// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'current_history_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CurrentHistoryDetailModelImpl _$$CurrentHistoryDetailModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CurrentHistoryDetailModelImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      description: json['description'] as String,
      price: (json['price'] as num).toDouble(),
      dateOfCompletion: DateTime.parse(json['dateOfCompletion'] as String),
      employees: (json['employees'] as List<dynamic>)
          .map((e) => Employee.fromJson(e as Map<String, dynamic>))
          .toList(),
      authorFullName: json['authorFullName'] as String,
      authorContactInfo: json['authorContactInfo'] as String,
    );

Map<String, dynamic> _$$CurrentHistoryDetailModelImplToJson(
        _$CurrentHistoryDetailModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'price': instance.price,
      'dateOfCompletion': instance.dateOfCompletion.toIso8601String(),
      'employees': instance.employees,
      'authorFullName': instance.authorFullName,
      'authorContactInfo': instance.authorContactInfo,
    };
