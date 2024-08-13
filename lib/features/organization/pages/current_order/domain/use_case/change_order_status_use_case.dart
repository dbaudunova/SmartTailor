import 'package:injectable/injectable.dart';
import 'package:neobis_smart_tailor/features/organization/pages/current_order/domain/repository/current_orders_repo.dart';

@singleton
class ChangeOrderStatusUseCase {
  final CurrentOrdersRepo repo;

  ChangeOrderStatusUseCase({
    required this.repo,
  });

  Future<void> call({required int id, required String value}) async {
    await repo.changeOrderStatus(id: id, value: value);
  }
}
