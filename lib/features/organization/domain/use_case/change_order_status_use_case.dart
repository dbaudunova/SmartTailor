import 'package:injectable/injectable.dart';
import 'package:neobis_smart_tailor/features/organization/domain/repository/organization_repo.dart';

@singleton
class ChangeOrderStatusUseCase {
  final OrganizationRepo repo;

  ChangeOrderStatusUseCase({
    required this.repo,
  });

  Future<void> call({required int id, required String value}) async {
    await repo.changeOrderStatus(id: id, value: value);
  }
}
