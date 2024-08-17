// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'current_detail_order_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CurrentDetailOrderModelImpl _$$CurrentDetailOrderModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CurrentDetailOrderModelImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      description: json['description'] as String,
      price: (json['price'] as num).toDouble(),
      status: json['status'] as String,
      dateOfExecution: DateTime.parse(json['dateOfExecution'] as String),
      images:
          (json['images'] as List<dynamic>).map((e) => e as String).toList(),
      employees: (json['employees'] as List<dynamic>)
          .map((e) => Employee.fromJson(e as Map<String, dynamic>))
          .toList(),
      authorFullName: json['authorFullName'] as String,
      authorImage: json['authorImage'] as String,
      authorContactInfo: json['authorContactInfo'] as String,
    );

Map<String, dynamic> _$$CurrentDetailOrderModelImplToJson(
        _$CurrentDetailOrderModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'price': instance.price,
      'status': instance.status,
      'dateOfExecution': instance.dateOfExecution.toIso8601String(),
      'images': instance.images,
      'employees': instance.employees,
      'authorFullName': instance.authorFullName,
      'authorImage': instance.authorImage,
      'authorContactInfo': instance.authorContactInfo,
    };

_$EmployeeImpl _$$EmployeeImplFromJson(Map<String, dynamic> json) =>
    _$EmployeeImpl(
      id: (json['id'] as num).toInt(),
      fullName: json['fullName'] as String,
      image: json['image'] as String,
      position: json['position'] as String,
    );

Map<String, dynamic> _$$EmployeeImplToJson(_$EmployeeImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'fullName': instance.fullName,
      'image': instance.image,
      'position': instance.position,
    };
