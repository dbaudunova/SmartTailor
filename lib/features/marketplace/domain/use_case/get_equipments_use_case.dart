import 'package:injectable/injectable.dart';
import 'package:neobis_smart_tailor/features/marketplace/domain/entitys/general_responce_entity.dart';
import 'package:neobis_smart_tailor/features/marketplace/domain/repository/marketplace_repo.dart';

@singleton
class GetEuipmentsUseCase {
  final MarketplaceRepo repo;

  GetEuipmentsUseCase({required this.repo});

  Future<GeneralResponceEntity> call({required int pageNumber}) async {
    var entity = await repo.getEquipments(pageNumber: pageNumber);
    return entity;
  }
}
