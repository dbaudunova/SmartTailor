import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:neobis_smart_tailor/core/network/entity/failure.dart';
import 'package:neobis_smart_tailor/core/network/http_client.dart';
import 'package:neobis_smart_tailor/core/network/http_paths.dart';
import 'package:neobis_smart_tailor/core/network/on_repository_exception.dart';
import 'package:neobis_smart_tailor/features/marketplace/data/data_source/marketplace_data_source.dart';
import 'package:neobis_smart_tailor/features/marketplace/data/models/general_responce/general_responce.dart';

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
}
