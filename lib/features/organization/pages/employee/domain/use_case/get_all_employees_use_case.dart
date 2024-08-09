import 'package:injectable/injectable.dart';
import 'package:neobis_smart_tailor/features/organization/pages/employee/domain/entitys/employee_entity.dart';
import 'package:neobis_smart_tailor/features/organization/pages/employee/domain/repository/employees_repo.dart';

@singleton
class GetAllEmployeesUseCase {
  final EmployeeRepo repo;

  GetAllEmployeesUseCase({
    required this.repo,
  });

  Future<List<EmployeeEntity>> call() async {
    var entitys = await repo.getAllEmployees();
    return entitys;
  }
}
