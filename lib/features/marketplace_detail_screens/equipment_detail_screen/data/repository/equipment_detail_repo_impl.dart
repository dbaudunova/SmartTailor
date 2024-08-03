import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/equipment_detail_screen/data/data_source/equipment_detail_data_source.dart';
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/equipment_detail_screen/data/models/equipment_detail_model/equipment_detail_model.dart';
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/equipment_detail_screen/domain/entitys/equipment_detail_entity.dart';
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/equipment_detail_screen/domain/repository/equipment_detail_repo.dart';

@Injectable(as: EquipmentDetailRepo)
class EquipmentDetailRepoImpl extends EquipmentDetailRepo {
  final EquipmentDetailDataSource _dataSource;
  final Converter<EquipmentDetailModel, EquipmentDetailEntity> _equipmentDetailConverter;

  EquipmentDetailRepoImpl(
    this._dataSource,
    this._equipmentDetailConverter,
  );

  @override
  Future<EquipmentDetailEntity> getDetailEquipment({int? id}) async {
    final result = await _dataSource.getDetailEquipment(id: id!);
    final entity = _equipmentDetailConverter.convert(result);
    return entity;
  }

  @override
  Future<void> buyEquipment({int? id}) async {
    await _dataSource.buyEquipment(id: id!);
  }
}
