import 'package:neobis_smart_tailor/features/marketplace_detail_screens/order_detail_screen/domain/entitys/order_detail_entity.dart';

abstract class OrderDetailRepo {
  Future<OrderDetailEntity> getDetailOrder({int id});
  Future<void> requestToExecute({int id});
}
