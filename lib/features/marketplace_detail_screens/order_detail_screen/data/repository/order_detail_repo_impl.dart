import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/order_detail_screen/data/data_source/order_detail_data_source.dart';
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/order_detail_screen/data/models/order_detail_model/order_detail_model.dart';
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/order_detail_screen/domain/entitys/order_detail_entity.dart';
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/order_detail_screen/domain/repository/order_detail_repo.dart';

@Injectable(as: OrderDetailRepo)
class OrderDetailRepoImpl extends OrderDetailRepo {
  final OrderDetailDataSource _dataSource;
  final Converter<OrderDetailModel, OrderDetailEntity> _orderDetailConverter;

  OrderDetailRepoImpl(
    this._dataSource,
    this._orderDetailConverter,
  );

  @override
  Future<OrderDetailEntity> getDetailOrder({int? id}) async {
    final result = await _dataSource.getDetailOrder(id: id!);
    final entity = _orderDetailConverter.convert(result);
    return entity;
  }

  @override
  Future<void> requestToExecute({int? id}) async {
    await _dataSource.requestToExecute(id: id!);
  }
}
