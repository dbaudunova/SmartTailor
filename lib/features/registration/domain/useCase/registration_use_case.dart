import 'package:injectable/injectable.dart';
import 'package:neobis_smart_tailor/core/use_case/use_case.dart';
import 'package:neobis_smart_tailor/features/registration/data/models/registration_model/registration_model.dart';
import 'package:neobis_smart_tailor/features/registration/domain/repository/registration_repo.dart';

@singleton
class RegistrationUseCase extends UseCase<void, RegistrationModel> {
  final RegistrationRepo repo;

  RegistrationUseCase({
    required this.repo,
  });

  @override
  Future<void> call(RegistrationModel? params) async {
    return repo.registration(params);
  }
}
