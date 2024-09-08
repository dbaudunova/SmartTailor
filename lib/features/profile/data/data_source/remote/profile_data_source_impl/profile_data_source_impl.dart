import 'dart:io';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:neobis_smart_tailor/core/network/entity/failure.dart';
import 'package:neobis_smart_tailor/core/network/http_client.dart';
import 'package:neobis_smart_tailor/core/network/http_paths.dart';
import 'package:neobis_smart_tailor/core/network/on_repository_exception.dart';
import 'package:neobis_smart_tailor/features/marketplace/data/models/search_model/advertisement_model.dart';
import 'package:neobis_smart_tailor/features/profile/data/data_source/remote/profile_data_source.dart';
import 'package:neobis_smart_tailor/features/profile/data/model/announcement_response_model.dart';
import 'package:neobis_smart_tailor/features/profile/data/model/history_model/my_history_model.dart';
import 'package:neobis_smart_tailor/features/profile/data/model/my_detailde_announce_model/my_equipment_detailed_announce_model.dart';
import 'package:neobis_smart_tailor/features/profile/data/model/my_detailde_announce_model/my_order_detailed_announce_model.dart';
import 'package:neobis_smart_tailor/features/profile/data/model/my_detailde_announce_model/my_services_detailed_announce_model.dart';
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
  Future<AnnouncementResponseModel> getMyEquipments({required int pageNumber}) async {
    try {
      final response = await _client.get(
        HttpPaths.getMyEquipments,
        queryParameters: {'pageNumber': pageNumber.toString(), 'pageSize': '10'},
      );

      if (response.statusCode != 200) {
        throw Failure.request(
          status: response.statusCode,
          message: 'Не удалось загрузить, код ошибки: ${response.statusCode}',
        );
      } else {
        var list = AnnouncementResponseModel.fromJson(response.data);
        return list;
      }
    } on DioException catch (e) {
      throw handleDioException(e);
    } catch (e) {
      throw handleGeneralException(e);
    }
  }

  @override
  Future<AnnouncementResponseModel> getMyOrders({required int pageNumber}) async {
    try {
      final response = await _client.get(
        HttpPaths.getMyOrders,
        queryParameters: {'pageNumber': pageNumber.toString(), 'pageSize': '10'},
      );

      if (response.statusCode != 200) {
        throw Failure.request(
          status: response.statusCode,
          message: 'Не удалось загрузить, код ошибки: ${response.statusCode}',
        );
      } else {
        var list = AnnouncementResponseModel.fromJson(response.data);
        return list;
      }
    } on DioException catch (e) {
      throw handleDioException(e);
    } catch (e) {
      throw handleGeneralException(e);
    }
  }

  @override
  Future<AnnouncementResponseModel> getMyServices({required int pageNumber}) async {
    try {
      final response = await _client.get(
        HttpPaths.getMyServices,
        queryParameters: {'pageNumber': pageNumber.toString(), 'pageSize': '10'},
      );

      if (response.statusCode != 200) {
        throw Failure.request(
          status: response.statusCode,
          message: 'Не удалось загрузить, код ошибки: ${response.statusCode}',
        );
      } else {
        var list = AnnouncementResponseModel.fromJson(response.data);
        return list;
      }
    } on DioException catch (e) {
      throw handleDioException(e);
    } catch (e) {
      throw handleGeneralException(e);
    }
  }

  @override
  Future<PurchasesListModel> getMyPurchases({required int pageNumber}) async {
    try {
      final response = await _client.get(
        HttpPaths.getMyPurchases,
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
        var model = PurchasesListModel.fromJson(responce);

        return model;
      }
    } on DioException catch (e) {
      throw handleDioException(e);
    } catch (e) {
      throw handleGeneralException(e);
    }
  }

  @override
  Future<MyHistoryModel> getHistory({required String stage, required int page}) async {
    try {
      final response = await _client.get(
        HttpPaths.getHistoryOrdersForUser,
        queryParameters: {
          'pageNumber': page.toString(),
          'pageSize': '10',
          'stage': stage,
        },
      );
      if (response.statusCode != 200) {
        throw Failure.request(
          status: response.statusCode,
          message: 'Не удалось загрузить, код ошибки: ${response.statusCode}',
        );
      } else {
        var responce = response.data;
        var model = MyHistoryModel.fromJson(responce);

        return model;
      }
    } on DioException catch (e) {
      throw handleDioException(e);
    } catch (e) {
      throw handleGeneralException(e);
    }
  }

  @override
  Future<MyEquipmentDetailedAnnounceModel> getEquipmentDetailedById({required int id}) async {
    try {
      final response = await _client.get(
        HttpPaths.getMyEquipmentsById + id.toString(),
      );

      if (response.statusCode != 200) {
        throw Failure.request(
          status: response.statusCode,
          message: 'Не удалось загрузить, код ошибки: ${response.statusCode}',
        );
      } else {
        return MyEquipmentDetailedAnnounceModel.fromJson(response.data);
      }
    } on DioException catch (e) {
      throw handleDioException(e);
    } catch (e) {
      throw handleGeneralException(e);
    }
  }

  @override
  Future<MyOrderAnnounceDetaileModel> getOrderDetailedById({required int id}) async {
    try {
      final response = await _client.get(
        HttpPaths.getMyOrdersById + id.toString(),
      );

      if (response.statusCode != 200) {
        throw Failure.request(
          status: response.statusCode,
          message: 'Не удалось загрузить, код ошибки: ${response.statusCode}',
        );
      } else {
        return MyOrderAnnounceDetaileModel.fromJson(response.data);
      }
    } on DioException catch (e) {
      throw handleDioException(e);
    } catch (e) {
      throw handleGeneralException(e);
    }
  }

  @override
  Future<MyServiceDetailedAnnounceModel> getServiceDetailedById({required int id}) async {
    try {
      final response = await _client.get(
        HttpPaths.getMyServicesById + id.toString(),
      );

      if (response.statusCode != 200) {
        throw Failure.request(
          status: response.statusCode,
          message: 'Не удалось загрузить, код ошибки: ${response.statusCode}',
        );
      } else {
        return MyServiceDetailedAnnounceModel.fromJson(response.data);
      }
    } on DioException catch (e) {
      throw handleDioException(e);
    } catch (e) {
      throw handleGeneralException(e);
    }
  }

  @override
  Future<void> assignExecutorToOrder({required int? executorId, required int? orderId}) async {
    try {
      final response = await _client.post(
        '${HttpPaths.assignExecutorToOrder}/$orderId',
        queryParameters: {
          'executorId': executorId.toString(),
        },
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
  Future<void> deleteOrder({required int? orderId}) async {
    try {
      final response = await _client.delete(
        '${HttpPaths.deleteOrder}$orderId',
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
  Future<void> hideOrder({required int? orderId}) async {
    try {
      final response = await _client.get(
        '${HttpPaths.hideOrder}$orderId',
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
  Future<void> deleteEquipment({required int? equipmentId}) async {
    try {
      final response = await _client.delete(
        '${HttpPaths.deleteEquipment}$equipmentId',
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
  Future<void> deleteService({required int? serviceId}) async {
    try {
      final response = await _client.delete(
        '${HttpPaths.deleteService}$serviceId',
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
  Future<void> hideEquipment({required int? equipmentId}) async {
    try {
      final response = await _client.get(
        '${HttpPaths.hideEquipment}$equipmentId',
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
  Future<void> hideService({required int? serviceId}) async {
    try {
      final response = await _client.get(
        '${HttpPaths.hideService}$serviceId',
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
  Future<AdvertisementResponseModel> getSearchAdvertisement({required int pageNumber, required String query}) async {
    try {
      final response = await _client.get(
        HttpPaths.getSearchAdvertisemnt,
        queryParameters: {
          'pageNumber': pageNumber.toString(),
          'pageSize': '10',
          'query': query,
        },
      );

      if (response.statusCode != 200) {
        throw Failure.request(
          status: response.statusCode,
          message: 'Неудалось загрузить, код ошибки: ${response.statusCode}',
        );
      } else {
        var model = AdvertisementResponseModel.fromJson(response.data);
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
