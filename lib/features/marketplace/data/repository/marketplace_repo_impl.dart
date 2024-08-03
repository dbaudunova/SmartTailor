import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:neobis_smart_tailor/features/marketplace/data/data_source/marketplace_data_source.dart';
import 'package:neobis_smart_tailor/features/marketplace/data/models/general_model/general_model.dart';
import 'package:neobis_smart_tailor/features/marketplace/domain/entitys/common_entity.dart';
import 'package:neobis_smart_tailor/features/marketplace/domain/repository/marketplace_repo.dart';

@Injectable(as: MarketplaceRepo)
class MarketplaceRepoImpl extends MarketplaceRepo {
  final MarketplaceDataSource _dataSource;
  // final Converter<EquipmentModel, EquipmentEntity> _equipmentConverter;
  // final Converter<OrderModel, OrderEntity> _orderConverter;
  // final Converter<ServiceModel, ServiceEntity> _serviceConverter;
  final Converter<GeneralOrderModel, GeneralEntity> _generalModelConverter;

  MarketplaceRepoImpl(
    this._dataSource,
    // this._equipmentConverter,
    // this._orderConverter,
    // this._serviceConverter,
    this._generalModelConverter,
  );

  @override
  Future<List<GeneralEntity>> getEquipments() async {
    final result = await _dataSource.getEquipments();
    final entitys = result.map((model) => _generalModelConverter.convert(model)).toList();
    return entitys;
  }

  @override
  Future<List<GeneralEntity>> getOrders() async {
    final result = await _dataSource.getOrders();
    final orders = result.map((model) => _generalModelConverter.convert(model)).toList();
    return orders;
  }

  @override
  Future<List<GeneralEntity>> getServices() async {
    final result = await _dataSource.getServices();
    final services = result.map((model) => _generalModelConverter.convert(model)).toList();
    return services;
  }
}
