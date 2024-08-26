import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:neobis_smart_tailor/features/organization/pages/current_order/data/models/current_detail_order_model/current_detail_order_model.dart';
import 'package:neobis_smart_tailor/features/organization/pages/current_order/domain/entitys/current_detail_order_entity.dart';
import 'package:neobis_smart_tailor/features/organization/pages/history/data/models/current_history_detail_model/current_history_detail_model.dart';
import 'package:neobis_smart_tailor/features/organization/pages/history/domain/entitys/current_history_detail_entity.dart';

@Injectable(as: Converter<CurrentHistoryDetailModel, CurrentHistoryDetailEntity>)
class CurrentDetailOrderModelToEntityConverter
    extends Converter<CurrentHistoryDetailModel, CurrentHistoryDetailEntity> {
  final Converter<Employee, EmployeeEntity> _employeeConverter;

  CurrentDetailOrderModelToEntityConverter(this._employeeConverter);

  @override
  CurrentHistoryDetailEntity convert(CurrentHistoryDetailModel input) {
    return CurrentHistoryDetailEntity(
      id: input.id,
      name: input.name,
      description: input.description,
      price: input.price,
      dateOfCompletion: input.dateOfCompletion,
      employees: input.employees.map((employee) => _employeeConverter.convert(employee)).toList(),
      authorFullName: input.authorFullName,
      authorContactInfo: input.authorContactInfo,
    );
  }
}

// @Injectable(as: Converter<Employee, EmployeeEntity>)
// class EmployeeModelToEntityConverter extends Converter<Employee, EmployeeEntity> {
//   @override
//   EmployeeEntity convert(Employee input) {
//     return EmployeeEntity(
//       id: input.id,
//       fullName: input.fullName,
//       image: input.image,
//       position: input.position,
//     );
//   }
// }
