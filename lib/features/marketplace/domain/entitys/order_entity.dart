class OrderEntity {
  final int? orderId;
  final String? orderPhotoUrl;
  final String? name;
  final String? orderDescription;
  final int? price;
  final String? dateOfException;
  OrderEntity({
    required this.orderId,
    required this.orderPhotoUrl,
    required this.name,
    required this.orderDescription,
    required this.price,
    required this.dateOfException,
  });
}
