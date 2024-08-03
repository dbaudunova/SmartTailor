// import 'dart:convert';

// import 'package:injectable/injectable.dart';
// import 'package:neobis_smart_tailor/features/marketplace/data/models/order_model/order_model.dart';
// import 'package:neobis_smart_tailor/features/marketplace/domain/entitys/order_entity.dart';

// @Injectable(as: Converter<OrderModel, OrderEntity>)
// class OrderMapper extends Converter<OrderModel, OrderEntity> {
//   @override
//   OrderEntity convert(OrderModel input) {
//     return OrderEntity(
//       orderId: input.orderId,
//       orderPhotoUrl: input.orderPhotoUrl,
//       name: input.name,
//       orderDescription: input.orderDescription,
//       price: input.price,
//       dateOfException: input.dateOfException,
//     );
//   }
// }
