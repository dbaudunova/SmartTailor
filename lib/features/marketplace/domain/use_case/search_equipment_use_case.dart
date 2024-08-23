import 'package:injectable/injectable.dart';
import 'package:neobis_smart_tailor/features/marketplace/domain/entitys/search_entity.dart';
import 'package:neobis_smart_tailor/features/marketplace/domain/repository/marketplace_repo.dart';

@singleton
class SearchEquipmentUseCase {
  final MarketplaceRepo repo;

  SearchEquipmentUseCase({required this.repo});

  Future<AdvertisementResponseEntity> call({required int pageNumber, required String query}) async {
    var entity = await repo.getSearchEquipment(pageNumber: pageNumber, query: query);
    return entity;
  }
}
