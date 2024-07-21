import 'package:injectable/injectable.dart';
import 'package:neobis_smart_tailor/core/use_case/use_case.dart';
import 'package:neobis_smart_tailor/features/confirmation/data/models/activation_model/confirmation_model.dart';
import 'package:neobis_smart_tailor/features/confirmation/domain/repository/confirmation_repo.dart';

@singleton
class ConfirmationUseCase extends UseCase<void, ConfirmationModel> {
  final ConfirmationRepo repo;

  ConfirmationUseCase({
    required this.repo,
  });

  @override
  Future<void> call(ConfirmationModel? params) async {
    return repo.confirmationEmail(params);
  }
}
