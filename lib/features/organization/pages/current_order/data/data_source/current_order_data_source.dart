import 'package:neobis_smart_tailor/features/organization/pages/current_order/data/models/_model/current_order_model.dart';

abstract class CurrentOrderDataSource {
  Future<List<CurrentOrderModel>> gatAllOrders();
  Future<CurrentOrderModel> getDetailOrder();
}
