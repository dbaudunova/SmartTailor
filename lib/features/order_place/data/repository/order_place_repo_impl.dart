import 'dart:io';

import 'package:injectable/injectable.dart';
import 'package:neobis_smart_tailor/features/order_place/data/data_source/order_place_data_source.dart';
import 'package:neobis_smart_tailor/features/order_place/data/models/order_place_model.dart';
import 'package:neobis_smart_tailor/features/order_place/domain/repository/order_place_repo.dart';

@Injectable(as: OrderPlaceRepo)
class CreateOrderRepoImpl implements OrderPlaceRepo {
  final OrderPlaceDataSource _dataSource;

  CreateOrderRepoImpl(
    this._dataSource,
  );

  @override
  Future<void> createOrder({OrderPlaceModel? orderPlaceModel, List<File>? images}) async {
    await _dataSource.createOrder(orderPlaceModel: orderPlaceModel, images: images);
  }

  @override
  Future<void> createEquipment({OrderPlaceModel? orderPlaceModel, List<File>? images}) async {
    await _dataSource.createEquipment(orderPlaceModel: orderPlaceModel, images: images);
  }

  @override
  Future<void> createService({OrderPlaceModel? orderPlaceModel, List<File>? images}) async {
    await _dataSource.createService(orderPlaceModel: orderPlaceModel, images: images);
  }
}
