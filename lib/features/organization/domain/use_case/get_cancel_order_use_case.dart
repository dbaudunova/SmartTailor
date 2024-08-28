import 'package:injectable/injectable.dart';
import 'package:neobis_smart_tailor/features/organization/domain/repository/organization_repo.dart';

@singleton
class GetCancelOrderUseCase {
  final OrganizationRepo repo;

  GetCancelOrderUseCase({
    required this.repo,
  });

  Future<void> call({required int id}) async {
    await repo.cancelOrder(id: id);
  }
}
