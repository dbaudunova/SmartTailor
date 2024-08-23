import 'package:neobis_smart_tailor/features/organization/pages/current_order/domain/entitys/current_order_entity.dart';
import 'package:neobis_smart_tailor/features/profile/domain/model/my_history_entity.dart';

abstract class OrdersHistoryRepo {
  Future<MyHistoryEntity> getAllOrdersHistory();
  Future<CurrentOrderEntity> getDetaileHistoryOrder({required int id});
}
