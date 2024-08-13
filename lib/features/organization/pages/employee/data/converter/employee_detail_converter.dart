import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:neobis_smart_tailor/features/organization/pages/employee/data/models/employee_detail_model/employee_detail_model.dart';
import 'package:neobis_smart_tailor/features/organization/pages/employee/domain/entitys/employee_detail_entity.dart';

@Injectable(as: Converter<EmployeeDetailModel, EmployeeDetailEntity>)
class GeneralResponceMapper extends Converter<EmployeeDetailModel, EmployeeDetailEntity> {
  @override
  EmployeeDetailEntity convert(EmployeeDetailModel input) {
    return EmployeeDetailEntity(
        id: input.id,
        email: input.email,
        imagePath: input.imagePath,
        name: input.name,
        patronymic: input.patronymic,
        phoneNumber: input.phoneNumber,
        positionName: input.positionName,
        surname: input.surname);
  }
}
