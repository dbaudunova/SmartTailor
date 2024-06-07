import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:neobis_smart_tailor/core/network/entity/failure.dart';
import 'package:neobis_smart_tailor/core/network/entity/success.dart';
import 'package:neobis_smart_tailor/core/network/on_repository_exception.dart';
import 'package:neobis_smart_tailor/features/registration/data/data_source/registration_data_source.dart';
import 'package:neobis_smart_tailor/features/registration/data/models/registration_model/registration_model.dart';
import 'package:neobis_smart_tailor/features/registration/domain/repository/registration_repo.dart';

@Injectable(as: RegistrationRepo)
class RegistrationRepoImpl implements RegistrationRepo {
  final RegistrationDataSource _dataSource;

  RegistrationRepoImpl(
    this._dataSource,
  );

  @override
  Future<Either<Failure, Success>> registration(RegistrationModel? registrationModel) async {
    try {
      await _dataSource.registration(registrationModel: registrationModel);
      return Success.right;
    } catch (e) {
      return onRepositoryException(e);
    }
  }
}
