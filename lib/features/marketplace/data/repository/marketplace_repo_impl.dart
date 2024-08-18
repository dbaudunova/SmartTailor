import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:neobis_smart_tailor/features/marketplace/data/data_source/marketplace_data_source.dart';
import 'package:neobis_smart_tailor/features/marketplace/data/models/general_responce/general_responce.dart';
import 'package:neobis_smart_tailor/features/marketplace/domain/entitys/general_responce_entity.dart';
import 'package:neobis_smart_tailor/features/marketplace/domain/repository/marketplace_repo.dart';

@Injectable(as: MarketplaceRepo)
class MarketplaceRepoImpl extends MarketplaceRepo {
  final MarketplaceDataSource _dataSource;
  // final Converter<EquipmentModel, EquipmentEntity> _equipmentConverter;
  // final Converter<OrderModel, OrderEntity> _orderConverter;
  // final Converter<ServiceModel, ServiceEntity> _serviceConverter;
  final Converter<GeneralResponceModel, GeneralResponceEntity> _generalModelConverter;

  MarketplaceRepoImpl(
    this._dataSource,
    // this._equipmentConverter,
    // this._orderConverter,
    // this._serviceConverter,
    this._generalModelConverter,
  );

  @override
  Future<GeneralResponceEntity> getEquipments({required int pageNumber}) async {
    final result = await _dataSource.getEquipments(pageNumber: pageNumber);
    final equipment = _generalModelConverter.convert(result);
    return equipment;
  }

  @override
  Future<GeneralResponceEntity> getOrders({required int pageNumber}) async {
    final result = await _dataSource.getOrders(pageNumber: pageNumber);
    final orders = _generalModelConverter.convert(result);
    return orders;
  }

  @override
  Future<GeneralResponceEntity> getServices({required int pageNumber}) async {
    final result = await _dataSource.getServices(pageNumber: pageNumber);
    final services = _generalModelConverter.convert(result);
    return services;
  }
}
