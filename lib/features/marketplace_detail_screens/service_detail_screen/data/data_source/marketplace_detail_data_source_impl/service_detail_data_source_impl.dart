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
        // queryParameters: {
        //   'pageNumber': '0',
        //   'pageSize': '2000',
        // },
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

  // @override
  // Future<List<GeneralOrderModel>> getEquipments() async {
  //   try {
  //     final response = await _client.get(
  //       HttpPaths.getEquipments,
  //       queryParameters: {
  //         'pageNumber': '0',
  //         'pageSize': '2000',
  //       },
  //     );

  //     if (response.statusCode != 200) {
  //       // ignore: only_throw_errors
  //       throw Failure.request(
  //         status: response.statusCode,
  //         message: 'Неудалось загрузить, код ошибки: ${response.statusCode}',
  //       );
  //     } else {
  //       var list = (response.data as List).map((model) => GeneralOrderModel.fromJson(model)).toList();
  //       print(list);
  //       return list;
  //     }
  //   } on DioException catch (e) {
  //     // ignore: only_throw_errors
  //     throw handleDioException(e);
  //   } catch (e) {
  //     // ignore: only_throw_errors
  //     throw handleGeneralException(e);
  //   }
  // }

  // @override
  // Future<List<GeneralOrderModel>> getOrders() async {
  //   try {
  //     final response = await _client.get(
  //       HttpPaths.getOrders,
  //       queryParameters: {
  //         'pageNumber': '0',
  //         'pageSize': '2000',
  //       },
  //     );

  //     if (response.statusCode != 200) {
  //       // ignore: only_throw_errors
  //       throw Failure.request(
  //         status: response.statusCode,
  //         message: 'Неудалось загрузить, код ошибки: ${response.statusCode}',
  //       );
  //     } else {
  //       var list = (response.data as List).map((model) => GeneralOrderModel.fromJson(model)).toList();
  //       print(list);
  //       return list;
  //     }
  //   } on DioException catch (e) {
  //     // ignore: only_throw_errors
  //     throw handleDioException(e);
  //   } catch (e) {
  //     // ignore: only_throw_errors
  //     throw handleGeneralException(e);
  //   }
  // }

  // @override
  // Future<List<GeneralOrderModel>> getServices() async {
  //   try {
  //     final response = await _client.get(
  //       HttpPaths.getService,
  //       queryParameters: {
  //         'pageNumber': '0',
  //         'pageSize': '2000',
  //       },
  //     );

  //     if (response.statusCode != 200) {
  //       // ignore: only_throw_errors
  //       throw Failure.request(
  //         status: response.statusCode,
  //         message: 'Неудалось загрузить, код ошибки: ${response.statusCode}',
  //       );
  //     } else {
  //       var list = (response.data as List).map((model) => GeneralOrderModel.fromJson(model)).toList();
  //       print(list);
  //       return list;
  //     }
  //   } on DioException catch (e) {
  //     // ignore: only_throw_errors
  //     throw handleDioException(e);
  //   } catch (e) {
  //     // ignore: only_throw_errors
  //     throw handleGeneralException(e);
  //   }
  // }
}
