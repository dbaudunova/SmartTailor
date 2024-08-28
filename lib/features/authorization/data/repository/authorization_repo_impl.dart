import 'package:injectable/injectable.dart';
import 'package:neobis_smart_tailor/core/services/auth_service.dart';
import 'package:neobis_smart_tailor/features/authorization/data/data_source/authorization_data_source.dart';
import 'package:neobis_smart_tailor/features/authorization/data/models/confirmation_model/confirmation_model.dart';
import 'package:neobis_smart_tailor/features/authorization/data/models/registration_model/registration_model.dart';
import 'package:neobis_smart_tailor/features/authorization/domain/repository/authorization_repository.dart';

@Injectable(as: AuthorizationRepo)
class AuthorizationRepoImpl implements AuthorizationRepo {
  final AuthorizationDataSource _dataSource;
  final AuthService _authService;

  AuthorizationRepoImpl(
    this._dataSource,
    this._authService,
  );

  @override
  Future<void> registration(RegistrationModel? registrationModel) async {
    await _dataSource.registration(registrationModel: registrationModel);
  }

  @override
  Future<void> confirmationEmail(ConfirmationModel? confirmationModel) async {
    final result = await _dataSource.confirmation(confirmationModel: confirmationModel);

    _authService.cachedUser = result;
  }

  @override
  Future<void> resendPin(String? email) async {
    await _dataSource.resendPin(email: email);
  }

  @override
  Future<void> login(String email) async {
    await _dataSource.login(email: email);
  }
}
