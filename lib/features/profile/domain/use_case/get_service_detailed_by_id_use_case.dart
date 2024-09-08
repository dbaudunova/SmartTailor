import 'package:injectable/injectable.dart';
import 'package:neobis_smart_tailor/core/use_case/use_case.dart';
import 'package:neobis_smart_tailor/features/profile/domain/entitys/my_detailed_annoucement_entity.dart';
import 'package:neobis_smart_tailor/features/profile/domain/repository/profile_repo.dart';

@singleton
class GetServiceDetailedByIdUseCase extends UseCase<MyDetailedAnnounceEntity, int> {
  final ProfileRepo repo;

  GetServiceDetailedByIdUseCase({required this.repo});

  @override
  Future<MyDetailedAnnounceEntity> call(int params) async {
    return await repo.getServiceDetailedById(id: params);
  }
}
