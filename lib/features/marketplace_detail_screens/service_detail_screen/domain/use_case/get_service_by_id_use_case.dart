import 'package:injectable/injectable.dart';
import 'package:neobis_smart_tailor/core/use_case/use_case.dart';
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/service_detail_screen/domain/entitys/service_detail_entity.dart';
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/service_detail_screen/domain/repository/service_detail_repo.dart';

@singleton
class GetServiceByIdUseCase extends UseCase<ServiceDetailEntity, int> {
  final ServiceDetailRepo repo;

  GetServiceByIdUseCase({required this.repo});

  @override
  Future<ServiceDetailEntity> call(params) async {
    var entity = await repo.getDetailService(id: params);
    return entity;
  }
}
