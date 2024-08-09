import 'package:injectable/injectable.dart';
import 'package:neobis_smart_tailor/core/use_case/use_case.dart';
import 'package:neobis_smart_tailor/features/organization/pages/positions/data/models/_model/position_model.dart';
import 'package:neobis_smart_tailor/features/organization/pages/positions/domain/repository/positions_repo.dart';

@singleton
class AddPositionUseCase extends UseCase<void, PositionModel> {
  final PositionsRepo repo;

  AddPositionUseCase({
    required this.repo,
  });

  @override
  Future<void> call(PositionModel params) async {
    var entity = await repo.createPosition(model: params);
    return entity;
  }
}
