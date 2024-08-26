import 'package:neobis_smart_tailor/features/organization/pages/history/domain/entitys/current_history_detail_entity.dart';
import 'package:neobis_smart_tailor/features/profile/domain/model/my_history_entity.dart';

abstract class OrdersHistoryRepo {
  Future<MyHistoryEntity> getAllOrdersHistory();
  Future<CurrentHistoryDetailEntity> getDetaileHistoryOrder({required int id});
}
