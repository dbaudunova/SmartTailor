import 'package:injectable/injectable.dart';
import 'package:neobis_smart_tailor/features/profile/domain/repository/profile_repo.dart';

@singleton
class HideServiceUseCase {
  final ProfileRepo repo;

  HideServiceUseCase({required this.repo});

  Future<void> call({required int? serviceId}) async {
    return repo.hideService(serviceId: serviceId);
  }
}
