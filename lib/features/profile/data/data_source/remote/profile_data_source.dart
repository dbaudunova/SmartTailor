import 'dart:io';
<<<<<<< HEAD
import 'package:neobis_smart_tailor/features/profile/data/model/announcement_model.dart';
import 'package:neobis_smart_tailor/features/profile/data/model/my_purchases/my_purchases_list_model.dart';
=======
import 'package:neobis_smart_tailor/features/profile/data/model/announcement_response_model.dart';
>>>>>>> b68b2daca863de6699ffa3238134c7c858734ea4
import 'package:neobis_smart_tailor/features/profile/data/model/profile_model.dart';

abstract class ProfileDataSource {
  Future<void> signOut();
  Future<ProfileModel> getProfileInfo();
  Future<ProfileModel> editProfileInfo(ProfileModel params);
  Future<void> sendSubscription();
  Future<void> uploadImage(File imageFile);
<<<<<<< HEAD
  Future<List<AnnouncementModel>> getAnnouncements({required int pageNumber});
  Future<PurchasesListModel> getAllPurchases({required int pageNumber});
=======
  Future<AnnouncementResponseModel> getMyEquipments({required int pageNumber});
  Future<AnnouncementResponseModel> getMyOrders({required int pageNumber});
  Future<AnnouncementResponseModel> getMyServices({required int pageNumber});
>>>>>>> b68b2daca863de6699ffa3238134c7c858734ea4
}
