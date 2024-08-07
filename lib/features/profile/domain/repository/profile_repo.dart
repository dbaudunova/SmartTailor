import 'dart:io';
import 'package:neobis_smart_tailor/features/profile/domain/model/profile_entity.dart';

abstract class ProfileRepo {
  Future<void> signOut();
  Future<ProfileEntity> getProfileInfo();
  Future<ProfileEntity> editProfileInfo(ProfileEntity params);
  Future<void> sendSubscription();
  Future<void> uploadImage(File imageFile);
}
