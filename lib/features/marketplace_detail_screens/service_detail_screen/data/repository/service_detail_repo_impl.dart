import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/service_detail_screen/data/data_source/service_detail_data_source.dart';
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/service_detail_screen/data/models/service_detail_model/service_detail_model.dart';
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/service_detail_screen/domain/entitys/service_detail_entity.dart';
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/service_detail_screen/domain/repository/service_detail_repo.dart';

@Injectable(as: ServiceDetailRepo)
class ServiceDetailRepoImpl extends ServiceDetailRepo {
  final ServiceDetailDataSource _dataSource;

  final Converter<ServiceDetailModel, ServiceDetailEntity>
      _serviceDetailConverter;

  ServiceDetailRepoImpl(
    this._dataSource,
    this._serviceDetailConverter,
  );

  @override
  Future<ServiceDetailEntity> getDetailService({int? id}) async {
    final result = await _dataSource.getDetailService(id: id!);
    final entity = _serviceDetailConverter.convert(result);
    return entity;
  }
}
