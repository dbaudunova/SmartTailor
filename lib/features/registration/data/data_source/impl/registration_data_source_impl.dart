import 'package:injectable/injectable.dart';
import 'package:neobis_smart_tailor/core/network/http_client.dart';
import 'package:neobis_smart_tailor/features/registration/data/data_source/registration_data_source.dart';
import 'package:neobis_smart_tailor/features/registration/data/models/registration_model/registration_model.dart';

@Injectable(as: RegistrationDataSource)
class RegistrationDataSourceImpl implements RegistrationDataSource {
  final HttpClient _client;

  RegistrationDataSourceImpl(
    this._client,
  );

  @override
  Future<void> registration({RegistrationModel? registrationModel}) {
    // TODO: implement registration
    throw UnimplementedError();
  }

  // @override
  // Future<void> registration({
  //   RegistrationModel? registrationModel,
  // }) async {
  //   try {
  //     final response = await _client.post(
  //       HttpPaths.registration,
  //       data: {
  //         "email": registrationModel!.email,
  //         "name": registrationModel.name,
  //         "password": registrationModel.password,
  //         "confirmPassword": registrationModel.confirmPassword
  //       },
  //       isSecure: false,
  //     );
  //     print(response);
  //   } catch (e) {
  //     print('Error: $e');
  //   }
  // }
}
