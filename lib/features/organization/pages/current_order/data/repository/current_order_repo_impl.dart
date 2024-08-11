import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:neobis_smart_tailor/features/organization/pages/current_order/data/data_source/current_order_data_source.dart';
import 'package:neobis_smart_tailor/features/organization/pages/current_order/data/models/_model/current_order_model.dart';
import 'package:neobis_smart_tailor/features/organization/pages/current_order/domain/entitys/current_order_entity.dart';
import 'package:neobis_smart_tailor/features/organization/pages/current_order/domain/repository/current_orders_repo.dart';

@Injectable(as: CurrentOrdersRepo)
class CurrentOrderRepoImpl implements CurrentOrdersRepo {
  final CurrentOrderDataSource _dataSource;
  final Converter<CurrentOrderModel, CurrentOrderEntity> _converter;

  CurrentOrderRepoImpl(
    this._dataSource,
    this._converter,
  );

  @override
  Future<List<CurrentOrderEntity>> getAllOrders() async {
    var models = await _dataSource.gatAllOrders();
    final entitys = models.map((model) => _converter.convert(model)).toList();
    return entitys;
  }

  @override
  Future<CurrentOrderEntity> getDetailedOrder({required String id}) async {
    var models = await _dataSource.gatAllOrders();
    // final entitys =  _converter.convert(modeld);
    return CurrentOrderEntity.initial();
  }
}
