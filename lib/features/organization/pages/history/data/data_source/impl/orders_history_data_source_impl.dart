import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:neobis_smart_tailor/core/network/entity/failure.dart';
import 'package:neobis_smart_tailor/core/network/http_client.dart';
import 'package:neobis_smart_tailor/core/network/http_codes.dart';
import 'package:neobis_smart_tailor/core/network/http_paths.dart';
import 'package:neobis_smart_tailor/core/network/on_repository_exception.dart';
import 'package:neobis_smart_tailor/features/organization/pages/history/data/data_source/orders_history_data_source.dart';
import 'package:neobis_smart_tailor/features/profile/data/model/history_model/my_history_model.dart';

@Injectable(as: OrdersHistoryDataSource)
class OrdersHistoryDataSourceImpl implements OrdersHistoryDataSource {
  final HttpClient _client;

  OrdersHistoryDataSourceImpl(this._client);

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
  Future<MyHistoryModel> getDetaileHistoryOrder({required int id}) {
    // TODO: implement getDetaileHistoryOrder
    throw UnimplementedError();
  }
}
