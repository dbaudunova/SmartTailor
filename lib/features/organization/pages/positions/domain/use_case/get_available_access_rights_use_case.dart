import 'package:injectable/injectable.dart';
import 'package:neobis_smart_tailor/features/organization/pages/positions/domain/repository/positions_repo.dart';

@singleton
class GetAvailableAccessRightsUseCase {
  final PositionsRepo repo;

  GetAvailableAccessRightsUseCase({
    required this.repo,
  });

  Future<List<String>> call() async {
    var list = await repo.getAvailableAccessRights();
    return list;
  }
}
