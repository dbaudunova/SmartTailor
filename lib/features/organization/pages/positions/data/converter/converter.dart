import 'dart:convert';
import 'package:injectable/injectable.dart';
import 'package:neobis_smart_tailor/features/organization/pages/positions/data/models/_model/position_model.dart';
import 'package:neobis_smart_tailor/features/organization/pages/positions/domain/entitys/position_entity.dart';

@Injectable(as: Converter<List<PositionModel>, List<PositionEntity>>)
class PositionModelListToEntityListConverter extends Converter<List<PositionModel>, List<PositionEntity>> {
  @override
  List<PositionEntity> convert(List<PositionModel> input) {
    return input
        .map((model) => PositionEntity(
            positionName: model.positionName, accessRights: model.accessRights ?? [], weight: model.weight.toString()))
        .toList();
  }
}
