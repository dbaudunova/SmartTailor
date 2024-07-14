import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:neobis_smart_tailor/core/network/entity/failure.dart';
import 'package:neobis_smart_tailor/core/network/entity/success.dart';
import 'package:neobis_smart_tailor/core/network/on_repository_exception.dart';
import 'package:neobis_smart_tailor/core/services/auth_service.dart';
import 'package:neobis_smart_tailor/features/registration/data/data_source/registration_data_source.dart';
import 'package:neobis_smart_tailor/features/registration/data/models/registration_model/registration_model.dart';
import 'package:neobis_smart_tailor/features/registration/domain/repository/registration_repo.dart';

@Injectable(as: RegistrationRepo)
class RegistrationRepoImpl implements RegistrationRepo {
  final RegistrationDataSource _dataSource;
  final AuthService _authService;

  RegistrationRepoImpl(
    this._dataSource,
    this._authService,
  );

  @override
  Future<Either<Failure, int?>> registration(RegistrationModel? registrationModel) async {
    try {
      final statusCode = await _dataSource.registration(registrationModel: registrationModel);
      return Right(statusCode);
    } catch (e) {
      return onRepositoryException(e);
    }
  }

  @override
  Future<Either<Failure, Success>> confirmation(RegistrationModel? registrationModel) async {
    try {
      final result = await _dataSource.confirmation(registrationModel: registrationModel);
      _authService.cachedUser = result;

      return Success.right;
    } catch (e) {
      return onRepositoryException(e);
    }
  }
}
