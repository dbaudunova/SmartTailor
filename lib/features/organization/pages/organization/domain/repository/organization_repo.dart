import 'package:neobis_smart_tailor/features/organization/pages/invite_employee/domain/entitys/_entity.dart';

abstract class OrganizationRepo {
  Future<OrganizationInfoEntity> getProfile();
}
