import 'dart:convert';
import 'dart:io';

import 'package:injectable/injectable.dart';
// import 'package:neobis_smart_tailor/core/network/on_repository_exception.dart';
import 'package:neobis_smart_tailor/core/services/auth_service.dart';
import 'package:neobis_smart_tailor/features/profile/data/data_source/remote/profile_data_source.dart';
import 'package:neobis_smart_tailor/features/profile/data/model/my_purchases/my_purchases_list_model.dart';
import 'package:neobis_smart_tailor/features/profile/data/model/profile_model.dart';
import 'package:neobis_smart_tailor/features/profile/domain/model/announcement_entity.dart';
import 'package:neobis_smart_tailor/features/profile/domain/model/my_purchases.dart';
import 'package:neobis_smart_tailor/features/profile/domain/model/profile_entity.dart';
import 'package:neobis_smart_tailor/features/profile/domain/repository/profile_repo.dart';

@Injectable(as: ProfileRepo)
class ProfileRepoImpl implements ProfileRepo {
  final ProfileDataSource _dataSource;
  final AuthService _authService;
  final Converter<PurchasesListModel, PurchasesListEntity> _converter;

  ProfileRepoImpl(
    this._dataSource,
    this._authService,
    this._converter,
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
  Future<List<AnnouncementEntity>> getAnnouncements({required int pageNumber}) {
    return _dataSource.getAnnouncements(pageNumber: pageNumber);
  }

  @override
  Future<PurchasesListEntity> getAllPurchases({required int pageNumber}) async {
    var model = await _dataSource.getAllPurchases(pageNumber: pageNumber);
    var entity = _converter.convert(model);
    print(entity);
    return entity;
  }
}
