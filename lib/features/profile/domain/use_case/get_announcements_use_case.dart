import 'package:injectable/injectable.dart';
import 'package:neobis_smart_tailor/features/profile/domain/model/announcement_entity.dart';
import 'package:neobis_smart_tailor/features/profile/domain/repository/profile_repo.dart';

@singleton
class GetAnnouncementsUseCase {
  final ProfileRepo repo;

  GetAnnouncementsUseCase({required this.repo});

  Future<List<AnnouncementEntity>> call({required int pageNumber}) async {
    return await repo.getAnnouncements(pageNumber: pageNumber);
  }
}
