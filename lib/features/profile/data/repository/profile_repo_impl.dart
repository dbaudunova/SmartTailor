import 'dart:convert';
import 'dart:io';

import 'package:injectable/injectable.dart';
import 'package:neobis_smart_tailor/core/services/auth_service.dart';
import 'package:neobis_smart_tailor/features/marketplace/data/models/search_model/advertisement_model.dart';
import 'package:neobis_smart_tailor/features/marketplace/domain/entitys/search_entity.dart';
import 'package:neobis_smart_tailor/features/profile/data/data_source/remote/profile_data_source.dart';
import 'package:neobis_smart_tailor/features/profile/data/model/history_model/my_history_model.dart';
import 'package:neobis_smart_tailor/features/profile/data/model/my_purchases/my_purchases_list_model.dart';
import 'package:neobis_smart_tailor/features/profile/data/model/profile_model.dart';
import 'package:neobis_smart_tailor/features/profile/domain/model/announcement_response_entity.dart';
import 'package:neobis_smart_tailor/features/profile/domain/model/equipment_detailed_entity.dart';
import 'package:neobis_smart_tailor/features/profile/domain/model/my_history_entity.dart';
import 'package:neobis_smart_tailor/features/profile/domain/model/my_purchases.dart';
import 'package:neobis_smart_tailor/features/profile/domain/model/order_detailed_entity.dart';
import 'package:neobis_smart_tailor/features/profile/domain/model/profile_entity.dart';
import 'package:neobis_smart_tailor/features/profile/domain/model/service_detailed_entity.dart';
import 'package:neobis_smart_tailor/features/profile/domain/repository/profile_repo.dart';

@Injectable(as: ProfileRepo)
class ProfileRepoImpl implements ProfileRepo {
  final ProfileDataSource _dataSource;
  final AuthService _authService;
  final Converter<PurchasesListModel, PurchasesListEntity> _converterPurchases;
  final Converter<MyHistoryModel, MyHistoryEntity> _converterHistory;
  final Converter<AdvertisementResponseModel, AdvertisementResponseEntity> _advertisementResponceConverter;

  ProfileRepoImpl(
    this._dataSource,
    this._authService,
    this._converterPurchases,
    this._converterHistory,
    this._advertisementResponceConverter,
  );

  @override
  Future<void> signOut() async {
    await _authService.signOut();
  }

  @override
  Future<ProfileEntity> getProfileInfo() async {
    return await _dataSource.getProfileInfo();
  }

  @override
  Future<ProfileEntity> editProfileInfo(ProfileEntity params) async {
    final profileModel = await _dataSource.editProfileInfo(_toModel(params));
    return profileModel;
  }

  ProfileModel _toModel(ProfileEntity entity) {
    return ProfileModel(
      name: entity.name,
      surname: entity.surname,
      patronymic: entity.patronymic,
      phoneNumber: entity.phoneNumber,
    );
  }

  @override
  Future<void> sendSubscription() async {
    await _dataSource.sendSubscription();
  }

  @override
  Future<void> uploadImage(File imageFile) async {
    return await _dataSource.uploadImage(imageFile);
  }

  @override
  Future<PurchasesListEntity> getMyPurchases({required int pageNumber}) async {
    var model = await _dataSource.getMyPurchases(pageNumber: pageNumber);
    var entity = _converterPurchases.convert(model);
    return entity;
  }

  @override
  Future<AnnouncementResponseEntity> getMyEquipments({required int pageNumber}) async {
    return await _dataSource.getMyEquipments(pageNumber: pageNumber);
  }

  @override
  Future<AnnouncementResponseEntity> getMyOrders({required int pageNumber}) async {
    return await _dataSource.getMyOrders(pageNumber: pageNumber);
  }

  @override
  Future<AnnouncementResponseEntity> getMyServices({required int pageNumber}) async {
    return await _dataSource.getMyServices(pageNumber: pageNumber);
  }

  @override
  Future<MyHistoryEntity> getHistory({required String stage, required int page}) async {
    var model = await _dataSource.getHistory(page: page, stage: stage);
    var entity = _converterHistory.convert(model);
    return entity;
  }

  @override
  Future<EquipmentDetailedEntity> getEquipmentDetailedById({required int id}) async {
    return await _dataSource.getEquipmentDetailedById(id: id);
  }

  @override
  Future<OrderDetailedEntity> getOrderDetailedById({required int id}) async {
    return await _dataSource.getOrderDetailedById(id: id);
  }

  @override
  Future<ServiceDetailedEntity> getServiceDetailedById({required int id}) async {
    return await _dataSource.getServiceDetailedById(id: id);
  }

  @override
  Future<void> assignExecutorToOrder({required int? executorId, required int? orderId}) async {
    await _dataSource.assignExecutorToOrder(executorId: executorId, orderId: orderId);
  }

  @override
  Future<void> deleteOrder({required int? orderId}) async {
    await _dataSource.deleteOrder(orderId: orderId);
  }

  @override
  Future<void> hideOrder({required int? orderId}) async {
    await _dataSource.hideOrder(orderId: orderId);
  }

  @override
  Future<void> deleteEquipment({required int? equipmentId}) async {
    await _dataSource.hideEquipment(equipmentId: equipmentId);
  }

  @override
  Future<void> deleteService({required int? serviceId}) async {
    await _dataSource.deleteService(serviceId: serviceId);
  }

  @override
  Future<void> hideEquipment({required int? equipmentId}) async {
    await _dataSource.hideEquipment(equipmentId: equipmentId);
  }

  @override
  Future<void> hideService({required int? serviceId}) async {
    await _dataSource.hideService(serviceId: serviceId);
  }

  @override
  Future<AdvertisementResponseEntity> getSearchAdvertisement({required int pageNumber, required String query}) async {
    var model = await _dataSource.getSearchAdvertisement(pageNumber: pageNumber, query: query);
    final entity = _advertisementResponceConverter.convert(model);
    return entity;
  }
}
