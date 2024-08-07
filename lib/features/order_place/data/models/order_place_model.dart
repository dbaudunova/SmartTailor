import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_place_model.freezed.dart';
part 'order_place_model.g.dart';

@freezed
class OrderPlaceModel with _$OrderPlaceModel {
  factory OrderPlaceModel(
      {
      // required String type,
      required String name,
      required String description,
      required List<String> images,
      required Set<Item> items,
      required String? dateOfExecution,
      required String contactInfo,
      required String? price,
      required int? quantity}) = _OrderPlaceModel;

  factory OrderPlaceModel.initial() {
    return OrderPlaceModel(
        name: '',
        description: '',
        images: [],
        items: {},
        dateOfExecution: null,
        contactInfo: '',
        price: '',
        quantity: 0);
  }

  factory OrderPlaceModel.fromJson(Map<String, dynamic> json) =>
      _$OrderPlaceModelFromJson(json);
}

@freezed
class Item with _$Item {
  factory Item({
    required String size,
    required int quantity,
  }) = _Item;

  factory Item.initial() {
    return Item(size: '', quantity: 1);
  }

  factory Item.fromJson(Map<String, dynamic> json) => _$ItemFromJson(json);
}
