// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'employee_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EmployeeDetailModelImpl _$$EmployeeDetailModelImplFromJson(
        Map<String, dynamic> json) =>
    _$EmployeeDetailModelImpl(
      id: (json['id'] as num?)?.toInt(),
      imagePath: json['imagePath'] as String?,
      email: json['email'] as String?,
      name: json['name'] as String?,
      surname: json['surname'] as String?,
      patronymic: json['patronymic'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      positionName: json['positionName'] as String?,
    );

Map<String, dynamic> _$$EmployeeDetailModelImplToJson(
        _$EmployeeDetailModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'imagePath': instance.imagePath,
      'email': instance.email,
      'name': instance.name,
      'surname': instance.surname,
      'patronymic': instance.patronymic,
      'phoneNumber': instance.phoneNumber,
      'positionName': instance.positionName,
    };
