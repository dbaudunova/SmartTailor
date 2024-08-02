import 'package:injectable/injectable.dart';
import 'package:neobis_smart_tailor/core/use_case/use_case.dart';
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/equipment_detail_screen/domain/entitys/equipment_detail_entity.dart';
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/equipment_detail_screen/domain/repository/equipment_detail_repo.dart';

@singleton
class GetEuipmentByIdUseCase extends UseCase<EquipmentDetailEntity, int> {
  final EquipmentDetailRepo repo;

  GetEuipmentByIdUseCase({required this.repo});

  @override
  Future<EquipmentDetailEntity> call(params) async {
    var entity = await repo.getDetailEquipment(id: params);
    return entity;
  }
}
