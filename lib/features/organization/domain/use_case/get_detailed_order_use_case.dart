import 'package:injectable/injectable.dart';
import 'package:neobis_smart_tailor/features/organization/domain/entitys/current_history_detail_entity.dart';
import 'package:neobis_smart_tailor/features/organization/domain/repository/organization_repo.dart';

@singleton
class GetDetailedOrderUseCase {
  final OrganizationRepo repo;

  GetDetailedOrderUseCase({
    required this.repo,
  });

  Future<CurrentHistoryDetailEntity> call({required int id}) async {
    var entity = await repo.getDetaileHistoryOrder(id: id);
    return entity;
  }
}
