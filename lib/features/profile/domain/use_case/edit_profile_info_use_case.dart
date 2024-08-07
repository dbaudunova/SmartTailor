import 'package:injectable/injectable.dart';
import 'package:neobis_smart_tailor/core/use_case/use_case.dart';
import 'package:neobis_smart_tailor/features/profile/domain/model/profile_entity.dart';
import 'package:neobis_smart_tailor/features/profile/domain/repository/profile_repo.dart';

@singleton
class EditProfileInfoUseCase extends UseCase<ProfileEntity, ProfileEntity> {
  final ProfileRepo repo;

  EditProfileInfoUseCase({required this.repo});

  @override
  Future<ProfileEntity> call(ProfileEntity params) {
    return repo.editProfileInfo(params);
  }
}
