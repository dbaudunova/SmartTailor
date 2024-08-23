import 'dart:io';
import 'package:neobis_smart_tailor/features/marketplace/domain/entitys/search_entity.dart';
import 'package:neobis_smart_tailor/features/profile/domain/model/my_history_entity.dart';
import 'package:neobis_smart_tailor/features/profile/domain/model/my_purchases.dart';
import 'package:neobis_smart_tailor/features/profile/domain/model/announcement_response_entity.dart';
import 'package:neobis_smart_tailor/features/profile/domain/model/equipment_detailed_entity.dart';
import 'package:neobis_smart_tailor/features/profile/domain/model/order_detailed_entity.dart';
import 'package:neobis_smart_tailor/features/profile/domain/model/profile_entity.dart';
import 'package:neobis_smart_tailor/features/profile/domain/model/service_detailed_entity.dart';

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
  Future<OrderDetailedEntity> getOrderDetailedById({required int id});
  Future<EquipmentDetailedEntity> getEquipmentDetailedById({required int id});
  Future<ServiceDetailedEntity> getServiceDetailedById({required int id});
  Future<void> assignExecutorToOrder({required int? executorId, required int? orderId});
  Future<void> hideOrder({required int? orderId});
  Future<void> hideEquipment({required int? equipmentId});
  Future<void> hideService({required int? serviceId});
  Future<void> deleteOrder({required int? orderId});
  Future<void> deleteEquipment({required int? equipmentId});
  Future<void> deleteService({required int? serviceId});
  Future<AdvertisementResponseEntity> getSearchAdvertisement({required int pageNumber, required String query});
}
