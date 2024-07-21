import 'package:neobis_smart_tailor/core/network/entity/auth_info.dart';
import 'package:neobis_smart_tailor/features/confirmation/data/models/activation_model/confirmation_model.dart';

abstract class ConfirmationDataSource {
  Future<AuthData> confirmation({
    ConfirmationModel? confirmationModel,
  });

  Future<void> resendPin({
    String? email,
  });
}
