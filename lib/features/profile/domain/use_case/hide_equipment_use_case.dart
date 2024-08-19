import 'package:injectable/injectable.dart';
import 'package:neobis_smart_tailor/features/profile/domain/repository/profile_repo.dart';

@singleton
class HideEquipmentUseCase {
  final ProfileRepo repo;

  HideEquipmentUseCase({required this.repo});

  Future<void> call({required int? equipmentId}) async {
    return repo.hideEquipment(equipmentId: equipmentId);
  }
}
