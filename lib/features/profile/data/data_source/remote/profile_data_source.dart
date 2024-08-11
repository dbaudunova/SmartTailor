import 'dart:io';
import 'package:neobis_smart_tailor/features/profile/data/model/announcement_model.dart';
import 'package:neobis_smart_tailor/features/profile/data/model/profile_model.dart';

abstract class ProfileDataSource {
  Future<void> signOut();
  Future<ProfileModel> getProfileInfo();
  Future<ProfileModel> editProfileInfo(ProfileModel params);
  Future<void> sendSubscription();
  Future<void> uploadImage(File imageFile);
  Future<List<AnnouncementModel>> getAnnouncements({required int pageNumber});
}
