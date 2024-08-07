import 'package:injectable/injectable.dart';
import 'package:neobis_smart_tailor/core/services/auth_service.dart';
import 'package:neobis_smart_tailor/features/confirmation/data/data_source/confirmation_data_source.dart';
import 'package:neobis_smart_tailor/features/confirmation/data/models/activation_model/confirmation_model.dart';
import 'package:neobis_smart_tailor/features/confirmation/domain/repository/confirmation_repo.dart';

@Injectable(as: ConfirmationRepo)
class ConfirmationRepoImpl implements ConfirmationRepo {
  final ConfirmationDataSource _dataSource;
  final AuthService _authService;

  ConfirmationRepoImpl(
    this._dataSource,
    this._authService,
  );

  @override
  Future<void> confirmationEmail(ConfirmationModel? confirmationModel) async {
    final result =
        await _dataSource.confirmation(confirmationModel: confirmationModel);

    _authService.cachedUser = result;
  }

  @override
  Future<void> resendPin(String? email) async {
    await _dataSource.resendPin(email: email);
  }
}
