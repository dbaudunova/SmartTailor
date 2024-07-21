import 'package:injectable/injectable.dart';
import 'package:neobis_smart_tailor/core/use_case/use_case.dart';
import 'package:neobis_smart_tailor/features/login/domain/repository/login_repo.dart';

@singleton
class LoginUseCase extends UseCase<void, String> {
  final LoginRepo repo;

  LoginUseCase({
    required this.repo,
  });

  @override
  Future<void> call(String params) async {
    return repo.login(params);
  }
}
