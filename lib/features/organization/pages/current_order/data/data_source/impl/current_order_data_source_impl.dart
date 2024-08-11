import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:neobis_smart_tailor/core/network/entity/failure.dart';
import 'package:neobis_smart_tailor/core/network/http_client.dart';
import 'package:neobis_smart_tailor/core/network/http_codes.dart';
import 'package:neobis_smart_tailor/core/network/http_paths.dart';
import 'package:neobis_smart_tailor/core/network/on_repository_exception.dart';
import 'package:neobis_smart_tailor/features/organization/pages/current_order/data/data_source/current_order_data_source.dart';
import 'package:neobis_smart_tailor/features/organization/pages/current_order/data/models/_model/current_order_model.dart';

@Injectable(as: CurrentOrderDataSource)
class CurrentOrderDataSourceImpl implements CurrentOrderDataSource {
  final HttpClient _client;

  CurrentOrderDataSourceImpl(this._client);

  @override
  Future<List<CurrentOrderModel>> gatAllOrders() async {
    try {
      final response = await _client.get(
        HttpPaths.gatAllCurrentOrders,
      );
      if (response.statusCode != HttpSuccess.success) {
        // ignore: only_throw_errors
        throw Failure.request(
          status: response.statusCode,
          message: 'Order creation failed, status code: ${response.statusCode}',
        );
      } else {
        List<dynamic> list = response.data;
        var models = list.map((json) => CurrentOrderModel.fromJson(json)).toList();
        print(models);
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
  Future<CurrentOrderModel> getDetailOrder() async {
    try {
      final response = await _client.get(
        HttpPaths.gatAllCurrentOrders,
      );
      if (response.statusCode != HttpSuccess.success) {
        // ignore: only_throw_errors
        throw Failure.request(
          status: response.statusCode,
          message: 'Order creation failed, status code: ${response.statusCode}',
        );
      } else {
        List<dynamic> list = response.data;
        var models = list.map((json) => CurrentOrderModel.fromJson(json)).toList();
        print(models);
        return CurrentOrderModel.initial();
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
