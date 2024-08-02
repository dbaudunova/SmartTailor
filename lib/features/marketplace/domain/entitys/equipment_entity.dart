class EquipmentEntity {
  final int? equipmentId;
  final String? equipmentImageUrl;
  final String? name;
  final int? price;
  final String? authorImageUrl;
  final String? authorFullName;
  final String? description;

  EquipmentEntity({
    required this.equipmentId,
    required this.equipmentImageUrl,
    required this.name,
    required this.price,
    required this.authorImageUrl,
    required this.authorFullName,
    required this.description,
  });
}
