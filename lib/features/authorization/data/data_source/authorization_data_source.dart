import 'package:neobis_smart_tailor/core/network/entity/auth_info.dart';
import 'package:neobis_smart_tailor/features/authorization/data/models/confirmation_model/confirmation_model.dart';
import 'package:neobis_smart_tailor/features/authorization/data/models/registration_model/registration_model.dart';

abstract class AuthorizationDataSource {
  Future<void> registration({
    RegistrationModel? registrationModel,
  });

  Future<AuthData> confirmation({
    ConfirmationModel? confirmationModel,
  });

  Future<void> resendPin({
    String? email,
  });

  Future<void> login({
    String? email,
  });
}
