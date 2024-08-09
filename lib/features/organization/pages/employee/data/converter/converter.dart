import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:neobis_smart_tailor/features/organization/pages/employee/data/models/_model/employee_model.dart';
import 'package:neobis_smart_tailor/features/organization/pages/employee/domain/entitys/employee_entity.dart';

@Injectable(as: Converter<EmployeeModel, EmployeeEntity>)
class GeneralResponceMapper extends Converter<EmployeeModel, EmployeeEntity> {
  @override
  EmployeeEntity convert(EmployeeModel input) {
    return EmployeeEntity(
      id: input.id,
      email: input.email,
      fullName: input.fullName,
      orders: input.orders,
      position: input.position,
    );
  }
}
