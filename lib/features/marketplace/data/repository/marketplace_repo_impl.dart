import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:neobis_smart_tailor/features/marketplace/data/data_source/marketplace_data_source.dart';
import 'package:neobis_smart_tailor/features/marketplace/data/models/equipment_model/equipment_model.dart';
import 'package:neobis_smart_tailor/features/marketplace/data/models/order_model/order_model.dart';
import 'package:neobis_smart_tailor/features/marketplace/data/models/service_model/service_model.dart';
import 'package:neobis_smart_tailor/features/marketplace/domain/entitys/equipment_entity.dart';
import 'package:neobis_smart_tailor/features/marketplace/domain/entitys/order_entity.dart';
import 'package:neobis_smart_tailor/features/marketplace/domain/entitys/service_entity.dart';
import 'package:neobis_smart_tailor/features/marketplace/domain/repository/marketplace_repo.dart';

@Injectable(as: MarketplaceRepo)
class MarketplaceRepoImpl extends MarketplaceRepo {
  final MarketplaceDataSource _dataSource;
  final Converter<EquipmentModel, EquipmentEntity> _equipmentConverter;
  final Converter<OrderModel, OrderEntity> _orderConverter;
  final Converter<ServiceModel, ServiceEntity> _serviceConverter;

  MarketplaceRepoImpl(
    this._dataSource,
    this._equipmentConverter,
    this._orderConverter,
    this._serviceConverter,
  );

  @override
  Future<List<EquipmentEntity>> getEquipments() async {
    final result = await _dataSource.getEquipments();
    final entitys = result.map((model) => _equipmentConverter.convert(model)).toList();
    return entitys;
  }

  @override
  Future<List<OrderEntity>> getOrders() async {
    final result = await _dataSource.getOrders();
    final orders = result.map((model) => _orderConverter.convert(model)).toList();
    return orders;
  }

  @override
  Future<List<ServiceEntity>> getServices() async {
    final result = await _dataSource.getServices();
    final services = result.map((model) => _serviceConverter.convert(model)).toList();
    return services;
  }
}
