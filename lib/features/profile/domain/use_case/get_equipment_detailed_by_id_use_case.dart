import 'package:injectable/injectable.dart';
import 'package:neobis_smart_tailor/core/use_case/use_case.dart';
import 'package:neobis_smart_tailor/features/profile/domain/entitys/my_detailed_annoucement_entity.dart';
import 'package:neobis_smart_tailor/features/profile/domain/repository/profile_repo.dart';

@singleton
class GetEquipmentDetailedByIdUseCase extends UseCase<MyDetailedAnnounceEntity, int> {
  final ProfileRepo repo;

  GetEquipmentDetailedByIdUseCase({required this.repo});

  @override
  Future<MyDetailedAnnounceEntity> call(int params) async {
    return await repo.getEquipmentDetailedById(id: params);
  }
}
