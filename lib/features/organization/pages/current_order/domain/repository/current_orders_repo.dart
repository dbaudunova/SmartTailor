import 'package:neobis_smart_tailor/features/organization/pages/current_order/domain/entitys/current_order_entity.dart';

abstract class CurrentOrdersRepo {
  Future<List<CurrentOrderEntity>> getAllOrders();
  Future<CurrentOrderEntity> getDetailedOrder({required String id});
}
