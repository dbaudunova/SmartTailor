import 'package:injectable/injectable.dart';
import 'package:neobis_smart_tailor/features/marketplace/domain/entitys/search_entity.dart';
import 'package:neobis_smart_tailor/features/profile/domain/repository/profile_repo.dart';

@singleton
class SearchAdvertisementUseCase {
  final ProfileRepo repo;

  SearchAdvertisementUseCase({required this.repo});

  Future<AdvertisementResponseEntity> call({required int pageNumber, required String query}) async {
    var entity = await repo.getSearchAdvertisement(pageNumber: pageNumber, query: query);
    return entity;
  }
}
