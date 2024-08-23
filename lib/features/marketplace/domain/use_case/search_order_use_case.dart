import 'package:injectable/injectable.dart';
import 'package:neobis_smart_tailor/features/marketplace/domain/entitys/search_entity.dart';
import 'package:neobis_smart_tailor/features/marketplace/domain/repository/marketplace_repo.dart';

@singleton
class SearchOrderUseCase {
  final MarketplaceRepo repo;

  SearchOrderUseCase({required this.repo});

  Future<AdvertisementResponseEntity> call({required int pageNumber, required String query}) async {
    var entity = await repo.getSearchOrder(pageNumber: pageNumber, query: query);
    return entity;
  }
}
