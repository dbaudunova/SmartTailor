import 'package:injectable/injectable.dart';
import 'package:neobis_smart_tailor/features/profile/domain/repository/profile_repo.dart';

@singleton
class HideOrderUseCase {
  final ProfileRepo repo;

  HideOrderUseCase({required this.repo});

  Future<void> call({required int? orderId}) async {
    return repo.hideOrder(orderId: orderId);
  }
}
