import 'package:injectable/injectable.dart';
import 'package:neobis_smart_tailor/features/organization/domain/repository/organization_repo.dart';
import 'package:neobis_smart_tailor/features/profile/domain/entitys/my_history_entity.dart';

@singleton
class GetOrdersHistoryUseCase {
  final OrganizationRepo repo;

  GetOrdersHistoryUseCase({
    required this.repo,
  });

  Future<MyHistoryEntity> call() async {
    var entity = await repo.getAllOrdersHistory();
    return entity;
  }
}
