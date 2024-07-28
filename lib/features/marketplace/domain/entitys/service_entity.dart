class ServiceEntity {
  final int? id;
  final String? imagePath;
  final String? name;
  final String? description;
  final int? price;
  final String? authorImagePath;
  final String? authorName;
  final String? authorSurname;
  final String? patronymic;

  ServiceEntity({
    required this.id,
    required this.imagePath,
    required this.name,
    required this.description,
    required this.price,
    required this.authorImagePath,
    required this.authorName,
    required this.authorSurname,
    required this.patronymic,
  });
}
