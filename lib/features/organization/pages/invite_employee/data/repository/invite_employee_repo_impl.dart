import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:neobis_smart_tailor/features/organization/pages/invite_employee/data/data_source/invite_employee_data_source.dart';
import 'package:neobis_smart_tailor/features/organization/pages/invite_employee/data/models/send_invite_model.dart';
import 'package:neobis_smart_tailor/features/organization/pages/invite_employee/domain/repository/invite_employee_repo.dart';
import 'package:neobis_smart_tailor/features/organization/pages/positions/data/models/_model/position_model.dart';
import 'package:neobis_smart_tailor/features/organization/pages/positions/domain/entitys/position_entity.dart';

@Injectable(as: InviteEmployeeRepo)
class InviteEmployeeRepoImpl implements InviteEmployeeRepo {
  final Converter<List<PositionModel>, List<PositionEntity>> _positionListConverter;
  final InviteEmployeeDataSource _dataSource;

  InviteEmployeeRepoImpl(
    this._dataSource,
    this._positionListConverter,
  );

  @override
  Future<void> sendInvitation(SendInviteModel model) async {
    await _dataSource.sendInvitation(model);
  }

  @override
  Future<List<PositionEntity>> getAvailablePositions() async {
    var models = await _dataSource.getAvailablePositions();
    final entitys = _positionListConverter.convert(models);
    return entitys;
  }
}
