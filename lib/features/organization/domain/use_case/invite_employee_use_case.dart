import 'package:injectable/injectable.dart';
import 'package:neobis_smart_tailor/core/use_case/use_case.dart';
import 'package:neobis_smart_tailor/features/organization/data/models/send_invite_model/send_invite_model.dart';
import 'package:neobis_smart_tailor/features/organization/domain/repository/organization_repo.dart';

@singleton
class InviteEmployeeUseCase extends UseCase<void, SendInviteModel> {
  final OrganizationRepo repo;

  InviteEmployeeUseCase({
    required this.repo,
  });

  @override
  Future<void> call(SendInviteModel params) async {
    await repo.sendInvitation(params);
  }
}
