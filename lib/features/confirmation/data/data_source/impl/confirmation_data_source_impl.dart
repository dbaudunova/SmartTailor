import 'package:injectable/injectable.dart';
import 'package:neobis_smart_tailor/core/network/entity/auth_info.dart';
import 'package:neobis_smart_tailor/core/network/http_client.dart';
import 'package:neobis_smart_tailor/core/network/http_paths.dart';
import 'package:neobis_smart_tailor/features/confirmation/data/data_source/confirmation_data_source.dart';
import 'package:neobis_smart_tailor/features/confirmation/data/models/activation_model/confirmation_model.dart';

@Injectable(as: ConfirmationDataSource)
class ConfirmationDataSourceImpl implements ConfirmationDataSource {
  final HttpClient _client;

  ConfirmationDataSourceImpl(
    this._client,
  );

  @override
  Future<AuthData> confirmation({ConfirmationModel? confirmationModel}) async {
    final result = await _client.post(HttpPaths.confirmation, queryParameters: {
      'email': confirmationModel!.email,
      'code': confirmationModel.code,
    });
    return AuthData.fromJson(result.data);
  }
}
