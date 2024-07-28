import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_model.freezed.dart';
part 'order_model.g.dart';

@freezed
class OrderModel with _$OrderModel {
  factory OrderModel({
    required int orderId,
    required String orderPhotoUrl,
    required String name,
    required String orderDescription,
    required int price,
    required String dateOfException,
  }) = _OrderModel;

  factory OrderModel.initial() {
    return OrderModel(
      // type: '',
      orderId: 0,
      orderPhotoUrl: '',
      name: '',
      orderDescription: '',
      price: 0,
      dateOfException: '',
    );
  }

  factory OrderModel.fromJson(Map<String, dynamic> json) => _$OrderModelFromJson(json);
}
