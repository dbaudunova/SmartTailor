import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:neobis_smart_tailor/features/organization/pages/current_order/domain/entitys/current_detail_order_entity.dart';
import 'package:neobis_smart_tailor/features/organization/pages/history/data/data_source/orders_history_data_source.dart';
import 'package:neobis_smart_tailor/features/organization/pages/history/data/models/current_history_detail_model/current_history_detail_model.dart';
import 'package:neobis_smart_tailor/features/organization/pages/history/domain/entitys/current_history_detail_entity.dart';
import 'package:neobis_smart_tailor/features/organization/pages/history/domain/repository/orders_history_repo.dart';
import 'package:neobis_smart_tailor/features/profile/data/model/history_model/my_history_model.dart';
import 'package:neobis_smart_tailor/features/profile/domain/model/my_history_entity.dart';

@Injectable(as: OrdersHistoryRepo)
class OrdersHistoryRepoImpl implements OrdersHistoryRepo {
  final OrdersHistoryDataSource _dataSource;
  final Converter<MyHistoryModel, MyHistoryEntity> _converterHistory;
  final Converter<CurrentHistoryDetailModel, CurrentHistoryDetailEntity> _converterDetailed;

  OrdersHistoryRepoImpl(
    this._dataSource,
    this._converterHistory,
    this._converterDetailed,
  );

  @override
  Future<MyHistoryEntity> getAllOrdersHistory() async {
    var model = await _dataSource.getAllOrdersHistory();
    var entity = _converterHistory.convert(model);
    return entity;
  }

  @override
  Future<CurrentHistoryDetailEntity> getDetaileHistoryOrder({required int id}) async {
    var model = await _dataSource.getDetaileHistoryOrder(id: id);
    var entity = _converterDetailed.convert(model);
    return entity;
  }
}
