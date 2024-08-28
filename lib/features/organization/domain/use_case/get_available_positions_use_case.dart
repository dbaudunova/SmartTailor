import 'package:injectable/injectable.dart';
import 'package:neobis_smart_tailor/features/organization/domain/entitys/position_entity.dart';
import 'package:neobis_smart_tailor/features/organization/domain/repository/organization_repo.dart';

@singleton
class GetAvailablePositionsUseCase {
  final OrganizationRepo repo;

  GetAvailablePositionsUseCase({
    required this.repo,
  });

  Future<List<PositionEntity>> call() async {
    var entitys = await repo.getAvailablePositions();
    return entitys;
  }
}
