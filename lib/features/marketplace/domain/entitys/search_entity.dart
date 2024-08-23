class AdvertisementEntity {
  final int id;
  final String name;
  final String description;
  final double? price;
  final String imageUrl;
  final String? authorFullName;
  final String? authorImageUrl;
  final String? type;

  AdvertisementEntity({
    required this.type,
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.imageUrl,
    required this.authorFullName,
    required this.authorImageUrl,
  });

  factory AdvertisementEntity.initial() {
    return AdvertisementEntity(
      type: null,
      id: 0,
      name: '',
      description: '',
      price: 0.0,
      imageUrl: '',
      authorFullName: '',
      authorImageUrl: '',
    );
  }
}

class AdvertisementResponseEntity {
  final List<AdvertisementEntity> advertisement;
  final bool isLast;
  final int totalCount;

  AdvertisementResponseEntity({
    required this.advertisement,
    required this.isLast,
    required this.totalCount,
  });
}
