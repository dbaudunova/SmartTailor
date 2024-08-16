import 'dart:io';

import 'package:injectable/injectable.dart';
// import 'package:neobis_smart_tailor/core/network/on_repository_exception.dart';
import 'package:neobis_smart_tailor/core/services/auth_service.dart';
import 'package:neobis_smart_tailor/features/profile/data/data_source/remote/profile_data_source.dart';
import 'package:neobis_smart_tailor/features/profile/data/model/profile_model.dart';
import 'package:neobis_smart_tailor/features/profile/domain/model/announcement_response_entity.dart';
import 'package:neobis_smart_tailor/features/profile/domain/model/equipment_detailed_entity.dart';
import 'package:neobis_smart_tailor/features/profile/domain/model/order_detailed_entity.dart';
import 'package:neobis_smart_tailor/features/profile/domain/model/profile_entity.dart';
import 'package:neobis_smart_tailor/features/profile/domain/model/service_detailed_entity.dart';
import 'package:neobis_smart_tailor/features/profile/domain/repository/profile_repo.dart';

@Injectable(as: ProfileRepo)
class ProfileRepoImpl implements ProfileRepo {
  final ProfileDataSource _dataSource;
  final AuthService _authService;

  ProfileRepoImpl(
    this._dataSource,
    this._authService,
  );

  @override
  Future<void> signOut() async {
    // await _dataSource.signOut();
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
}
