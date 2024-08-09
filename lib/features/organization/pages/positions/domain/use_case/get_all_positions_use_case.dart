import 'package:injectable/injectable.dart';
import 'package:neobis_smart_tailor/features/organization/pages/positions/domain/entitys/position_entity.dart';
import 'package:neobis_smart_tailor/features/organization/pages/positions/domain/repository/positions_repo.dart';

@singleton
class GetAllPositionsUseCase {
  final PositionsRepo repo;

  GetAllPositionsUseCase({
    required this.repo,
  });

  Future<List<PositionEntity>> call() async {
    var entity = await repo.getAllPositions();
    return entity;
  }
}
