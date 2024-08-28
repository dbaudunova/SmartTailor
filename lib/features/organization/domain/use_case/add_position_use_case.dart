import 'package:injectable/injectable.dart';
import 'package:neobis_smart_tailor/core/use_case/use_case.dart';
import 'package:neobis_smart_tailor/features/organization/domain/entitys/position_entity.dart';
import 'package:neobis_smart_tailor/features/organization/domain/repository/organization_repo.dart';

@singleton
class AddPositionUseCase extends UseCase<void, PositionEntity> {
  final OrganizationRepo repo;

  AddPositionUseCase({
    required this.repo,
  });

  @override
  Future<void> call(PositionEntity params) async {
    await repo.createPosition(entity: params);
  }
}
