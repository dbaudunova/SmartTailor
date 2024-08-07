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
import 'package:neobis_smart_tailor/features/organization/presentation/pages/create_organization/data/data_source/create_organization_data_source.dart';
import 'package:neobis_smart_tailor/features/organization/presentation/pages/create_organization/data/models/create_organization_model/create_organixation_model.dart';

@Injectable(as: CreateOrganizationDataSource)
class CreateOrganizationDataSourceImpl implements CreateOrganizationDataSource {
  final HttpClient _client;
  final AuthService service;

  CreateOrganizationDataSourceImpl(this._client, this.service);

  @override
  Future<void> createOrganization(
      {required CreateOrganizationModel model, required File image}) async {
    var jsonString = json.encode(model.toJson());
    // print(jsonString);
    var multipartImage = await MultipartFile.fromFile(image.path,
        filename: image.path.split('/').last);
    // for (var file in images!) await MultipartFile.fromFile(file.path, filename: file.path.split('/').last)
    print('45645645');
    final formData = FormData.fromMap({
      'organization': jsonString,
      'image': multipartImage,
    });
    try {
      final response = await _client.post(
        HttpPaths.createOrganization,
        options: Options(
          headers: {'Content-Type': 'multipart/form-data'},
        ),
        data: formData,
      );
      if (response.statusCode != HttpSuccess.created) {
        // ignore: only_throw_errors
        print(response.data.toString());
        throw Failure.request(
          status: response.statusCode,
          message: response.data.toString(),
        );
      }
    } on DioException catch (e) {
      print('DioError:  ${e.message}');
      // ignore: only_throw_errors
      throw handleDioException(e);
    } catch (e) {
      print(e.toString());
      // ignore: only_throw_errors
      throw handleGeneralException(e);
    }
  }
}
