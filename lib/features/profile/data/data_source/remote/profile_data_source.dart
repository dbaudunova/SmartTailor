import 'dart:io';
import 'package:neobis_smart_tailor/features/profile/data/model/announcement_response_model.dart';
import 'package:neobis_smart_tailor/features/profile/data/model/equipment_detailed_model.dart';
import 'package:neobis_smart_tailor/features/profile/data/model/order_detailed_model.dart';
import 'package:neobis_smart_tailor/features/profile/data/model/profile_model.dart';
import 'package:neobis_smart_tailor/features/profile/data/model/service_detailed_model.dart';

abstract class ProfileDataSource {
  Future<void> signOut();
  Future<ProfileModel> getProfileInfo();
  Future<ProfileModel> editProfileInfo(ProfileModel params);
  Future<void> sendSubscription();
  Future<void> uploadImage(File imageFile);
  Future<AnnouncementResponseModel> getMyEquipments({required int pageNumber});
  Future<AnnouncementResponseModel> getMyOrders({required int pageNumber});
  Future<AnnouncementResponseModel> getMyServices({required int pageNumber});
  Future<OrderDetailedModel> getOrderDetailedById({required int id});
  Future<EquipmentDetailedModel> getEquipmentDetailedById({required int id});
  Future<ServiceDetailedModel> getServiceDetailedById({required int id});
}
