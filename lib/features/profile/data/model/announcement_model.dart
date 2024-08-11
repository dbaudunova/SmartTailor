import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:neobis_smart_tailor/features/profile/domain/model/announcement_entity.dart';

part 'announcement_model.g.dart';

@JsonSerializable()
class AnnouncementModel extends AnnouncementEntity {
  AnnouncementModel({
    super.id,
    super.imagePath,
    super.type,
    super.name,
    super.description,
    super.createdAt,
  });

  factory AnnouncementModel.fromJson(Map<String, dynamic> json) =>
      _$AnnouncementModelFromJson(json);

  Map<String, dynamic> toJson() => _$AnnouncementModelToJson(this);
}
