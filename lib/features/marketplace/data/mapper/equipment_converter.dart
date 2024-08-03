// import 'dart:convert';

// import 'package:injectable/injectable.dart';
// import 'package:neobis_smart_tailor/features/marketplace/data/models/equipment_model/equipment_model.dart';
// import 'package:neobis_smart_tailor/features/marketplace/domain/entitys/equipment_entity.dart';

// @Injectable(as: Converter<EquipmentModel, EquipmentEntity>)
// class EquipmentMapper extends Converter<EquipmentModel, EquipmentEntity> {
//   @override
//   EquipmentEntity convert(EquipmentModel input) {
//     return EquipmentEntity(
//       equipmentId: input.id,
//       equipmentImageUrl: input.imageUrl,
//       name: input.name,
//       price: input.price,
//       authorImageUrl: input.authorImageUrl,
//       authorFullName: input.authorFullName,
//       description: input.description,
//     );
//   }
// }
