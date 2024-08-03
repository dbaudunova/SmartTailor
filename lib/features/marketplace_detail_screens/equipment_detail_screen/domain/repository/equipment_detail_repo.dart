import 'package:neobis_smart_tailor/features/marketplace_detail_screens/equipment_detail_screen/domain/entitys/equipment_detail_entity.dart';

abstract class EquipmentDetailRepo {
  Future<EquipmentDetailEntity> getDetailEquipment({int id});
  Future<void> buyEquipment({int? id});
}
