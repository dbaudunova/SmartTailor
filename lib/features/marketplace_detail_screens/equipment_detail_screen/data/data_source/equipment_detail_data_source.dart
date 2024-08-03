import 'package:neobis_smart_tailor/features/marketplace_detail_screens/equipment_detail_screen/data/models/equipment_detail_model/equipment_detail_model.dart';

abstract class EquipmentDetailDataSource {
  Future<EquipmentDetailModel> getDetailEquipment({int id});
  Future<void> buyEquipment({int id});
}
