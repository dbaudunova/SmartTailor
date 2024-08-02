import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/order_detail_screen/data/models/order_detail_model/order_detail_model.dart';
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/order_detail_screen/domain/entitys/order_detail_entity.dart';

@Injectable(as: Converter<OrderDetailModel, OrderDetailEntity>)
class OrderDetailMapper extends Converter<OrderDetailModel, OrderDetailEntity> {
  @override
  OrderDetailEntity convert(OrderDetailModel input) {
    return OrderDetailEntity(
        id: input.id,
        authorFullName: input.authorFullName,
        name: input.name,
        authorImage: input.authorImage,
        price: input.price,
        contactInfo: input.contactInfo,
        dateOfExecution: input.dateOfExecution,
        description: input.description,
        orderItems: input.orderItems,
        orderImages: input.orderImages);
  }
}
