import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:neobis_smart_tailor/features/organization/pages/positions/data/data_source/positions_data_source.dart';
import 'package:neobis_smart_tailor/features/organization/pages/positions/data/models/_model/position_model.dart';
import 'package:neobis_smart_tailor/features/organization/pages/positions/domain/entitys/position_entity.dart';
import 'package:neobis_smart_tailor/features/organization/pages/positions/domain/repository/positions_repo.dart';

@Injectable(as: PositionsRepo)
class PositionRepoImpl implements PositionsRepo {
  final PositionsDataSource _dataSource;
  final Converter<List<PositionModel>, List<PositionEntity>> _positionListConverter;

  PositionRepoImpl(
    this._dataSource,
    this._positionListConverter,
  );

  @override
  Future<void> createPosition({required PositionModel model}) async {
    await _dataSource.createPosition(model: model);
  }

  @override
  Future<List<PositionEntity>> getAllPositions() async {
    var models = await _dataSource.getAllPositions();
    final entitys = _positionListConverter.convert(models);
    return entitys;
  }
}
