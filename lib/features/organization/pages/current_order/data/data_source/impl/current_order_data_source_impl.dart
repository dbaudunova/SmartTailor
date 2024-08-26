import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:neobis_smart_tailor/core/network/entity/failure.dart';
import 'package:neobis_smart_tailor/core/network/http_client.dart';
import 'package:neobis_smart_tailor/core/network/http_codes.dart';
import 'package:neobis_smart_tailor/core/network/http_paths.dart';
import 'package:neobis_smart_tailor/core/network/on_repository_exception.dart';
import 'package:neobis_smart_tailor/features/organization/pages/current_order/data/data_source/current_order_data_source.dart';
import 'package:neobis_smart_tailor/features/organization/pages/current_order/data/models/current_detail_order_model/current_detail_order_model.dart';
import 'package:neobis_smart_tailor/features/organization/pages/current_order/data/models/current_order_model/current_order_model.dart';
import 'package:neobis_smart_tailor/features/organization/pages/current_order/data/models/organization_list_model/organization_list_model.dart';

@Injectable(as: CurrentOrderDataSource)
class CurrentOrderDataSourceImpl implements CurrentOrderDataSource {
  final HttpClient _client;

  CurrentOrderDataSourceImpl(this._client);

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
}
