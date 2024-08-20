import 'package:injectable/injectable.dart';
import 'package:neobis_smart_tailor/core/use_case/use_case.dart';
import 'package:neobis_smart_tailor/features/organization/pages/invite_employee/data/models/send_invite_model.dart';
import 'package:neobis_smart_tailor/features/organization/pages/invite_employee/domain/repository/invite_employee_repo.dart';

@singleton
class InviteEmployeeUseCase extends UseCase<void, SendInviteModel> {
  final InviteEmployeeRepo repo;

  InviteEmployeeUseCase({
    required this.repo,
  });

  @override
  Future<void> call(SendInviteModel model) async {
    await repo.sendInvitation(model);
  }
}
