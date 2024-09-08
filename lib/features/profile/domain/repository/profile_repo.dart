import 'dart:io';
import 'package:neobis_smart_tailor/features/marketplace/domain/entitys/search_entity.dart';
import 'package:neobis_smart_tailor/features/profile/data/model/my_detailde_announce_model/my_equipment_detailed_announce_model.dart';
import 'package:neobis_smart_tailor/features/profile/domain/entitys/announcement_response_entity.dart';
import 'package:neobis_smart_tailor/features/profile/domain/entitys/my_detailed_annoucement_entity.dart';
import 'package:neobis_smart_tailor/features/profile/domain/entitys/my_history_entity.dart';
import 'package:neobis_smart_tailor/features/profile/domain/entitys/my_purchases.dart';
import 'package:neobis_smart_tailor/features/profile/domain/entitys/profile_entity.dart';

abstract class ProfileRepo {
  Future<void> signOut();
  Future<ProfileEntity> getProfileInfo();
  Future<ProfileEntity> editProfileInfo(ProfileEntity params);
  Future<void> sendSubscription();
  Future<void> uploadImage(File imageFile);
  Future<PurchasesListEntity> getMyPurchases({required int pageNumber});
  Future<AnnouncementResponseEntity> getMyEquipments({required int pageNumber});
  Future<AnnouncementResponseEntity> getMyOrders({required int pageNumber});
  Future<AnnouncementResponseEntity> getMyServices({required int pageNumber});
  Future<MyHistoryEntity> getHistory({required String stage, required int page});
  Future<MyDetailedAnnounceEntity> getOrderDetailedById({required int id});
  Future<MyDetailedAnnounceEntity> getEquipmentDetailedById({required int id});
  Future<MyDetailedAnnounceEntity> getServiceDetailedById({required int id});
  Future<void> assignExecutorToOrder({required int? executorId, required int? orderId});
  Future<void> hideOrder({required int? orderId});
  Future<void> hideEquipment({required int? equipmentId});
  Future<void> hideService({required int? serviceId});
  Future<void> deleteOrder({required int? orderId});
  Future<void> deleteEquipment({required int? equipmentId});
  Future<void> deleteService({required int? serviceId});
  Future<AdvertisementResponseEntity> getSearchAdvertisement({required int pageNumber, required String query});
}
