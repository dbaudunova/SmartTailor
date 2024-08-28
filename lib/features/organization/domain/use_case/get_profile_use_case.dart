import 'package:injectable/injectable.dart';
import 'package:neobis_smart_tailor/features/organization/domain/entitys/organization_info_entity.dart';
import 'package:neobis_smart_tailor/features/organization/domain/repository/organization_repo.dart';

@singleton
class GetProfileUseCase {
  final OrganizationRepo repo;

  GetProfileUseCase({
    required this.repo,
  });

  Future<OrganizationInfoEntity?> call() async {
    var entity = await repo.getOrganization();
    return entity;
  }
}
