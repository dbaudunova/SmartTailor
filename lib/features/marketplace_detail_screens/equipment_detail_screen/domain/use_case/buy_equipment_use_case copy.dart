import 'package:injectable/injectable.dart';
import 'package:neobis_smart_tailor/core/use_case/use_case.dart';
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/equipment_detail_screen/domain/repository/equipment_detail_repo.dart';

@singleton
class BuyEquipmentIdUseCase extends UseCase<void, int> {
  final EquipmentDetailRepo repo;

  BuyEquipmentIdUseCase({required this.repo});

  @override
  Future<void> call(params) async {
    await repo.buyEquipment(id: params);
  }
}
