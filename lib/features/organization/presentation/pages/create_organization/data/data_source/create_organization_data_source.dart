import 'dart:io';

import 'package:neobis_smart_tailor/features/organization/presentation/pages/create_organization/data/models/create_organization_model/create_organixation_model.dart';

abstract class CreateOrganizationDataSource {
  Future<void> createOrganization(
      {required CreateOrganizationModel model, required File image});
}
