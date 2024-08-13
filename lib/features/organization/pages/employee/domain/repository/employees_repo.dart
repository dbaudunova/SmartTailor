import 'package:neobis_smart_tailor/features/organization/pages/employee/data/models/employee_model/employee_model.dart';
import 'package:neobis_smart_tailor/features/organization/pages/employee/domain/entitys/employee_detail_entity.dart';
import 'package:neobis_smart_tailor/features/organization/pages/employee/domain/entitys/employee_entity.dart';

abstract class EmployeeRepo {
  Future<List<EmployeeEntity>> getAllEmployees();
  Future<EmployeeDetailEntity> getEmployeeDetail({required int id});
}
