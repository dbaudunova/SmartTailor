import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:neobis_smart_tailor/core/network/entity/failure.dart';
import 'package:neobis_smart_tailor/core/network/http_client.dart';
import 'package:neobis_smart_tailor/core/network/http_paths.dart';
import 'package:neobis_smart_tailor/core/network/on_repository_exception.dart';
import 'package:neobis_smart_tailor/features/marketplace/data/data_source/marketplace_data_source.dart';
import 'package:neobis_smart_tailor/features/marketplace/data/models/general_responce/general_responce.dart';
import 'package:neobis_smart_tailor/features/marketplace/data/models/search_model/advertisement_model.dart';

@Injectable(as: MarketplaceDataSource)
@Injectable(as: MarketplaceDataSource)
class MarketplaceDataSourceImpl implements MarketplaceDataSource {
  final HttpClient _client;

  MarketplaceDataSourceImpl(this._client);

  @override
  Future<GeneralResponceModel> getEquipments({required int pageNumber}) async {
    try {
      final response = await _client.get(
        HttpPaths.getEquipments,
        queryParameters: {
          'pageNumber': pageNumber.toString(),
          'pageSize': '10',
        },
      );

      if (response.statusCode != 200) {
        throw Failure.request(
          status: response.statusCode,
          message: 'Неудалось загрузить, код ошибки: ${response.statusCode}',
        );
      } else {
        var list = GeneralResponceModel.fromJson(response.data);
        return list;
      }
    } on DioException catch (e) {
      throw handleDioException(e);
    } catch (e) {
      throw handleGeneralException(e);
    }
  }

  @override
  Future<GeneralResponceModel> getOrders({required int pageNumber}) async {
    try {
      final response = await _client.get(
        HttpPaths.getOrders,
        queryParameters: {
          'pageNumber': pageNumber.toString(),
          'pageSize': '10',
          'df': '',
        },
      );

      if (response.statusCode != 200) {
        throw Failure.request(
          status: response.statusCode,
          message: 'Неудалось загрузить, код ошибки: ${response.statusCode}',
        );
      } else {
        var list = GeneralResponceModel.fromJson(response.data);
        return list;
      }
    } on DioException catch (e) {
      throw handleDioException(e);
    } catch (e) {
      throw handleGeneralException(e);
    }
  }

  @override
  Future<GeneralResponceModel> getServices({required int pageNumber}) async {
    try {
      final response = await _client.get(
        HttpPaths.getService,
        queryParameters: {
          'pageNumber': pageNumber.toString(),
          'pageSize': '10',
        },
      );

      if (response.statusCode != 200) {
        throw Failure.request(
          status: response.statusCode,
          message: 'Неудалось загрузить, код ошибки: ${response.statusCode}',
        );
      } else {
        var list = GeneralResponceModel.fromJson(response.data);
        return list;
      }
    } on DioException catch (e) {
      throw handleDioException(e);
    } catch (e) {
      throw handleGeneralException(e);
    }
  }

  @override
  Future<AdvertisementResponseModel> getSearchEquipment({required int pageNumber, required String query}) async {
    try {
      final response = await _client.get(
        HttpPaths.getSearchEquipment,
        queryParameters: {'pageNumber': pageNumber.toString(), 'pageSize': '10', 'query': query},
      );

      if (response.statusCode != 200) {
        throw Failure.request(
          status: response.statusCode,
          message: 'Неудалось загрузить, код ошибки: ${response.statusCode}',
        );
      } else {
        var model = AdvertisementResponseModel.fromJson(response.data);
        return model;
      }
    } on DioException catch (e) {
      throw handleDioException(e);
    } catch (e) {
      throw handleGeneralException(e);
    }
  }

  @override
  Future<AdvertisementResponseModel> getSearchOrder({required int pageNumber, required String query}) async {
    try {
      final response = await _client.get(
        HttpPaths.getSearchOrders,
        queryParameters: {'pageNumber': pageNumber.toString(), 'pageSize': '10', 'query': query},
      );

      if (response.statusCode != 200) {
        throw Failure.request(
          status: response.statusCode,
          message: 'Неудалось загрузить, код ошибки: ${response.statusCode}',
        );
      } else {
        var model = AdvertisementResponseModel.fromJson(response.data);
        return model;
      }
    } on DioException catch (e) {
      throw handleDioException(e);
    } catch (e) {
      throw handleGeneralException(e);
    }
  }

  @override
  Future<AdvertisementResponseModel> getSearchServices({required int pageNumber, required String query}) async {
    try {
      final response = await _client.get(
        HttpPaths.getSerachServices,
        queryParameters: {'pageNumber': pageNumber.toString(), 'pageSize': '10', 'query': query},
      );

      if (response.statusCode != 200) {
        throw Failure.request(
          status: response.statusCode,
          message: 'Неудалось загрузить, код ошибки: ${response.statusCode}',
        );
      } else {
        var model = AdvertisementResponseModel.fromJson(response.data);
        return model;
      }
    } on DioException catch (e) {
      throw handleDioException(e);
    } catch (e) {
      throw handleGeneralException(e);
    }
  }
}
