import 'package:injectable/injectable.dart';
import 'package:neobis_smart_tailor/core/use_case/use_case.dart';
import 'package:neobis_smart_tailor/features/profile/domain/model/service_detailed_entity.dart';
import 'package:neobis_smart_tailor/features/profile/domain/repository/profile_repo.dart';

@singleton
class GetServiceDetailedByIdUseCase extends UseCase<ServiceDetailedEntity, int> {

  final ProfileRepo repo;

  GetServiceDetailedByIdUseCase({required this.repo});

  @override
  Future<ServiceDetailedEntity> call(int params) async {
    return await repo.getServiceDetailedById(id: params);
  }
}
