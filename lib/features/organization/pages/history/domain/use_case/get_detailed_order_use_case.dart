import 'package:injectable/injectable.dart';
import 'package:neobis_smart_tailor/features/organization/pages/history/domain/entitys/current_history_detail_entity.dart';
import 'package:neobis_smart_tailor/features/organization/pages/history/domain/repository/orders_history_repo.dart';

@singleton
class GetDetailedOrderUseCase {
  final OrdersHistoryRepo repo;

  GetDetailedOrderUseCase({
    required this.repo,
  });

  Future<CurrentHistoryDetailEntity> call({required int id}) async {
    var entity = await repo.getDetaileHistoryOrder(id: id);
    return entity;
  }
}
