import 'package:neobis_smart_tailor/features/order_place/data/models/order_place_model.dart';

class OrderDetailEntity {
  final int? id;
  final String? name;
  final String? description;
  final int? price;
  final String? contactInfo;
  final String? authorImage;
  final String? authorFullName;
  final List<String>? orderImages;
  final String dateOfExecution;
  final List<Item> orderItems;

  OrderDetailEntity({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.contactInfo,
    required this.authorImage,
    required this.authorFullName,
    required this.orderImages,
    required this.dateOfExecution,
    required this.orderItems,
  });
}
