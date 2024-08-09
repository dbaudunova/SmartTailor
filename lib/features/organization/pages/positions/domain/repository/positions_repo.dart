import 'package:neobis_smart_tailor/features/organization/pages/positions/data/models/_model/position_model.dart';
import 'package:neobis_smart_tailor/features/organization/pages/positions/domain/entitys/position_entity.dart';

abstract class PositionsRepo {
  Future<List<PositionEntity>> getAllPositions();
  Future<void> createPosition({required PositionModel model});
}
