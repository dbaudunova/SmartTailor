import 'dart:io';

import 'package:injectable/injectable.dart';
import 'package:neobis_smart_tailor/features/organization/presentation/pages/create_organization/data/models/create_organization_model/create_organixation_model.dart';
import 'package:neobis_smart_tailor/features/organization/presentation/pages/create_organization/domain/repository/create_organization_repo.dart';

@singleton
class CreateOrganizationUseCase {
  final CreateOrganizationRepo repo;

  CreateOrganizationUseCase({
    required this.repo,
  });

  Future<void> call(
      {required CreateOrganizationModel model, required File image}) async {
    return repo.createOrganization(image: image, model: model);
  }
}
