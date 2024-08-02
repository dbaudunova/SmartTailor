import 'package:neobis_smart_tailor/features/marketplace_detail_screens/order_detail_screen/data/models/order_detail_model/order_detail_model.dart';

abstract class OrderDetailDataSource {
  Future<OrderDetailModel> getDetailOrder({int id});
  Future<void> requestToExecute({int id});
}
