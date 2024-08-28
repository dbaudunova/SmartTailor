import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:neobis_smart_tailor/core/network/entity/auth_info.dart';
import 'package:neobis_smart_tailor/core/network/entity/failure.dart';
import 'package:neobis_smart_tailor/core/network/http_client.dart';
import 'package:neobis_smart_tailor/core/network/http_paths.dart';
import 'package:neobis_smart_tailor/core/network/on_repository_exception.dart';
import 'package:neobis_smart_tailor/features/authorization/data/data_source/authorization_data_source.dart';
import 'package:neobis_smart_tailor/features/authorization/data/models/confirmation_model/confirmation_model.dart';
import 'package:neobis_smart_tailor/features/authorization/data/models/registration_model/registration_model.dart';

@Injectable(as: AuthorizationDataSource)
class AuthorizationDataSourceImpl implements AuthorizationDataSource {
  final HttpClient _client;

  AuthorizationDataSourceImpl(this._client);

  @override
  Future<void> registration({RegistrationModel? registrationModel}) async {
    try {
      var json = registrationModel!.toJson();
      final response = await _client.post(
        HttpPaths.registration,
        data: json,
        isSecure: false,
      );
      if (response.statusCode != 201) {
        throw Failure.request(
          status: response.statusCode,
          message: 'Регистрация не удалась, код статуса: ${response.statusCode}',
        );
      }
    } on DioException catch (e) {
      throw handleDioException(e);
    } catch (e) {
      throw handleGeneralException(e);
    }
  }

  @override
  Future<AuthData> confirmation({ConfirmationModel? confirmationModel}) async {
    try {
      final response = await _client.post(HttpPaths.confirmation,
          queryParameters: {
            'email': confirmationModel!.email,
            'code': confirmationModel.code,
          },
          isSecure: false);
      if (response.statusCode != 200) {
        throw Failure.request(
          status: response.statusCode,
          message: 'Пин код не верный, код статуса: ${response.statusCode}',
        );
      } else {
        return AuthData.fromJson(response.data);
      }
    } on DioException catch (e) {
      throw handleDioException(e);
    } catch (e) {
      throw handleGeneralException(e);
    }
  }

  @override
  Future<void> resendPin({String? email}) async {
    try {
      final response = await _client.post(HttpPaths.resendConfirmationCode,
          queryParameters: {
            'email': email,
          },
          isSecure: false);
      if (response.statusCode != 200) {
        throw Failure.request(
          status: response.statusCode,
          message: 'Ошибка, код статуса: ${response.statusCode}',
        );
      }
    } on DioException catch (e) {
      throw handleDioException(e);
    } catch (e) {
      throw handleGeneralException(e);
    }
  }

  @override
  Future<void> login({String? email}) async {
    try {
      final response = await _client.post(HttpPaths.login,
          queryParameters: {
            'email': email,
          },
          isSecure: false);
      if (response.statusCode != 200) {
        throw Failure.request(
          status: response.statusCode,
          message: 'Пин код не верный, код статуса: ${response.statusCode}',
        );
      }
    } on DioException catch (e) {
      throw handleDioException(e);
    } catch (e) {
      throw handleGeneralException(e);
    }
  }
}
