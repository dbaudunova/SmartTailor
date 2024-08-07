import 'dart:io';
import 'package:injectable/injectable.dart';
import 'package:neobis_smart_tailor/features/order_place/data/models/order_place_model.dart';
import 'package:neobis_smart_tailor/features/order_place/domain/repository/order_place_repo.dart';

@singleton
class CreateOrderUseCase {
  final OrderPlaceRepo repo;

  CreateOrderUseCase({
    required this.repo,
  });

  Future<void> call(
      {OrderPlaceModel? orderPlaceModel, List<File>? images}) async {
    return repo.createOrder(orderPlaceModel: orderPlaceModel, images: images);
  }
}
