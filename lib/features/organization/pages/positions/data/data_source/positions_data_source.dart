import 'package:neobis_smart_tailor/features/organization/pages/positions/data/models/_model/position_model.dart';

abstract class PositionsDataSource {
  Future<List<PositionModel>> getAllPositions();
  Future<void> createPosition({required PositionModel model});
}
