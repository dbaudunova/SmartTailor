import 'package:neobis_smart_tailor/features/organization/pages/current_order/domain/entitys/current_detail_order_entity.dart';
import 'package:neobis_smart_tailor/features/organization/pages/current_order/domain/entitys/organization_list_entity.dart';

abstract class CurrentOrdersRepo {
  Future<OrganizationListEntity> getAllOrders();
  Future<CurrentDetailOrderEntity> getDetailedOrder({required int id});
  Future<void> changeOrderStatus({required int id, required String value});
  Future<void> completeOrder({required int id});
  Future<void> cancelOrder({required int id});
}
