import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:neobis_smart_tailor/features/organization/pages/organization/data/data_source/organization_data_source.dart';
import 'package:neobis_smart_tailor/features/organization/pages/organization/data/models/organization_info_model/organization_info_model.dart';
import 'package:neobis_smart_tailor/features/organization/pages/organization/domain/entitys/organization_info_entity.dart';
import 'package:neobis_smart_tailor/features/organization/pages/organization/domain/repository/organization_repo.dart';

@Injectable(as: OrganizationRepo)
class OrganizationRepoImpl implements OrganizationRepo {
  final OrganizationDataSource _dataSource;
  final Converter<OrganizationInfoModel, OrganizationInfoEntity> _organizationInfoConverter;

  OrganizationRepoImpl(
    this._dataSource,
    this._organizationInfoConverter,
  );

  @override
  Future<OrganizationInfoEntity?> getOrganization() async {
    var model = await _dataSource.getOrganization();
    final entity = _organizationInfoConverter.convert(model!);
    return entity;
  }
}
