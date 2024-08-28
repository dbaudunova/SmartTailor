import 'package:neobis_smart_tailor/features/authorization/data/models/confirmation_model/confirmation_model.dart';
import 'package:neobis_smart_tailor/features/authorization/data/models/registration_model/registration_model.dart';

abstract class AuthorizationRepo {
  Future<void> registration(
    RegistrationModel? registrationModel,
  );

  Future<void> confirmationEmail(
    ConfirmationModel? confirmationModel,
  );

  Future<void> resendPin(
    String? email,
  );

  Future<void> login(
    String email,
  );
}
