import 'package:injectable/injectable.dart';
import 'package:neobis_smart_tailor/features/organization/domain/entitys/employee_entity.dart';
import 'package:neobis_smart_tailor/features/organization/domain/repository/organization_repo.dart';

@singleton
class GetAllEmployeesUseCase {
  final OrganizationRepo repo;

  GetAllEmployeesUseCase({
    required this.repo,
  });

  Future<List<EmployeeEntity>> call() async {
    var entitys = await repo.getAllEmployees();
    return entitys;
  }
}
