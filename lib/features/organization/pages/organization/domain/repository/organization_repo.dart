import 'package:neobis_smart_tailor/features/organization/pages/organization/domain/entitys/organization_info_entity.dart';

abstract class OrganizationRepo {
  Future<OrganizationInfoEntity> getOrganization();
}
