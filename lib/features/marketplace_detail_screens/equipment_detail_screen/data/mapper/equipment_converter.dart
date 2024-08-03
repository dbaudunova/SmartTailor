import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/equipment_detail_screen/data/models/equipment_detail_model/equipment_detail_model.dart';
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/equipment_detail_screen/domain/entitys/equipment_detail_entity.dart';

@Injectable(as: Converter<EquipmentDetailModel, EquipmentDetailEntity>)
class EquipmentDetailMapper extends Converter<EquipmentDetailModel, EquipmentDetailEntity> {
  @override
  EquipmentDetailEntity convert(EquipmentDetailModel input) {
    return EquipmentDetailEntity(
      id: input.id,
      authorImage: input.authorImage,
      name: input.name,
      price: input.price,
      contactInfo: input.contactInfo,
      equipmentImages: input.equipmentImages,
      quantity: input.quantity,
      authorFullName: input.authorFullName,
      description: input.description,
    );
  }
}
