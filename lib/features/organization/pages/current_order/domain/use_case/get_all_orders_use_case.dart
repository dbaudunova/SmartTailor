import 'package:injectable/injectable.dart';
import 'package:neobis_smart_tailor/features/organization/pages/current_order/domain/entitys/current_order_entity.dart';
import 'package:neobis_smart_tailor/features/organization/pages/current_order/domain/repository/current_orders_repo.dart';

@singleton
class GetAllOrdersUseCase {
  final CurrentOrdersRepo repo;

  GetAllOrdersUseCase({
    required this.repo,
  });

  Future<List<CurrentOrderEntity>> call() async {
    var entity = await repo.getAllOrders();
    return entity;
  }
}
