import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:neobis_smart_tailor/features/organization/pages/current_order/data/models/_model/current_order_model.dart';
import 'package:neobis_smart_tailor/features/organization/pages/current_order/domain/entitys/current_order_entity.dart';

@Injectable(as: Converter<CurrentOrderModel, CurrentOrderEntity>)
class GeneralResponceMapper extends Converter<CurrentOrderModel, CurrentOrderEntity> {
  @override
  CurrentOrderEntity convert(CurrentOrderModel input) {
    return CurrentOrderEntity(
      imageUrl: input.imageUrl,
      id: input.id,
      description: input.description,
      name: input.name,
      price: input.price,
    );
  }
}
