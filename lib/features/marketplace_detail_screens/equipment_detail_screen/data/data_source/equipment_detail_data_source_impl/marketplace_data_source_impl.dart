import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:neobis_smart_tailor/core/network/entity/failure.dart';
import 'package:neobis_smart_tailor/core/network/http_client.dart';
import 'package:neobis_smart_tailor/core/network/http_paths.dart';
import 'package:neobis_smart_tailor/core/network/on_repository_exception.dart';
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/equipment_detail_screen/data/data_source/equipment_detail_data_source.dart';
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/equipment_detail_screen/data/models/equipment_detail_model/equipment_detail_model.dart';

@Injectable(as: EquipmentDetailDataSource)
class EquipmentDetailDataSourceImpl implements EquipmentDetailDataSource {
  final HttpClient _client;

  EquipmentDetailDataSourceImpl(
    this._client,
  );

  @override
  Future<EquipmentDetailModel> getDetailEquipment({int? id}) async {
    try {
      final response = await _client.get(
        HttpPaths.getEquipmentById + id.toString(),
      );

      if (response.statusCode != 200) {
        // ignore: only_throw_errors
        throw Failure.request(
          status: response.statusCode,
          message: 'Неудалось загрузить, код ошибки: ${response.statusCode}',
        );
      } else {
        var model = EquipmentDetailModel.fromJson(response.data);
        print(model);
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
  Future<void> buyEquipment({int? id}) async {
    try {
      final response = await _client.get(
        HttpPaths.postBuyEquipment + id.toString(),
      );

      if (response.statusCode == 406) {
        throw Failure.request(
          status: response.statusCode,
          message: response.data,
        );
      }
    } on DioException catch (e) {
      throw handleDioException(e);
    } catch (e) {
      throw handleGeneralException(e);
    }
  }
}
