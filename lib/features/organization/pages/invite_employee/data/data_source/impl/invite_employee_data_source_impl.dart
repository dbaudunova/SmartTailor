import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:neobis_smart_tailor/core/network/entity/failure.dart';
import 'package:neobis_smart_tailor/core/network/http_client.dart';
import 'package:neobis_smart_tailor/core/network/http_codes.dart';
import 'package:neobis_smart_tailor/core/network/http_paths.dart';
import 'package:neobis_smart_tailor/core/network/on_repository_exception.dart';
import 'package:neobis_smart_tailor/features/organization/pages/invite_employee/data/data_source/invite_employee_data_source.dart';
import 'package:neobis_smart_tailor/features/organization/pages/invite_employee/data/models/send_invite_model/send_invite_model.dart';

@Injectable(as: InviteEmployeeDataSource)
class InviteEmployeeDataSourceImpl implements InviteEmployeeDataSource {
  final HttpClient _client;

  InviteEmployeeDataSourceImpl(
    this._client,
  );

  @override
  Future<void> sendInvitation(SendInviteModel model) async {
    var jsonString = json.encode(model.toJson());
    final formData = FormData.fromMap({
      'employee': jsonString,
    });
    try {
      final response = await _client.post(
        HttpPaths.sendInvitationToEmployee,
        options: Options(
          headers: {'Content-Type': 'multipart/form-data'},
        ),
        data: formData,
      );
      if (response.statusCode != HttpSuccess.success) {
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
}
