import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:neobis_smart_tailor/features/marketplace/data/models/general_model/general_model.dart';
import 'package:neobis_smart_tailor/features/marketplace/domain/entitys/general_entity.dart';

@Injectable(as: Converter<GeneralOrderModel, GeneralEntity>)
class EquipmentMapper extends Converter<GeneralOrderModel, GeneralEntity> {
  @override
  GeneralEntity convert(GeneralOrderModel input) {
    return GeneralEntity(
      id: input.id,
      name: input.name,
      description: input.description,
      price: input.price,
      imageUrl: input.imageUrl,
      authorFullName: input.authorFullName,
      authorImageUrl: input.authorImageUrl,
      dateOfExecution: input.dateOfExecution,
    );
  }
}
