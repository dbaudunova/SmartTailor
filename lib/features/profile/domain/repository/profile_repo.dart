import 'package:neobis_smart_tailor/features/profile/domain/model/profile_entity.dart';

abstract class ProfileRepo {
  Future<void> signOut();
  Future<ProfileEntity> getProfileInfo();
}
