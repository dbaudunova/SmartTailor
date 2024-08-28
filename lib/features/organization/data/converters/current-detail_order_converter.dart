import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:neobis_smart_tailor/features/organization/data/models/current_detail_order_model/current_detail_order_model.dart';
import 'package:neobis_smart_tailor/features/organization/domain/entitys/current_detail_order_entity.dart';

@Injectable(as: Converter<CurrentDetailOrderModel, CurrentDetailOrderEntity>)
class CurrentDetailOrderModelToEntityConverter extends Converter<CurrentDetailOrderModel, CurrentDetailOrderEntity> {
  final Converter<Employee, EmployeeForCurrentEntity> _employeeConverter;

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

@Injectable(as: Converter<Employee, EmployeeForCurrentEntity>)
class EmployeeModelToEntityConverter extends Converter<Employee, EmployeeForCurrentEntity> {
  @override
  EmployeeForCurrentEntity convert(Employee input) {
    return EmployeeForCurrentEntity(
      id: input.id,
      fullName: input.fullName,
      image: input.image,
      position: input.position,
    );
  }
}
