import 'package:injectable/injectable.dart';
import 'package:neobis_smart_tailor/features/organization/pages/current_order/domain/entitys/current_detail_order_entity.dart';
import 'package:neobis_smart_tailor/features/organization/pages/current_order/domain/repository/current_orders_repo.dart';

@singleton
class GetCurrentDetailOrderUseCase {
  final CurrentOrdersRepo repo;

  GetCurrentDetailOrderUseCase({
    required this.repo,
  });

  Future<CurrentDetailOrderEntity> call({required int id}) async {
    var entity = await repo.getDetailedOrder(id: id);
    return entity;
  }
}
