import 'package:freezed_annotation/freezed_annotation.dart';

part 'equipment_detailed_entity.g.dart';

class EquipmentDetailedEntity {
  final int? id;
  final String? name;
  final String? description;
  final double? price;
  final String? contactInfo;
  final String? authorImage;
  final String? authorFullName;
  final List<String>? equipmentImages;
  final List<EquipmentBuyers>? equipmentBuyers;

  EquipmentDetailedEntity({
    this.id,
    this.name,
    this.description,
    this.price,
    this.contactInfo,
    this.authorImage,
    this.authorFullName,
    this.equipmentImages,
    this.equipmentBuyers,
  });
}

@JsonSerializable()
class EquipmentBuyers {
  final String? fullName;
  final String? email;
  final String? phoneNumber;

  EquipmentBuyers({
    this.fullName,
    this.email,
    this.phoneNumber,
  });

  factory EquipmentBuyers.fromJson(Map<String, dynamic> json) =>
      _$EquipmentBuyersFromJson(json);

  Map<String, dynamic> toJson() => _$EquipmentBuyersToJson(this);
}
