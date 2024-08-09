import 'package:neobis_smart_tailor/features/organization/pages/employee/data/models/_model/employee_model.dart';

abstract class EmployeeDataSource {
  Future<List<EmployeeModel>> getAllEmployees();
}
