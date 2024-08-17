import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:neobis_smart_tailor/features/organization/pages/current_order/data/data_source/current_order_data_source.dart';
import 'package:neobis_smart_tailor/features/organization/pages/current_order/data/models/current_detail_order_model/current_detail_order_model.dart';
import 'package:neobis_smart_tailor/features/organization/pages/current_order/data/models/organization_list_model/organization_list_model.dart';
import 'package:neobis_smart_tailor/features/organization/pages/current_order/domain/entitys/current_detail_order_entity.dart';
import 'package:neobis_smart_tailor/features/organization/pages/current_order/domain/entitys/organization_list_entity.dart';
import 'package:neobis_smart_tailor/features/organization/pages/current_order/domain/repository/current_orders_repo.dart';

@Injectable(as: CurrentOrdersRepo)
class CurrentOrderRepoImpl implements CurrentOrdersRepo {
  final CurrentOrderDataSource _dataSource;
  final Converter<OrganizationListModel, OrganizationListEntity> organizationOrderListConverter;
  final Converter<CurrentDetailOrderModel, CurrentDetailOrderEntity> currentDetailOrderconverter;

  CurrentOrderRepoImpl(
    this._dataSource,
    this.organizationOrderListConverter,
    this.currentDetailOrderconverter,
  );

  @override
  Future<OrganizationListEntity> getAllOrders() async {
    var model = await _dataSource.gatAllOrders();
    final entitys = organizationOrderListConverter.convert(model);
    return entitys;
  }

  @override
  Future<CurrentDetailOrderEntity> getDetailedOrder({required int id}) async {
    var model = await _dataSource.getDetailOrder(id: id);
    final entity = currentDetailOrderconverter.convert(model);
    return entity;
  }

  @override
  Future<void> changeOrderStatus({required int id, required String value}) async {
    await _dataSource.gatAllOrders();
  }
}
