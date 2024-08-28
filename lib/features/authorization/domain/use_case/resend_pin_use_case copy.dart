import 'package:injectable/injectable.dart';
import 'package:neobis_smart_tailor/core/use_case/use_case.dart';
import 'package:neobis_smart_tailor/features/authorization/domain/repository/authorization_repository.dart';

@singleton
class ResendPinUseCase extends UseCase<void, String> {
  final AuthorizationRepo repo;

  ResendPinUseCase({
    required this.repo,
  });

  @override
  Future<void> call(String? params) async {
    return repo.resendPin(params);
  }
}
