import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:neobis_smart_tailor/core/network/entity/failure.dart';
import 'package:neobis_smart_tailor/core/network/http_client.dart';
import 'package:neobis_smart_tailor/core/network/http_codes.dart';
import 'package:neobis_smart_tailor/core/network/http_paths.dart';
import 'package:neobis_smart_tailor/core/network/on_repository_exception.dart';
import 'package:neobis_smart_tailor/core/services/auth_service.dart';
import 'package:neobis_smart_tailor/features/order_place/data/data_source/order_place_data_source.dart';
import 'package:neobis_smart_tailor/features/order_place/data/models/order_place_model.dart';

@Injectable(as: OrderPlaceDataSource)
class OrderPlaceDataSourceImpl implements OrderPlaceDataSource {
  final HttpClient _client;
  final AuthService service;

  OrderPlaceDataSourceImpl(this._client, this.service);

  @override
  Future<void> createOrder({OrderPlaceModel? orderPlaceModel, List<File>? images}) async {
    var jsonString = json.encode(orderPlaceModel!.toJson());
    var imagesList = [
      for (var file in images!) await MultipartFile.fromFile(file.path, filename: file.path.split('/').last)
    ];
    final formData = FormData.fromMap({
      'order': jsonString,
      'images': imagesList,
    });
    try {
      final response = await _client.post(
        HttpPaths.createOrder,
        options: Options(
          headers: {'Content-Type': 'multipart/form-data'},
        ),
        data: formData,
      );
      if (response.statusCode != HttpSuccess.created) {
        // ignore: only_throw_errors
        throw Failure.request(
          status: response.statusCode,
          message: 'Order creation failed, status code: ${response.statusCode}',
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
  Future<void> createEquipment({OrderPlaceModel? orderPlaceModel, List<File>? images}) async {
    var jsonString = json.encode(orderPlaceModel!.toJson());
    var imagesList = [
      for (var file in images!) await MultipartFile.fromFile(file.path, filename: file.path.split('/').last)
    ];
    final formData = FormData.fromMap({
      'images': imagesList,
      'equipment': jsonString,
    });
    try {
      final response = await _client.post(
        HttpPaths.createEquipment,
        options: Options(
          headers: {'Content-Type': 'multipart/form-data'},
        ),
        data: formData,
      );
      if (response.statusCode != HttpSuccess.created) {
        // ignore: only_throw_errors
        throw Failure.request(
          status: response.statusCode,
          message: 'Equipment creation failed, status code: ${response.statusCode}',
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
  Future<void> createService({OrderPlaceModel? orderPlaceModel, List<File>? images}) async {
    var jsonString = json.encode(orderPlaceModel!.toJson());
    var imagesList = [
      for (var file in images!) await MultipartFile.fromFile(file.path, filename: file.path.split('/').last)
    ];
    final formData = FormData.fromMap({
      'service': jsonString,
      'images': imagesList,
    });
    try {
      final response = await _client.post(
        HttpPaths.createService,
        options: Options(
          headers: {'Content-Type': 'multipart/form-data'},
        ),
        data: formData,
      );
      if (response.statusCode != HttpSuccess.created) {
        // ignore: only_throw_errors
        throw Failure.request(
          status: response.statusCode,
          message: 'Equipment creation failed, status code: ${response.statusCode}',
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
