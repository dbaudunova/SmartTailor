import 'package:freezed_annotation/freezed_annotation.dart';

part 'announcement_entity.g.dart';

@JsonSerializable()
class AnnouncementEntity {
  final int? id;
  final String? imagePath;
  final String? type;
  final String? name;
  final String? description;
  final String? createdAt;

  AnnouncementEntity({
    this.id,
    this.imagePath,
    this.type,
    this.name,
    this.description,
    this.createdAt,
  });

  factory AnnouncementEntity.fromJson(Map<String, dynamic> json) =>
      _$AnnouncementEntityFromJson(json);

  Map<String, dynamic> toJson() => _$AnnouncementEntityToJson(this);
}
