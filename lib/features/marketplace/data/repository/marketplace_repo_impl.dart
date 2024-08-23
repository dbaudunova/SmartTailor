import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:neobis_smart_tailor/features/marketplace/data/data_source/marketplace_data_source.dart';
import 'package:neobis_smart_tailor/features/marketplace/data/models/general_responce/general_responce.dart';
import 'package:neobis_smart_tailor/features/marketplace/data/models/search_model/advertisement_model.dart';
import 'package:neobis_smart_tailor/features/marketplace/domain/entitys/general_responce_entity.dart';
import 'package:neobis_smart_tailor/features/marketplace/domain/entitys/search_entity.dart';
import 'package:neobis_smart_tailor/features/marketplace/domain/repository/marketplace_repo.dart';

@Injectable(as: MarketplaceRepo)
class MarketplaceRepoImpl extends MarketplaceRepo {
  final MarketplaceDataSource _dataSource;

  final Converter<GeneralResponceModel, GeneralResponceEntity> _generalModelConverter;
  final Converter<AdvertisementResponseModel, AdvertisementResponseEntity> _advertisementResponceConverter;

  MarketplaceRepoImpl(
    this._dataSource,
    this._generalModelConverter,
    this._advertisementResponceConverter,
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

  @override
  Future<AdvertisementResponseEntity> getSearchEquipment({required int pageNumber, required String query}) async {
    final result = await _dataSource.getSearchEquipment(pageNumber: pageNumber, query: query);
    final equipment = _advertisementResponceConverter.convert(result);
    return equipment;
  }

  @override
  Future<AdvertisementResponseEntity> getSearchOrder({required int pageNumber, required String query}) async {
    final result = await _dataSource.getSearchOrder(pageNumber: pageNumber, query: query);
    final orders = _advertisementResponceConverter.convert(result);
    return orders;
  }

  @override
  Future<AdvertisementResponseEntity> getSearchServices({required int pageNumber, required String query}) async {
    final result = await _dataSource.getSearchServices(pageNumber: pageNumber, query: query);
    final services = _advertisementResponceConverter.convert(result);
    return services;
  }
}
