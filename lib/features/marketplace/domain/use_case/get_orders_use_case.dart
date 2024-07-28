import 'package:injectable/injectable.dart';
import 'package:neobis_smart_tailor/core/use_case/use_case.dart';
import 'package:neobis_smart_tailor/features/marketplace/domain/entitys/order_entity.dart';
import 'package:neobis_smart_tailor/features/marketplace/domain/repository/marketplace_repo.dart';

@singleton
class GetOrdersUseCase extends UseCase<List<OrderEntity>, void> {
  final MarketplaceRepo repo;

  GetOrdersUseCase({required this.repo});

  @override
  Future<List<OrderEntity>> call(params) async {
    var entity = await repo.getOrders();
    return entity;
  }
}
