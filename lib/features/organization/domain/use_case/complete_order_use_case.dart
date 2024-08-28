import 'package:injectable/injectable.dart';
import 'package:neobis_smart_tailor/features/organization/domain/repository/organization_repo.dart';

@singleton
class CompleteOrderUseCase {
  final OrganizationRepo repo;

  CompleteOrderUseCase({
    required this.repo,
  });

  Future<void> call({required int id}) async {
    await repo.completeOrder(id: id);
  }
}
