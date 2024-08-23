import 'package:injectable/injectable.dart';
import 'package:neobis_smart_tailor/features/marketplace/domain/entitys/search_entity.dart';
import 'package:neobis_smart_tailor/features/marketplace/domain/repository/marketplace_repo.dart';

@singleton
class SearchServiceUseCase {
  final MarketplaceRepo repo;

  SearchServiceUseCase({required this.repo});

  Future<AdvertisementResponseEntity> call({required int pageNumber, required String query}) async {
    var entity = await repo.getSearchServices(pageNumber: pageNumber, query: query);
    return entity;
  }
}
