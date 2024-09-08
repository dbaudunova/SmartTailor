import 'package:neobis_smart_tailor/features/profile/domain/entitys/equipment_detailed_entity.dart';

class ServiceDetailedEntity {
  final int? id;
  final String? name;
  final String? description;
  final double? price;
  final String? contactInfo;
  final String? authorImage;
  final String? authorFullName;
  final List<String>? serviceImages;
  final List<EquipmentBuyers>? serviceApplicants;

  ServiceDetailedEntity({
    this.id,
    this.name,
    this.description,
    this.price,
    this.contactInfo,
    this.authorImage,
    this.authorFullName,
    this.serviceImages,
    this.serviceApplicants,
  });
}
