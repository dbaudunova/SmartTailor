import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:neobis_smart_tailor/core/network/entity/failure.dart';
import 'package:neobis_smart_tailor/core/network/http_client.dart';
import 'package:neobis_smart_tailor/core/network/http_codes.dart';
import 'package:neobis_smart_tailor/core/network/http_paths.dart';
import 'package:neobis_smart_tailor/core/network/on_repository_exception.dart';
import 'package:neobis_smart_tailor/features/organization/data/data_source/organization_data_source.dart';
import 'package:neobis_smart_tailor/features/organization/data/models/create_organization_model/create_organixation_model.dart';
import 'package:neobis_smart_tailor/features/organization/data/models/current_detail_order_model/current_detail_order_model.dart';
import 'package:neobis_smart_tailor/features/organization/data/models/current_history_detail_model/current_history_detail_model.dart';
import 'package:neobis_smart_tailor/features/organization/data/models/employee_detail_model/employee_detail_model.dart';
import 'package:neobis_smart_tailor/features/organization/data/models/employee_model/employee_model.dart';
import 'package:neobis_smart_tailor/features/organization/data/models/organization_info_model/organization_info_model.dart';
import 'package:neobis_smart_tailor/features/organization/data/models/organization_list_model/organization_list_model.dart';
import 'package:neobis_smart_tailor/features/organization/data/models/position_list_model/position_model.dart';
import 'package:neobis_smart_tailor/features/organization/data/models/send_invite_model/send_invite_model.dart';
import 'package:neobis_smart_tailor/features/profile/data/model/history_model/my_history_model.dart';

@Injectable(as: OrganizationDataSource)
class PositionsSourceImpl implements OrganizationDataSource {
  final HttpClient _client;

  PositionsSourceImpl(
    this._client,
  );

  @override
  Future<void> createPosition({required PositionModel model}) async {
    var jsonString = json.encode(model.toJson());
    // var multipartImage = await MultipartFile.fromFile(image.path, filename: image.path.split('/').last);
    // for (var file in images!) await MultipartFile.fromFile(file.path, filename: file.path.split('/').last)
    final formData = FormData.fromMap({
      'position': jsonString,
      // 'image': multipartImage,
    });
    try {
      final response = await _client.post(
        HttpPaths.addPosition,
        options: Options(
          headers: {'Content-Type': 'multipart/form-data'},
        ),
        data: formData,
      );
      if (response.statusCode != HttpSuccess.created) {
        // ignore: only_throw_errors
        throw Failure.request(
          status: response.statusCode,
          message: response.data.toString(),
        );
      }
    } on DioException catch (e) {
      // ignore: only_throw_errors
      throw handleDioException(e);
    } catch (e) {
      // ignore: only_throw_errors
      throw handleGeneralException(e);
    }
  }

  @override
  Future<List<PositionModel>> getAllPositions() async {
    try {
      final response = await _client.get(
        HttpPaths.gatAllPositions,
      );
      if (response.statusCode != HttpSuccess.success) {
        // ignore: only_throw_errors
        throw Failure.request(
          status: response.statusCode,
          message: 'Order creation failed, status code: ${response.statusCode}',
        );
      } else {
        List<dynamic> jsonList = response.data;
        List<PositionModel> positions = jsonList.map((json) => PositionModel.fromJson(json)).toList();

        return positions;
      }
    } on DioException catch (e) {
      // ignore: only_throw_errors
      throw handleDioException(e);
    } catch (e) {
      // ignore: only_throw_errors
      throw handleGeneralException(e);
    }
  }

  @override
  Future<List<String>> getAvailableAccessRights() async {
    try {
      final response = await _client.get(HttpPaths.getAvailableAccessRights);
      if (response.statusCode != HttpSuccess.success) {
        // ignore: only_throw_errors
        throw Failure.request(
          status: response.statusCode,
          message: 'Order creation failed, status code: ${response.statusCode}',
        );
      } else {
        List<dynamic> jsonList = response.data;
        var accessRights = List<String>.from(jsonList);

        return accessRights;
      }
    } on DioException catch (e) {
      // ignore: only_throw_errors
      throw handleDioException(e);
    } catch (e) {
      // ignore: only_throw_errors
      throw handleGeneralException(e);
    }
  }

  @override
  Future<List<int>> getAvailableWeights() async {
    try {
      final response = await _client.get(
        HttpPaths.getAvailableWeights,
      );
      if (response.statusCode != HttpSuccess.success) {
        // ignore: only_throw_errors
        throw Failure.request(
          status: response.statusCode,
          message: 'Order creation failed, status code: ${response.statusCode}',
        );
      } else {
        List<dynamic> jsonList = response.data;
        var accessWeight = List<int>.from(jsonList);

        return accessWeight;
      }
    } on DioException catch (e) {
      // ignore: only_throw_errors
      throw handleDioException(e);
    } catch (e) {
      // ignore: only_throw_errors
      throw handleGeneralException(e);
    }
  }

