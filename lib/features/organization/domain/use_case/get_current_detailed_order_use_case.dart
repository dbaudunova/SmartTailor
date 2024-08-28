import 'package:injectable/injectable.dart';
import 'package:neobis_smart_tailor/features/organization/domain/entitys/current_detail_order_entity.dart';
import 'package:neobis_smart_tailor/features/organization/domain/repository/organization_repo.dart';

@singleton
class GetCurrentDetailOrderUseCase {
  final OrganizationRepo repo;

  GetCurrentDetailOrderUseCase({
    required this.repo,
  });

  Future<CurrentDetailOrderEntity> call({required int id}) async {
    var entity = await repo.getDetailedOrder(id: id);
    return entity;
  }
}
