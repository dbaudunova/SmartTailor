import 'package:neobis_smart_tailor/features/organization/pages/organization/data/models/organization_info_model/organization_info_model.dart';

abstract class OrganizationDataSource {
  Future<OrganizationInfoModel> getOrganization();
}