  @override
  Future<OrganizationInfoModel?> getOrganization() async {
    try {
      final response = await _client.get(
        HttpPaths.getOrganization,
      );
      if (response.statusCode != HttpSuccess.success) {
        // ignore: only_throw_errors
        throw Failure.request(
          status: response.statusCode,
          message: 'Order creation failed, status code: ${response.statusCode}',
        );
      } else {
        var list = OrganizationInfoModel.fromJson(response.data);

        return list;
      }
    } on DioException catch (e) {
      if (e.response!.statusCode == 404) {
        return null;
      }
      // ignore: only_throw_errors
      throw handleDioException(e);
    } catch (e) {
      // ignore: only_throw_errors
      throw handleGeneralException(e);
    }
  }

  @override
  Future<void> sendInvitation(SendInviteModel model) async {
    try {
      var jsonString = json.encode(model.toJson());
      final formData = FormData.fromMap({
        'employee': jsonString,
      });
      final response = await _client.post(
        HttpPaths.sendInvitationToEmployee,
        options: Options(
          headers: {'Content-Type': 'multipart/form-data'},
        ),
        data: formData,
      );
      if (response.statusCode != HttpSuccess.success) {
        // ignore: only_throw_errors
        throw Failure.request(
          status: response.statusCode,
          message: 'Order creation failed, status code: ${response.statusCode}',
        );
      }
    } on DioException catch (e) {
      // ignore: only_throw_errors
      throw handleDioException(e);
    } catch (e) {
      // ignore: only_throw_errors
      throw handleGeneralException(e);
    }
  }

  @override
  Future<List<PositionModel>> getAvailablePositions() async {
    try {
      final response = await _client.get(
        HttpPaths.getAvailablePosition,
      );
      if (response.statusCode != HttpSuccess.success) {
        // ignore: only_throw_errors
        throw Failure.request(
          status: response.statusCode,
          message: 'Order creation failed, status code: ${response.statusCode}',
        );
      } else {
        var jsonList = response.data as List;
        var models = jsonList.map((element) => PositionModel.fromJson(element)).toList();
        return models;
      }
    } on DioException catch (e) {
      // ignore: only_throw_errors
      throw handleDioException(e);
    } catch (e) {
      // ignore: only_throw_errors
      throw handleGeneralException(e);
    }
  }

