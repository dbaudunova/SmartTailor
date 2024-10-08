import 'package:injectable/injectable.dart';
import 'package:neobis_smart_tailor/features/organization/domain/entitys/position_entity.dart';
import 'package:neobis_smart_tailor/features/organization/domain/repository/organization_repo.dart';

@singleton
class GetAllPositionsUseCase {
  final OrganizationRepo repo;

  GetAllPositionsUseCase({
    required this.repo,
  });

  Future<List<PositionEntity>> call() async {
    var entity = await repo.getAllPositions();
    return entity;
  }
}
