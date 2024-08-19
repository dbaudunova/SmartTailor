import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:neobis_smart_tailor/core/network/entity/failure.dart';
import 'package:neobis_smart_tailor/core/network/http_client.dart';
import 'package:neobis_smart_tailor/core/network/http_paths.dart';
import 'package:neobis_smart_tailor/core/network/on_repository_exception.dart';
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/service_detail_screen/data/data_source/service_detail_data_source.dart';
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/service_detail_screen/data/models/service_detail_model/service_detail_model.dart';

@Injectable(as: ServiceDetailDataSource)
class ServiceDetailDataSourceImpl implements ServiceDetailDataSource {
  final HttpClient _client;

  ServiceDetailDataSourceImpl(
    this._client,
  );

  @override
  Future<ServiceDetailModel> getDetailService({int? id}) async {
    try {
      final response = await _client.get(
        HttpPaths.getServiceById + id.toString(),
      );

      if (response.statusCode != 200) {
        // ignore: only_throw_errors
        throw Failure.request(
          status: response.statusCode,
          message: 'Неудалось загрузить, код ошибки: ${response.statusCode}',
        );
      } else {
        var model = ServiceDetailModel.fromJson(response.data);
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
  Future<void> sendRequestToService({required int id}) async {
    try {
      final response = await _client.get(
        HttpPaths.postRequestToExecuteService + id.toString(),
      );

      if (response.statusCode != 200) {
        // ignore: only_throw_errors
        throw Failure.request(
          status: response.statusCode,
          message: 'Неудалось загрузить, код ошибки: ${response.statusCode}',
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
