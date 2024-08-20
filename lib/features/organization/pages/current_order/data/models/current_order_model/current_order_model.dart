import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:neobis_smart_tailor/features/organization/pages/current_order/data/models/order_status_enum.dart';

part 'current_order_model.freezed.dart';
part 'current_order_model.g.dart';

@freezed
class CurrentOrderModel with _$CurrentOrderModel {
  factory CurrentOrderModel({
    required int? id,
    required String? imageUrl,
    required String? name,
    required String? description,
    required double? price,
    @OrderStatusConverter() required OrderStatus status,
  }) = _CurrentOrderModel;

  factory CurrentOrderModel.initial() {
    return CurrentOrderModel(
      id: 0,
      imageUrl: '',
      name: '',
      description: '',
      price: 0.0,
      status: OrderStatus.waiting,
    );
  }

  factory CurrentOrderModel.fromJson(Map<String, dynamic> json) => _$CurrentOrderModelFromJson(json);
}
