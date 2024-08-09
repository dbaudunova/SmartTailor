import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:neobis_smart_tailor/features/organization/pages/employee/data/data_source/employee_data_source.dart';
import 'package:neobis_smart_tailor/features/organization/pages/employee/data/models/_model/employee_model.dart';
import 'package:neobis_smart_tailor/features/organization/pages/employee/domain/entitys/employee_entity.dart';
import 'package:neobis_smart_tailor/features/organization/pages/employee/domain/repository/employees_repo.dart';

@Injectable(as: EmployeeRepo)
class EmployeeRepoImpl implements EmployeeRepo {
  final EmployeeDataSource _dataSource;
  final Converter<EmployeeModel, EmployeeEntity> _employeeConverter;

  EmployeeRepoImpl(
    this._dataSource,
    this._employeeConverter,
  );

  @override
  Future<List<EmployeeEntity>> getAllEmployees() async {
    var models = await _dataSource.getAllEmployees();
    final entitys = models.map((model) => _employeeConverter.convert(model)).toList();
    return entitys;
  }
}
