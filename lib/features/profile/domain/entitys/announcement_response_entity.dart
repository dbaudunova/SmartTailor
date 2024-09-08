import 'package:neobis_smart_tailor/features/profile/domain/entitys/announcement_entity.dart';

class AnnouncementResponseEntity {
  final List<AnnouncementEntity>? advertisement;
  final bool? isLast;
  final int? totalCount;

  AnnouncementResponseEntity({
    this.advertisement,
    this.isLast,
    this.totalCount,
  });
}
