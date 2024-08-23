import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:neobis_smart_tailor/features/organization/pages/current_order/data/data_source/current_order_data_source.dart';
import 'package:neobis_smart_tailor/features/organization/pages/current_order/data/models/organization_list_model/organization_list_model.dart';
import 'package:neobis_smart_tailor/features/organization/pages/current_order/domain/entitys/current_order_entity.dart';
import 'package:neobis_smart_tailor/features/organization/pages/current_order/domain/entitys/organization_list_entity.dart';
import 'package:neobis_smart_tailor/features/organization/pages/history/data/data_source/orders_history_data_source.dart';
import 'package:neobis_smart_tailor/features/organization/pages/history/domain/repository/orders_history_repo.dart';
import 'package:neobis_smart_tailor/features/profile/data/model/history_model/my_history_model.dart';
import 'package:neobis_smart_tailor/features/profile/domain/model/my_history_entity.dart';

@Injectable(as: OrdersHistoryRepo)
class OrdersHistoryRepoImpl implements OrdersHistoryRepo {
  final OrdersHistoryDataSource _dataSource;
  final Converter<MyHistoryModel, MyHistoryEntity> _converterHistory;

  OrdersHistoryRepoImpl(
    this._dataSource,
    this._converterHistory,
  );

  @override
  Future<MyHistoryEntity> getAllOrdersHistory() async {
    var model = await _dataSource.getAllOrdersHistory();
    var entity = _converterHistory.convert(model);
    return entity;
  }

  @override
  Future<CurrentOrderEntity> getDetaileHistoryOrder({required int id}) {
    // TODO: implement getDetaileHistoryOrder
    throw UnimplementedError();
  }
}
