class CurrentOrderEntity {
  final int? id;
  final String? name;
  final int? price;
  final String? description;
  final String? imageUrl;

  CurrentOrderEntity({
    required this.id,
    required this.name,
    required this.description,
    required this.imageUrl,
    required this.price,
  });

  factory CurrentOrderEntity.initial() {
    return CurrentOrderEntity(
      id: null,
      name: '',
      description: '',
      imageUrl: '',
      price: 0,
    );
  }
}
