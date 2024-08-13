import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:neobis_smart_tailor/core/network/entity/failure.dart';
import 'package:neobis_smart_tailor/core/network/http_client.dart';
import 'package:neobis_smart_tailor/core/network/http_paths.dart';
import 'package:neobis_smart_tailor/core/network/on_repository_exception.dart';
import 'package:neobis_smart_tailor/features/profile/data/data_source/remote/profile_data_source.dart';
import 'package:neobis_smart_tailor/features/profile/data/model/announcement_model.dart';
import 'package:neobis_smart_tailor/features/profile/data/model/my_purchases/my_purchases_list_model.dart';
import 'package:neobis_smart_tailor/features/profile/data/model/profile_model.dart';

@Injectable(as: ProfileDataSource)
class ProfileDataSourceImpl implements ProfileDataSource {
  final HttpClient _client;

  ProfileDataSourceImpl(
    this._client,
  );

  @override
  Future<void> signOut() async {
    try {
      final response = await _client.post(
        HttpPaths.signOut,
      );
      if (response.statusCode != 200) {
        throw Failure.request(
          status: response.statusCode,
          message: 'Пин код не верный, код статуса: ${response.statusCode}',
        );
      }
    } on DioException catch (e) {
      throw handleDioException(e);
    } catch (e) {
      throw handleGeneralException(e);
    }
  }

  @override
  Future<ProfileModel> getProfileInfo() async {
    try {
      final response = await _client.get(HttpPaths.getProfile);
      if (response.statusCode != 200) {
        throw Failure.request(
          status: response.statusCode,
          message: 'Что-то пошло не так: ${response.statusCode}',
        );
      }
      final data = response.data;
      final profile = ProfileModel.fromJson(data);
      return profile;
    } on DioException catch (e) {
      throw handleDioException(e);
    } catch (e) {
      throw handleGeneralException(e);
    }
  }

  @override
  Future<ProfileModel> editProfileInfo(ProfileModel params) async {
    try {
      final response = await _client.put(
        HttpPaths.editProfile,
        data: params.toJson(),
        options: Options(
          headers: {
            'content-type': 'text/plain',
          },
          contentType: Headers.textPlainContentType,
        ),
      );

      if (response.statusCode != 200) {
        throw Failure.request(
          status: response.statusCode,
          message: 'Не удалось редактировать профиль: ${response.statusMessage}',
        );
      }
      return ProfileModel.fromJson(params.toJson());
    } on DioException catch (e) {
      throw handleDioException(e);
    } catch (e) {
      throw handleGeneralException(e);
    }
  }

  @override
  Future<void> uploadImage(File imageFile) async {
    try {
      var data = FormData.fromMap({
        'file': await MultipartFile.fromFile(imageFile.path),
      });

      final response = await _client.post(
        HttpPaths.uploadImage,
        data: data,
        options: Options(
          headers: {'Content-Type': 'multipart/form-data'},
        ),
      );

      if (response.statusCode != 200) {
        throw Failure.request(
          status: response.statusCode,
          message: 'Не удалось загрузить фотографию: ${response.statusMessage}',
        );
      }
    } on DioException catch (e) {
      throw handleDioException(e);
    } catch (e) {
      throw handleGeneralException(e);
    }
  }

  @override
  Future<void> sendSubscription() async {
    try {
      final response = await _client.post(
        HttpPaths.sendSubscription,
      );

      if (response.statusCode != 200) {
        throw Failure.request(
          status: response.statusCode,
          message: 'Не удалось редактировать профиль: ${response.statusMessage}',
        );
      }
    } on DioException catch (e) {
      throw handleDioException(e);
    } catch (e) {
      throw handleGeneralException(e);
    }
  }

  @override
  Future<List<AnnouncementModel>> getAnnouncements({required int pageNumber}) async {
    try {
      final response = await _client.get(
        HttpPaths.myAdvertisements,
        queryParameters: {
          'pageNumber': pageNumber.toString(),
          'pageSize': '10',
        },
      );
      if (response.statusCode != 200) {
        throw Failure.request(
          status: response.statusCode,
          message: 'Не удалось загрузить, код ошибки: ${response.statusCode}',
        );
      } else {
        var list = (response.data as List).map((item) => AnnouncementModel.fromJson(item)).toList();
        return list;
      }
    } on DioException catch (e) {
      throw handleDioException(e);
    } catch (e) {
      throw handleGeneralException(e);
    }
  }

  @override
  Future<PurchasesListModel> getAllPurchases({required int pageNumber}) async {
    try {
      final response = await _client.get(
        HttpPaths.getAllPurchases,
        queryParameters: {
          'pageNumber': pageNumber.toString(),
          'pageSize': '10',
        },
      );
      if (response.statusCode != 200) {
        throw Failure.request(
          status: response.statusCode,
          message: 'Не удалось загрузить, код ошибки: ${response.statusCode}',
        );
      } else {
        var responce = response.data;
        print(responce);
        var model = PurchasesListModel.fromJson(responce);
        print(model);
        return model;
      }
    } on DioException catch (e) {
      throw handleDioException(e);
    } catch (e) {
      throw handleGeneralException(e);
    }
  }
}
