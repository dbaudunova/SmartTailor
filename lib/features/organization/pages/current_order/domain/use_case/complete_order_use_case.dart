import 'package:injectable/injectable.dart';
import 'package:neobis_smart_tailor/features/organization/pages/current_order/domain/repository/current_orders_repo.dart';

@singleton
class CompleteOrderUseCase {
  final CurrentOrdersRepo repo;

  CompleteOrderUseCase({
    required this.repo,
  });

  Future<void> call({required int id}) async {
    await repo.completeOrder(id: id);
  }
}
