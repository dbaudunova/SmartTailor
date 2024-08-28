import 'package:injectable/injectable.dart';
import 'package:neobis_smart_tailor/core/use_case/use_case.dart';
import 'package:neobis_smart_tailor/features/authorization/data/models/confirmation_model/confirmation_model.dart';
import 'package:neobis_smart_tailor/features/authorization/domain/repository/authorization_repository.dart';

@singleton
class ConfirmationUseCase extends UseCase<void, ConfirmationModel> {
  final AuthorizationRepo repo;

  ConfirmationUseCase({
    required this.repo,
  });

  @override
  Future<void> call(ConfirmationModel? params) async {
    return repo.confirmationEmail(params);
  }
}
