import 'dart:io';
import 'package:neobis_smart_tailor/features/profile/data/model/announcement_response_model.dart';
import 'package:neobis_smart_tailor/features/profile/data/model/history_model/my_history_model.dart';
import 'package:neobis_smart_tailor/features/profile/data/model/my_purchases/my_purchases_list_model.dart';
import 'package:neobis_smart_tailor/features/profile/data/model/profile_model.dart';

abstract class ProfileDataSource {
  Future<void> signOut();
  Future<ProfileModel> getProfileInfo();
  Future<ProfileModel> editProfileInfo(ProfileModel params);
  Future<void> sendSubscription();
  Future<void> uploadImage(File imageFile);
  // Future<List<AnnouncementModel>> getAnnouncements({required int pageNumber});
  Future<PurchasesListModel> getAllPurchases({required int pageNumber});
  Future<AnnouncementResponseModel> getMyEquipments({required int pageNumber});
  Future<AnnouncementResponseModel> getMyOrders({required int pageNumber});
  Future<AnnouncementResponseModel> getMyServices({required int pageNumber});
  Future<MyHistoryModel> getHistory({required String stage, required int page});
}
