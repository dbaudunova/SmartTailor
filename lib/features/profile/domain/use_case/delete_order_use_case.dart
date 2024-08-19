import 'package:injectable/injectable.dart';
import 'package:neobis_smart_tailor/features/profile/domain/repository/profile_repo.dart';

@singleton
class DeleteOrderUseCase {
  final ProfileRepo repo;

  DeleteOrderUseCase({required this.repo});

  Future<void> call({required int? orderId}) async {
    return repo.deleteOrder(orderId: orderId);
  }
}
