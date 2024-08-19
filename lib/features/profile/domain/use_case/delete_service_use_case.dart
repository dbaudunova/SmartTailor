import 'package:injectable/injectable.dart';
import 'package:neobis_smart_tailor/features/profile/domain/repository/profile_repo.dart';

@singleton
class DeleteServiceUseCase {
  final ProfileRepo repo;

  DeleteServiceUseCase({required this.repo});

  Future<void> call({required int? serviceId}) async {
    return repo.deleteService(serviceId: serviceId);
  }
}
