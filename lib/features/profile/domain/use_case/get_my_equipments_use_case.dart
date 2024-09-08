import 'package:injectable/injectable.dart';
import 'package:neobis_smart_tailor/features/profile/domain/entitys/announcement_response_entity.dart';
import 'package:neobis_smart_tailor/features/profile/domain/repository/profile_repo.dart';

@singleton
class GetMyEquipmentsUseCase {
  final ProfileRepo repo;

  GetMyEquipmentsUseCase({required this.repo});

  Future<AnnouncementResponseEntity> call({required int pageNumber}) async {
    return await repo.getMyEquipments(pageNumber: pageNumber);
  }
}
