import 'package:neobis_smart_tailor/features/profile/domain/model/announcement_entity.dart';

class AnnouncementModel extends AnnouncementEntity {
  AnnouncementModel({
    super.id,
    super.imagePath,
    super.type,
    super.name,
    super.description,
    super.createdAt,
  });
}
