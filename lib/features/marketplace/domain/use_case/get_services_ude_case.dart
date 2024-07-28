import 'package:injectable/injectable.dart';
import 'package:neobis_smart_tailor/core/use_case/use_case.dart';
import 'package:neobis_smart_tailor/features/marketplace/domain/entitys/service_entity.dart';
import 'package:neobis_smart_tailor/features/marketplace/domain/repository/marketplace_repo.dart';

@singleton
class GetServicesUseCase extends UseCase<List<ServiceEntity>, void> {
  final MarketplaceRepo repo;

  GetServicesUseCase({required this.repo});

  @override
  Future<List<ServiceEntity>> call(params) async {
    var entity = await repo.getServices();
    return entity;
  }
}
