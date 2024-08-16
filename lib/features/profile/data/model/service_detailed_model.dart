import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:neobis_smart_tailor/features/profile/domain/model/equipment_detailed_entity.dart';
import 'package:neobis_smart_tailor/features/profile/domain/model/service_detailed_entity.dart';

part 'service_detailed_model.g.dart';

@JsonSerializable()
class ServiceDetailedModel extends ServiceDetailedEntity {
  ServiceDetailedModel({
    super.authorFullName,
    super.authorImage,
    super.contactInfo,
    super.description,
    super.id,
    super.name,
    super.price,
    super.serviceImages,
    super.serviceApplicants,
  });

  factory ServiceDetailedModel.fromJson(Map<String, dynamic> json) =>
      _$ServiceDetailedModelFromJson(json);

  Map<String, dynamic> toJson() => _$ServiceDetailedModelToJson(this);
}
