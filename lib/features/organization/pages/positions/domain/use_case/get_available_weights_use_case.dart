import 'package:injectable/injectable.dart';
import 'package:neobis_smart_tailor/features/organization/pages/positions/domain/repository/positions_repo.dart';

@singleton
class GetAvailableWeightsUseCase {
  final PositionsRepo repo;

  GetAvailableWeightsUseCase({
    required this.repo,
  });

  Future<List<int>> call() async {
    var list = await repo.getAvailableWeights();
    return list;
  }
}
