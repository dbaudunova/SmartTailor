import 'package:injectable/injectable.dart';
import 'package:neobis_smart_tailor/features/organization/domain/repository/organization_repo.dart';

@singleton
class GetAvailableWeightsUseCase {
  final OrganizationRepo repo;

  GetAvailableWeightsUseCase({
    required this.repo,
  });

  Future<List<int>> call() async {
    var list = await repo.getAvailableWeights();
    return list;
  }
}
