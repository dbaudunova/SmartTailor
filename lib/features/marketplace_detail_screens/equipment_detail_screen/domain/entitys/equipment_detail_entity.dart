class EquipmentDetailEntity {
  final int? id;
  final String? name;
  final String? description;
  final int? price;
  final String? contactInfo;
  final String? authorImage;
  final String? authorFullName;
  final List<String>? equipmentImages;
  final int? quantity;

  EquipmentDetailEntity({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.contactInfo,
    required this.authorImage,
    required this.authorFullName,
    required this.equipmentImages,
    required this.quantity,
  });
  factory EquipmentDetailEntity.initial() {
    return EquipmentDetailEntity(
      id: 0,
      name: '',
      description: '',
      price: 0,
      contactInfo: '',
      authorImage: '',
      authorFullName: '',
      equipmentImages: [],
      quantity: 0,
    );
  }
}
