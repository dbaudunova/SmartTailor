import 'package:neobis_smart_tailor/core/network/entity/auth_info.dart';
import 'package:neobis_smart_tailor/features/registration/data/models/registration_model/registration_model.dart';

abstract class RegistrationDataSource {
  Future<int?> registration({
    RegistrationModel? registrationModel,
  });

  Future<AuthData> confirmation({
    RegistrationModel? registrationModel,
  });
}
