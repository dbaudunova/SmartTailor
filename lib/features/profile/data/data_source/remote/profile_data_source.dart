import 'dart:io';
import 'package:neobis_smart_tailor/features/marketplace/data/models/search_model/advertisement_model.dart';
import 'package:neobis_smart_tailor/features/profile/data/model/announcement_response_model.dart';
import 'package:neobis_smart_tailor/features/profile/data/model/history_model/my_history_model.dart';
import 'package:neobis_smart_tailor/features/profile/data/model/my_detailde_announce_model/my_equipment_detailed_announce_model.dart';
import 'package:neobis_smart_tailor/features/profile/data/model/my_detailde_announce_model/my_order_detailed_announce_model.dart';
import 'package:neobis_smart_tailor/features/profile/data/model/my_detailde_announce_model/my_services_detailed_announce_model.dart';
import 'package:neobis_smart_tailor/features/profile/data/model/my_purchases/my_purchases_list_model.dart';
import 'package:neobis_smart_tailor/features/profile/data/model/profile_model.dart';

abstract class ProfileDataSource {
  Future<void> signOut();
  Future<ProfileModel> getProfileInfo();
  Future<ProfileModel> editProfileInfo(ProfileModel params);
  Future<void> sendSubscription();
  Future<void> uploadImage(File imageFile);
  Future<PurchasesListModel> getMyPurchases({required int pageNumber});
  Future<AnnouncementResponseModel> getMyEquipments({required int pageNumber});
  Future<AnnouncementResponseModel> getMyOrders({required int pageNumber});
  Future<AnnouncementResponseModel> getMyServices({required int pageNumber});
  Future<MyHistoryModel> getHistory({required String stage, required int page});
  Future<MyOrderAnnounceDetaileModel> getOrderDetailedById({required int id});
  Future<MyEquipmentDetailedAnnounceModel> getEquipmentDetailedById({required int id});
  Future<MyServiceDetailedAnnounceModel> getServiceDetailedById({required int id});
  Future<void> assignExecutorToOrder({required int? executorId, required int? orderId});
  Future<void> hideOrder({required int? orderId});
  Future<void> hideEquipment({required int? equipmentId});
  Future<void> hideService({required int? serviceId});
  Future<void> deleteOrder({required int? orderId});
  Future<void> deleteEquipment({required int? equipmentId});
  Future<void> deleteService({required int? serviceId});
  Future<AdvertisementResponseModel> getSearchAdvertisement({required int pageNumber, required String query});
}
