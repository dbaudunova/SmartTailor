import 'package:injectable/injectable.dart';
import 'package:neobis_smart_tailor/features/organization/domain/repository/organization_repo.dart';

@singleton
class GetAvailableAccessRightsUseCase {
  final OrganizationRepo repo;

  GetAvailableAccessRightsUseCase({
    required this.repo,
  });

  Future<List<String>> call() async {
    var list = await repo.getAvailableAccessRights();
    return list;
  }
}
