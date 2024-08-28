import 'package:injectable/injectable.dart';
import 'package:neobis_smart_tailor/features/organization/domain/entitys/organization_list_entity.dart';
import 'package:neobis_smart_tailor/features/organization/domain/repository/organization_repo.dart';

@singleton
class GetAllOrdersUseCase {
  final OrganizationRepo repo;

  GetAllOrdersUseCase({
    required this.repo,
  });

  Future<OrganizationListEntity> call() async {
    var entity = await repo.getAllOrders();
    return entity;
  }
}
