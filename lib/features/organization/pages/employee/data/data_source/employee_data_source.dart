import 'package:neobis_smart_tailor/features/organization/pages/employee/data/models/employee_detail_model/employee_detail_model.dart';
import 'package:neobis_smart_tailor/features/organization/pages/employee/data/models/employee_model/employee_model.dart';

abstract class EmployeeDataSource {
  Future<List<EmployeeModel>> getAllEmployees();
  Future<EmployeeDetailModel> getEmployeeDetail({required int id});
}
