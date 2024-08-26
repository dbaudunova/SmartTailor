import 'package:injectable/injectable.dart';
import 'package:neobis_smart_tailor/features/organization/pages/current_order/domain/repository/current_orders_repo.dart';

@singleton
class GetCancelOrderUseCase {
  final CurrentOrdersRepo repo;

  GetCancelOrderUseCase({
    required this.repo,
  });

  Future<void> call({required int id}) async {
    await repo.cancelOrder(id: id);
  }
}
