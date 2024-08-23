import 'package:neobis_smart_tailor/features/profile/data/model/history_model/my_history_model.dart';

abstract class OrdersHistoryDataSource {
  Future<MyHistoryModel> getAllOrdersHistory();
  Future<MyHistoryModel> getDetaileHistoryOrder({required int id});
}
