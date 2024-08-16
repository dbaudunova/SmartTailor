class HistoryOrderEntity {
  final int? id;
  final String? name;
  final double? price;
  final String? description;
  final String? imageUrl;
  final String? status;

  HistoryOrderEntity({
    required this.id,
    required this.name,
    required this.description,
    required this.imageUrl,
    required this.price,
    required this.status,
  });

  factory HistoryOrderEntity.initial() {
    return HistoryOrderEntity(
      id: null,
      name: '',
      description: '',
      imageUrl: '',
      price: 0.0,
      status: '',
    );
  }
}
