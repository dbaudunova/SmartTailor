import 'package:injectable/injectable.dart';
import 'package:neobis_smart_tailor/core/use_case/use_case.dart';
import 'package:neobis_smart_tailor/features/organization/pages/positions/domain/entitys/position_entity.dart';
import 'package:neobis_smart_tailor/features/organization/pages/positions/domain/repository/positions_repo.dart';

@singleton
class AddPositionUseCase extends UseCase<void, PositionEntity> {
  final PositionsRepo repo;

  AddPositionUseCase({
    required this.repo,
  });

  @override
  Future<void> call(PositionEntity params) async {
    await repo.createPosition(entity: params);
  }
}
