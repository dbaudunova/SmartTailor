import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:neobis_smart_tailor/features/organization/pages/current_order/data/models/current_detail_order_model/current_detail_order_model.dart';
import 'package:neobis_smart_tailor/features/organization/pages/current_order/domain/entitys/current_detail_order_entity.dart';

@Injectable(as: Converter<CurrentDetailOrderModel, CurrentDetailOrderEntity>)
class CurrentDetailOrderModelToEntityConverter extends Converter<CurrentDetailOrderModel, CurrentDetailOrderEntity> {
  final Converter<Employee, EmployeeEntity> _employeeConverter;

  CurrentDetailOrderModelToEntityConverter(this._employeeConverter);

  @override
  CurrentDetailOrderEntity convert(CurrentDetailOrderModel input) {
    return CurrentDetailOrderEntity(
      id: input.id,
      name: input.name,
      description: input.description,
      price: input.price,
      status: input.status,
      dateOfExecution: input.dateOfExecution,
      images: input.images,
      employees: input.employees.map((employee) => _employeeConverter.convert(employee)).toList(),
      authorFullName: input.authorFullName,
      authorImage: input.authorImage,
      authorContactInfo: input.authorContactInfo,
    );
  }
}

@Injectable(as: Converter<Employee, EmployeeEntity>)
class EmployeeModelToEntityConverter extends Converter<Employee, EmployeeEntity> {
  @override
  EmployeeEntity convert(Employee input) {
    return EmployeeEntity(
      id: input.id,
      fullName: input.fullName,
      image: input.image,
      position: input.position,
    );
  }
}
