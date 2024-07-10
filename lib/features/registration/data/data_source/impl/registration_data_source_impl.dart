import 'package:injectable/injectable.dart';
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
  Future<void> registration({
    RegistrationModel? registrationModel,
  }) async {
    try {
      final response = await _client.post(
        HttpPaths.registration,
        data: {
          "email": registrationModel!.email,
          "first_name": registrationModel.name,
          "last_name": registrationModel.surname,
          "password": "123456789",
          "password_confirm": "123456789"
        },
        isSecure: false,
      );

      print(response);
    } catch (e) {
      print('Error: $e');
    }
  }
}
