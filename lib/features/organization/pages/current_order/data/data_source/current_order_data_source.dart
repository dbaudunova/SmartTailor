import 'package:neobis_smart_tailor/features/organization/pages/current_order/data/models/current_detail_order_model/current_detail_order_model.dart';
import 'package:neobis_smart_tailor/features/organization/pages/current_order/data/models/organization_list_model/organization_list_model.dart';

abstract class CurrentOrderDataSource {
  Future<OrganizationListModel> gatAllOrders();
  Future<CurrentDetailOrderModel> getDetailOrder({required int id});
  Future<void> changeOrderStatus({required int id, required String value});
}
