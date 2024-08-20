import 'package:neobis_smart_tailor/features/organization/pages/current_order/data/models/order_status_enum.dart';

class CurrentOrderEntity {
  final int? id;
  final String? name;
  final double? price;
  final String? description;
  final String? imageUrl;
  final OrderStatus? status;

  CurrentOrderEntity({
    required this.id,
    required this.name,
    required this.description,
    required this.imageUrl,
    required this.price,
    required this.status,
  });

  factory CurrentOrderEntity.initial() {
    return CurrentOrderEntity(
      id: null,
      name: '',
      description: '',
      imageUrl: '',
      price: 0.0,
      status: OrderStatus.waiting,
    );
  }
}
