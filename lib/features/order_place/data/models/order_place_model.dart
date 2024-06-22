import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_place_model.freezed.dart';
part 'order_place_model.g.dart';

@freezed
class OrderPlaceModel with _$OrderPlaceModel {
  const factory OrderPlaceModel(
      {required String type,
      required String name,
      required String description,
      required List<String> images,
      required List<String> sizes,
      required String date,
      required String contactInfo,
      required int? summ}) = _OrderPlaceModel;

  factory OrderPlaceModel.initial() {
    return const OrderPlaceModel(
      type: '',
      name: '',
      description: '',
      images: [],
      sizes: [],
      date: '',
      contactInfo: '',
      summ: null,
    );
  }

  factory OrderPlaceModel.fromJson(Map<String, dynamic> json) => _$OrderPlaceModelFromJson(json);
}
