import 'package:injectable/injectable.dart';
import 'package:neobis_smart_tailor/features/organization/pages/history/domain/repository/orders_history_repo.dart';
import 'package:neobis_smart_tailor/features/profile/domain/model/my_history_entity.dart';

@singleton
class GetOrdersHistoryUseCase {
  final OrdersHistoryRepo repo;

  GetOrdersHistoryUseCase({
    required this.repo,
  });

  Future<MyHistoryEntity> call() async {
    var entity = await repo.getAllOrdersHistory();
    return entity;
  }
}
