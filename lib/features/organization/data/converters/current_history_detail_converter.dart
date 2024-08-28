import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:neobis_smart_tailor/features/organization/data/models/current_detail_order_model/current_detail_order_model.dart';
import 'package:neobis_smart_tailor/features/organization/data/models/current_history_detail_model/current_history_detail_model.dart';
import 'package:neobis_smart_tailor/features/organization/domain/entitys/current_detail_order_entity.dart';
import 'package:neobis_smart_tailor/features/organization/domain/entitys/current_history_detail_entity.dart';

@Injectable(as: Converter<CurrentHistoryDetailModel, CurrentHistoryDetailEntity>)
class CurrentDetailOrderModelToEntityConverter
    extends Converter<CurrentHistoryDetailModel, CurrentHistoryDetailEntity> {
  final Converter<Employee, EmployeeForCurrentEntity> _employeeConverter;

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
