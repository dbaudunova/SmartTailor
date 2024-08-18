import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:neobis_smart_tailor/core/network/entity/failure.dart';
import 'package:neobis_smart_tailor/core/network/http_client.dart';
import 'package:neobis_smart_tailor/core/network/http_codes.dart';
import 'package:neobis_smart_tailor/core/network/http_paths.dart';
import 'package:neobis_smart_tailor/core/network/on_repository_exception.dart';
import 'package:neobis_smart_tailor/features/organization/pages/positions/data/data_source/positions_data_source.dart';
import 'package:neobis_smart_tailor/features/organization/pages/positions/data/models/_model/position_model.dart';

@Injectable(as: PositionsDataSource)
class PositionsSourceImpl implements PositionsDataSource {
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
}
