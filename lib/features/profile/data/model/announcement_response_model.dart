import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:neobis_smart_tailor/features/profile/domain/model/announcement_entity.dart';
import 'package:neobis_smart_tailor/features/profile/domain/model/announcement_response_entity.dart';

part 'announcement_response_model.g.dart';

@JsonSerializable()
class AnnouncementResponseModel extends AnnouncementResponseEntity {
  AnnouncementResponseModel({
    super.advertisement,
    super.isLast,
    super.totalCount,
  });

  factory AnnouncementResponseModel.fromJson(Map<String, dynamic> json) =>
      _$AnnouncementResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$AnnouncementResponseModelToJson(this);
}
