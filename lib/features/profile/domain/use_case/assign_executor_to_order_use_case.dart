import 'package:injectable/injectable.dart';
import 'package:neobis_smart_tailor/features/profile/domain/repository/profile_repo.dart';

@singleton
class AssignExecutorToOrderUseCase {
  final ProfileRepo repo;

  AssignExecutorToOrderUseCase({required this.repo});

  Future<void> call({required int? executorId, required int? orderId}) async {
    return repo.assignExecutorToOrderUseCase(executorId: executorId, orderId: orderId);
  }
}
