import 'package:injectable/injectable.dart';
import 'package:neobis_smart_tailor/features/organization/pages/employee/domain/entitys/employee_detail_entity.dart';
import 'package:neobis_smart_tailor/features/organization/pages/employee/domain/repository/employees_repo.dart';

@singleton
class GetEmployeeDetailUseCase {
  final EmployeeRepo repo;

  GetEmployeeDetailUseCase({
    required this.repo,
  });

  Future<EmployeeDetailEntity> call(int params) async {
    var entity = await repo.getEmployeeDetail(id: params);
    return entity;
  }
}
