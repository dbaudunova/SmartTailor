import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:neobis_smart_tailor/features/profile/domain/model/equipment_detailed_entity.dart';

part 'equipment_detailed_model.g.dart';

@JsonSerializable()
class EquipmentDetailedModel extends EquipmentDetailedEntity {
  EquipmentDetailedModel({
    super.authorFullName,
    super.authorImage,
    super.contactInfo,
    super.description,
    super.equipmentImages,
    super.id,
    super.name,
    super.price,
    super.equipmentBuyers,
  });

  factory EquipmentDetailedModel.fromJson(Map<String, dynamic> json) =>
      _$EquipmentDetailedModelFromJson(json);

  Map<String, dynamic> toJson() => _$EquipmentDetailedModelToJson(this);
}
