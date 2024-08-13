import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:neobis_smart_tailor/features/organization/pages/employee/data/data_source/employee_data_source.dart';
import 'package:neobis_smart_tailor/features/organization/pages/employee/data/models/employee_detail_model/employee_detail_model.dart';
import 'package:neobis_smart_tailor/features/organization/pages/employee/data/models/employee_model/employee_model.dart';
import 'package:neobis_smart_tailor/features/organization/pages/employee/domain/entitys/employee_detail_entity.dart';
import 'package:neobis_smart_tailor/features/organization/pages/employee/domain/entitys/employee_entity.dart';
import 'package:neobis_smart_tailor/features/organization/pages/employee/domain/repository/employees_repo.dart';

@Injectable(as: EmployeeRepo)
class EmployeeRepoImpl implements EmployeeRepo {
  final EmployeeDataSource _dataSource;
  final Converter<EmployeeModel, EmployeeEntity> _employeeConverter;
  final Converter<EmployeeDetailModel, EmployeeDetailEntity> _employeeDetailConverter;

  EmployeeRepoImpl(
    this._dataSource,
    this._employeeConverter,
    this._employeeDetailConverter,
  );

  @override
  Future<List<EmployeeEntity>> getAllEmployees() async {
    var models = await _dataSource.getAllEmployees();
    final entitys = models.map((model) => _employeeConverter.convert(model)).toList();
    return entitys;
  }

  @override
  Future<EmployeeDetailEntity> getEmployeeDetail({required int id}) async {
    var model = await _dataSource.getEmployeeDetail(id: id);
    final entity = _employeeDetailConverter.convert(model);
    return entity;
  }
}
