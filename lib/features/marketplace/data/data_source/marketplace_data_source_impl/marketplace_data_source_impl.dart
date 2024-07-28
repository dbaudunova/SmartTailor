import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:neobis_smart_tailor/core/network/entity/failure.dart';
import 'package:neobis_smart_tailor/core/network/http_client.dart';
import 'package:neobis_smart_tailor/core/network/http_paths.dart';
import 'package:neobis_smart_tailor/core/network/on_repository_exception.dart';
import 'package:neobis_smart_tailor/features/marketplace/data/data_source/marketplace_data_source.dart';
import 'package:neobis_smart_tailor/features/marketplace/data/models/equipment_model/equipment_model.dart';
import 'package:neobis_smart_tailor/features/marketplace/data/models/order_model/order_model.dart';
import 'package:neobis_smart_tailor/features/marketplace/data/models/service_model/service_model.dart';

@Injectable(as: MarketplaceDataSource)
class MarketplaceDataSourceImpl implements MarketplaceDataSource {
  final HttpClient _client;

  MarketplaceDataSourceImpl(
    this._client,
  );

  @override
  Future<List<EquipmentModel>> getEquipments() async {
    try {
      final response = await _client.get(
        HttpPaths.getEquipments,
      );

      if (response.statusCode != 200) {
        // ignore: only_throw_errors
        throw Failure.request(
          status: response.statusCode,
          message: 'Неудалось загрузить, код ошибки: ${response.statusCode}',
        );
      } else {
        var list = (response.data as List).map((model) => EquipmentModel.fromJson(model)).toList();
        return list;
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
  Future<List<OrderModel>> getOrders() async {
    try {
      final response = await _client.get(
        HttpPaths.getOrders,
      );

      if (response.statusCode != 200) {
        // ignore: only_throw_errors
        throw Failure.request(
          status: response.statusCode,
          message: 'Неудалось загрузить, код ошибки: ${response.statusCode}',
        );
      } else {
        var list = (response.data as List).map((model) => OrderModel.fromJson(model)).toList();
        return list;
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
  Future<List<ServiceModel>> getServices() async {
    try {
      final response = await _client.get(
        HttpPaths.getService,
        queryParameters: {
          'pageNo': '0',
          'pageSize': '2000',
        },
      );

      if (response.statusCode != 200) {
        // ignore: only_throw_errors
        throw Failure.request(
          status: response.statusCode,
          message: 'Неудалось загрузить, код ошибки: ${response.statusCode}',
        );
      } else {
        var list = (response.data as List).map((model) => ServiceModel.fromJson(model)).toList();
        return list;
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
