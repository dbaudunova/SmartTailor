import 'package:injectable/injectable.dart';
import 'package:neobis_smart_tailor/features/organization/pages/invite_employee/domain/repository/invite_employee_repo.dart';
import 'package:neobis_smart_tailor/features/organization/pages/positions/domain/entitys/position_entity.dart';

@singleton
class GetAvailablePositionsUseCase {
  final InviteEmployeeRepo repo;

  GetAvailablePositionsUseCase({
    required this.repo,
  });

  Future<List<PositionEntity>> call() async {
    var entitys = await repo.getAvailablePositions();
    return entitys;
  }
}
