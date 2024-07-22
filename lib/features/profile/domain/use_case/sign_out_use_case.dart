import 'package:injectable/injectable.dart';
import 'package:neobis_smart_tailor/core/use_case/use_case.dart';
import 'package:neobis_smart_tailor/features/profile/domain/repository/profile_repo.dart';

@singleton
class SignOutUseCase extends UseCase<void, void> {
  final ProfileRepo repo;

  SignOutUseCase({
    required this.repo,
  });

  @override
  Future<void> call(params) async {
    return repo.signOut();
  }
}
