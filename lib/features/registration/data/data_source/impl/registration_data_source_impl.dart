import 'package:injectable/injectable.dart';
import 'package:neobis_smart_tailor/core/network/entity/auth_info.dart';
import 'package:neobis_smart_tailor/core/network/http_client.dart';
import 'package:neobis_smart_tailor/core/network/http_paths.dart';
import 'package:neobis_smart_tailor/features/registration/data/data_source/registration_data_source.dart';
import 'package:neobis_smart_tailor/features/registration/data/models/registration_model/registration_model.dart';

@Injectable(as: RegistrationDataSource)
class RegistrationDataSourceImpl implements RegistrationDataSource {
  final HttpClient _client;

  RegistrationDataSourceImpl(
    this._client,
  );

  @override
  Future<int?> registration({
    RegistrationModel? registrationModel,
  }) async {
    final response = await _client.post(
      HttpPaths.registration,
      data: {
        'lastName': registrationModel!.surname,
        'firstName': registrationModel.name,
        'patronymicName': registrationModel.fatherName,
        'email': registrationModel.email,
        'phoneNumber': registrationModel.phone
      },
      isSecure: false,
    );
    return response.statusCode;
  }

  @override
  Future<AuthData> confirmation({RegistrationModel? registrationModel}) async {
    final result = await _client.post(HttpPaths.confirmation, queryParameters: {
      'email': registrationModel!.email,
      'code': registrationModel.code,
    });
    return AuthData.fromJson(result.data);
  }
}
