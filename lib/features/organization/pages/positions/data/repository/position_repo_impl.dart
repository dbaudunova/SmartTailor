import 'dart:convert';

import 'package:fpdart/fpdart.dart';
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
  Future<void> createPosition({required PositionEntity entity}) async {
    var model = PositionModel(
      positionName: entity.positionName,
      weight: int.parse(entity.weight!),
      accessRights: entity.accessRights,
    );
    await _dataSource.createPosition(model: model);
  }

  @override
  Future<List<PositionEntity>> getAllPositions() async {
    var models = await _dataSource.getAllPositions();
    final entitys = _positionListConverter.convert(models);
    return entitys;
  }

  @override
  Future<List<String>> getAvailableAccessRights() async {
    var list = await _dataSource.getAvailableAccessRights();
    return list;
  }

  @override
  Future<List<int>> getAvailableWeights() async {
    var list = await _dataSource.getAvailableWeights();
    return list;
  }
}
