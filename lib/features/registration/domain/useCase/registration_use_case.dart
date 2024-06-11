import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:neobis_smart_tailor/core/network/entity/failure.dart';
import 'package:neobis_smart_tailor/core/network/entity/success.dart';
import 'package:neobis_smart_tailor/core/use_case/use_case.dart';
import 'package:neobis_smart_tailor/features/registration/data/models/registration_model/registration_model.dart';
import 'package:neobis_smart_tailor/features/registration/domain/repository/registration_repo.dart';

@singleton
class RegistrationUseCase extends UseCase<Either<Failure, Success>, RegistrationModel> {
  final RegistrationRepo repo;

  RegistrationUseCase({
    required this.repo,
  });

  @override
  Future<Either<Failure, Success>> call(RegistrationModel? params) async {
    return repo.registration(params);
  }
}
