import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:neobis_smart_tailor/features/order_place/data/models/order_place_model.dart';

part 'order_detail_model.freezed.dart';
part 'order_detail_model.g.dart';

@freezed
class OrderDetailModel with _$OrderDetailModel {
  factory OrderDetailModel({
    required int id,
    required String name,
    required String description,
    required int price,
    required String contactInfo,
    required String authorImage,
    required String authorFullName,
    required List<String> orderImages,
    required String dateOfExecution,
    required List<Item> orderItems,
  }) = _OrderDetailModel;

  factory OrderDetailModel.initial() {
    return OrderDetailModel(
      id: 0,
      name: '',
      description: '',
      price: 0,
      contactInfo: '',
      authorImage: '',
      authorFullName: '',
      orderImages: [],
      dateOfExecution: '',
      orderItems: [],
    );
  }

  factory OrderDetailModel.fromJson(Map<String, dynamic> json) =>
      _$OrderDetailModelFromJson(json);
}
