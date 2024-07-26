import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:neobis_smart_tailor/features/profile/domain/model/profile_entity.dart';

part 'profile_model.g.dart';

@JsonSerializable()
class ProfileModel extends ProfileEntity {
  ProfileModel({
    super.id,
    super.imagePath,
    super.name,
    super.surname,
    super.patronymic,
    super.email,
    super.phoneNumber,
    super.hasSubscription,
  });

  factory ProfileModel.fromJson(Map<String, dynamic> json) => _$ProfileModelFromJson(json);
  Map<String, dynamic> toJson() => _$ProfileModelToJson(this);
}
