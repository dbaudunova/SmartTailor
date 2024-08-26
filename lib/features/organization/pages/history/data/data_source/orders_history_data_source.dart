import 'package:neobis_smart_tailor/features/organization/pages/current_order/data/models/current_detail_order_model/current_detail_order_model.dart';
import 'package:neobis_smart_tailor/features/organization/pages/history/data/models/current_history_detail_model/current_history_detail_model.dart';
import 'package:neobis_smart_tailor/features/profile/data/model/history_model/my_history_model.dart';

abstract class OrdersHistoryDataSource {
  Future<MyHistoryModel> getAllOrdersHistory();
  Future<CurrentHistoryDetailModel> getDetaileHistoryOrder({required int id});
}
