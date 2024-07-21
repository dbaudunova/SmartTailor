import 'package:neobis_smart_tailor/features/confirmation/data/models/activation_model/confirmation_model.dart';

abstract class ConfirmationRepo {
  Future<void> confirmationEmail(
    ConfirmationModel? confirmationModel,
  );

  Future<void> resendPin(
    String? email,
  );
}
