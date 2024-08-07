import 'package:injectable/injectable.dart';
import 'package:neobis_smart_tailor/core/use_case/use_case.dart';
import 'package:neobis_smart_tailor/features/profile/domain/repository/profile_repo.dart';

@singleton
class SendSubscriptionUseCase extends UseCase<void, void> {
  final ProfileRepo repo;

  SendSubscriptionUseCase({required this.repo});

  @override
  Future<void> call(void params) async {
    return repo.sendSubscription();
  }
}