  @override
  Future<MyHistoryModel> getAllOrdersHistory() async {
    try {
      final response = await _client.get(
        HttpPaths.getHistoryOrdersForOrganization,
        queryParameters: {
          'pageNumber': 0,
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
  Future<CurrentHistoryDetailModel> getDetaileHistoryOrder({required int id}) async {
    try {
      final response = await _client.get(
        HttpPaths.getHistoryOrdersForOrganizationById + id.toString(),
      );
      if (response.statusCode != 200) {
        throw Failure.request(
          status: response.statusCode,
          message: 'Не удалось загрузить, код ошибки: ${response.statusCode}',
        );
      } else {
        var responce = response.data;
        print(responce);
        var model = CurrentHistoryDetailModel.fromJson(responce);
        print(model);

        return model;
      }
    } on DioException catch (e) {
      throw handleDioException(e);
    } catch (e) {
      throw handleGeneralException(e);
    }
  }

  @override
  Future<List<EmployeeModel>> getAllEmployees() async {
    try {
      final response = await _client.get(
        HttpPaths.getAllEmployees,
      );
      if (response.statusCode != HttpSuccess.success) {
        // ignore: only_throw_errors
        throw Failure.request(
          status: response.statusCode,
          message: 'Order creation failed, status code: ${response.statusCode}',
        );
      } else {
        var jsonList = response.data as List; // Cast to List<dynamic>
        var employees = jsonList
            .map((json) => EmployeeModel.fromJson(json)) // Ensure each item is a Map<String, dynamic>
            .toList();
        return employees;
      }
    } on DioException catch (e) {
      // ignore: only_throw_errors
      throw handleDioException(e);
    } catch (e) {
      // ignore: only_throw_errors
      throw handleGeneralException(e);
    }
  }

  @override
  Future<EmployeeDetailModel> getEmployeeDetail({required int id}) async {
    try {
      final response = await _client.get(
        HttpPaths.getEmployeeDetail + id.toString(),
      );
      if (response.statusCode != HttpSuccess.success) {
        // ignore: only_throw_errors
        throw Failure.request(
          status: response.statusCode,
          message: 'Order creation failed, status code: ${response.statusCode}',
        );
      } else {
        var json = response.data;
        // ignore: avoid_dynamic_calls
        var employee = EmployeeDetailModel.fromJson(json);

        return employee;
      }
    } on DioException catch (e) {
      // ignore: only_throw_errors
      throw handleDioException(e);
    } catch (e) {
      // ignore: only_throw_errors
      throw handleGeneralException(e);
    }
  }

  @override
  Future<OrganizationListModel> gatAllOrders() async {
    try {
      final response = await _client
          .get(HttpPaths.getAllCurrentOrders, queryParameters: {'pageNumber': 0, 'pageSize': 10, 'stage': 'current'});
      if (response.statusCode != HttpSuccess.success) {
        // ignore: only_throw_errors
        throw Failure.request(
          status: response.statusCode,
          message: 'Order creation failed, status code: ${response.statusCode}',
        );
      } else {
        var responseJson = response.data;
        // var models = list.map((json) => CurrentOrderModel.fromJson(json)).toList();

        var model = OrganizationListModel.fromJson(responseJson);
        return model;
      }
    } on DioException catch (e) {
      // ignore: only_throw_errors
      throw handleDioException(e);
    } catch (e) {
      // ignore: only_throw_errors
      throw handleGeneralException(e);
    }
  }

  @override
  Future<CurrentDetailOrderModel> getDetailOrder({required int id}) async {
    try {
      final response = await _client.get(
        '${HttpPaths.getCurrentOrderDetail}/$id',
      );
      if (response.statusCode != HttpSuccess.success) {
        // ignore: only_throw_errors
        throw Failure.request(
          status: response.statusCode,
          message: 'Order creation failed, status code: ${response.statusCode}',
        );
      } else {
        try {
          print(response.data); // Логируем JSON-ответ
          var model = CurrentDetailOrderModel.fromJson(response.data);
          print(model);
          return model;
        } catch (e) {
          print('Error deserializing JSON: $e'); // Логируем ошибку
          throw handleGeneralException(e);
        }
      }
    } on DioException catch (e) {
      // ignore: only_throw_errors
      throw handleDioException(e);
    } catch (e) {
      // ignore: only_throw_errors
      throw handleGeneralException(e);
    }
  }

  @override
  Future<void> changeOrderStatus({required int id, required String value}) async {
    try {
      final response = await _client.put(
        '${HttpPaths.changeOrderStatus}$id/$value',
      );
      if (response.statusCode != HttpSuccess.success) {
        // ignore: only_throw_errors
        throw Failure.request(
          status: response.statusCode,
          message: 'Failed, status code: ${response.statusCode}',
        );
      }
    } on DioException catch (e) {
      // ignore: only_throw_errors
      throw handleDioException(e);
    } catch (e) {
      // ignore: only_throw_errors
      throw handleGeneralException(e);
    }
  }

  @override
  Future<void> completeOrder({required int id}) async {
    try {
      final response = await _client.get(
        '${HttpPaths.completeOrder}$id',
      );
      if (response.statusCode != HttpSuccess.success) {
        // ignore: only_throw_errors
        throw Failure.request(
          status: response.statusCode,
          message: 'Failed, status code: ${response.statusCode}',
        );
      }
    } on DioException catch (e) {
      // ignore: only_throw_errors
      throw handleDioException(e);
    } catch (e) {
      // ignore: only_throw_errors
      throw handleGeneralException(e);
    }
  }

  @override
  Future<void> cancelOrder({required int id}) async {
    try {
      final response = await _client.put(
        HttpPaths.cancelOrder + id.toString(),
      );
      if (response.statusCode != HttpSuccess.success) {
        // ignore: only_throw_errors
        throw Failure.request(
          status: response.statusCode,
          message: 'Failed, status code: ${response.statusCode}',
        );
      }
    } on DioException catch (e) {
      // ignore: only_throw_errors
      throw handleDioException(e);
    } catch (e) {
      // ignore: only_throw_errors
      throw handleGeneralException(e);
    }
  }

  @override
  Future<void> createOrganization({required CreateOrganizationModel model, required File image}) async {
    var jsonString = json.encode(model.toJson());
    // print(jsonString);
    var multipartImage = await MultipartFile.fromFile(image.path, filename: image.path.split('/').last);
    // for (var file in images!) await MultipartFile.fromFile(file.path, filename: file.path.split('/').last)
    final formData = FormData.fromMap({
      'organization': jsonString,
      'image': multipartImage,
    });
    try {
      final response = await _client.post(
        HttpPaths.createOrganization,
        options: Options(
          headers: {'Content-Type': 'multipart/form-data'},
        ),
        data: formData,
      );
      if (response.statusCode != HttpSuccess.created) {
        // ignore: only_throw_errors
        throw Failure.request(
          status: response.statusCode,
          message: response.data.toString(),
        );
      }
    } on DioException catch (e) {
      // ignore: only_throw_errors
      throw handleDioException(e);
    } catch (e) {
      // ignore: only_throw_errors
      throw handleGeneralException(e);
    }
  }
}
