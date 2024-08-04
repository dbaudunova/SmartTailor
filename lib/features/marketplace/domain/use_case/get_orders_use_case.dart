import 'package:injectable/injectable.dart';
import 'package:neobis_smart_tailor/features/marketplace/domain/entitys/common_entity.dart';
import 'package:neobis_smart_tailor/features/marketplace/domain/repository/marketplace_repo.dart';

@singleton
class GetOrdersUseCase {
  final MarketplaceRepo repo;

  GetOrdersUseCase({required this.repo});

  Future<List<GeneralEntity>> call({required int pageNumber}) async {
    var entity = await repo.getOrders(pageNumber: pageNumber);
    return entity;
  }
}
