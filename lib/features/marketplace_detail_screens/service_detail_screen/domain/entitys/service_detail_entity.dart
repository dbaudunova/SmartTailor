class ServiceDetailEntity {
  final int? id;
  final String? name;
  final String? description;
  final int? price;
  final String? contactInfo;
  final String? authorImage;
  final String? authorFullName;
  final List<String>? serviceImages;

  ServiceDetailEntity({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.contactInfo,
    required this.authorImage,
    required this.authorFullName,
    required this.serviceImages,
  });
}
