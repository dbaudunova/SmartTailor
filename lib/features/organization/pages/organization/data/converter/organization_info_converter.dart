import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:neobis_smart_tailor/features/organization/pages/invite_employee/domain/entitys/_entity.dart';
import 'package:neobis_smart_tailor/features/organization/pages/organization/data/models/organization_info_model/organization_info_model.dart';

@Injectable(as: Converter<OrganizationInfoModel, OrganizationInfoEntity>)
class GeneralResponceMapper extends Converter<OrganizationInfoModel, OrganizationInfoEntity> {
  @override
  OrganizationInfoEntity convert(OrganizationInfoModel input) {
    return OrganizationInfoEntity(
      createdAt: input.createdAt,
      id: input.id,
      description: input.description,
      imagePath: input.imagePath,
      name: input.name,
    );
  }
}
