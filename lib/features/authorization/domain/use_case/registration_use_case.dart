import 'package:injectable/injectable.dart';
import 'package:neobis_smart_tailor/core/use_case/use_case.dart';
import 'package:neobis_smart_tailor/features/authorization/data/models/registration_model/registration_model.dart';
import 'package:neobis_smart_tailor/features/authorization/domain/repository/authorization_repository.dart';

@singleton
class RegistrationUseCase extends UseCase<void, RegistrationModel> {
  final AuthorizationRepo repo;

  RegistrationUseCase({
    required this.repo,
  });

  @override
  Future<void> call(RegistrationModel? params) async {
    return repo.registration(params);
  }
}
