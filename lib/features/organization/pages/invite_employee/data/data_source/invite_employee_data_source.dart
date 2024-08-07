import 'package:neobis_smart_tailor/features/organization/pages/invite_employee/data/models/send_invite_model/send_invite_model.dart';

abstract class InviteEmployeeDataSource {
  Future<void> sendInvitation(SendInviteModel model);
}
