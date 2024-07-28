import 'dart:io';

import 'package:neobis_smart_tailor/features/order_place/data/models/order_place_model.dart';

abstract class OrderPlaceDataSource {
  Future<void> createOrder({OrderPlaceModel? orderPlaceModel, List<File>? images});
  Future<void> createService({OrderPlaceModel? orderPlaceModel, List<File>? images});
  Future<void> createEquipment({OrderPlaceModel? orderPlaceModel, List<File>? images});
}
