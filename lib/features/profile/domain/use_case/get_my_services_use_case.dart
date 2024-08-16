import 'package:injectable/injectable.dart';
import 'package:neobis_smart_tailor/features/profile/domain/model/announcement_response_entity.dart';
import 'package:neobis_smart_tailor/features/profile/domain/repository/profile_repo.dart';

@singleton
class GetMyServicesUseCase {
  final ProfileRepo repo;

  GetMyServicesUseCase({required this.repo});

  Future<AnnouncementResponseEntity> call({required int pageNumber}) async {
    return await repo.getMyServices(pageNumber: pageNumber);
  }
}
