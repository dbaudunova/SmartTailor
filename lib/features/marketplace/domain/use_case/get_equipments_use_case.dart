import 'package:injectable/injectable.dart';
import 'package:neobis_smart_tailor/core/use_case/use_case.dart';
import 'package:neobis_smart_tailor/features/marketplace/domain/entitys/equipment_entity.dart';
import 'package:neobis_smart_tailor/features/marketplace/domain/repository/marketplace_repo.dart';

@singleton
class GetEuipmentsUseCase extends UseCase<List<EquipmentEntity>, void> {
  final MarketplaceRepo repo;

  GetEuipmentsUseCase({required this.repo});

  @override
  Future<List<EquipmentEntity>> call(params) async {
    var entity = await repo.getEquipments();
    return entity;
  }
}
