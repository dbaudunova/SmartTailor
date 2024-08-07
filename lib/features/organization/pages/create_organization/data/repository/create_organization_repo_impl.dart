import 'dart:io';

import 'package:injectable/injectable.dart';
import 'package:neobis_smart_tailor/features/organization/pages/create_organization/data/data_source/create_organization_data_source.dart';
import 'package:neobis_smart_tailor/features/organization/pages/create_organization/data/models/create_organization_model/create_organixation_model.dart';
import 'package:neobis_smart_tailor/features/organization/pages/create_organization/domain/repository/create_organization_repo.dart';

@Injectable(as: CreateOrganizationRepo)
class CreateOrganizationRepoImpl implements CreateOrganizationRepo {
  final CreateOrganizationDataSource _dataSource;

  CreateOrganizationRepoImpl(
    this._dataSource,
  );

  @override
  Future<void> createOrganization({required CreateOrganizationModel model, required File image}) async {
    await _dataSource.createOrganization(image: image, model: model);
  }
}
