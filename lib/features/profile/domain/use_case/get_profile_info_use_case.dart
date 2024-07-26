import 'package:injectable/injectable.dart';
import 'package:neobis_smart_tailor/core/use_case/use_case.dart';
import 'package:neobis_smart_tailor/features/profile/domain/model/profile_entity.dart';
import 'package:neobis_smart_tailor/features/profile/domain/repository/profile_repo.dart';

@singleton
class GetProfileInfoUseCase extends UseCase<ProfileEntity, void> {
  final ProfileRepo repo;

  GetProfileInfoUseCase({required this.repo});

  @override
  Future<ProfileEntity> call(void params) async {
    return repo.getProfileInfo();
  }
}
