import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:neobis_smart_tailor/core/network/entity/failure.dart';
import 'package:neobis_smart_tailor/core/network/http_client.dart';
import 'package:neobis_smart_tailor/core/network/http_paths.dart';
import 'package:neobis_smart_tailor/core/network/on_repository_exception.dart';
import 'package:neobis_smart_tailor/features/login/data/data_source/login_data_source.dart';

@Injectable(as: LoginDataSource)
class LoginDataSourceImpl implements LoginDataSource {
  final HttpClient _client;

  LoginDataSourceImpl(
    this._client,
  );

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

// try {
//   var json = registrationModel!.toJson();
//   final response = await _client.post(
//     HttpPaths.registration,
//     data: json,
//     isSecure: false,
//   );
//   if (response.statusCode != 201) {
//     throw Failure.request(
//       status: response.statusCode,
//       message: 'Регистрация не удалась, код статуса: ${response.statusCode}',
//     );
//   }
// } on DioException catch (e) {
//   throw handleDioException(e);
// } catch (e) {
//   throw handleGeneralException(e);
// }
