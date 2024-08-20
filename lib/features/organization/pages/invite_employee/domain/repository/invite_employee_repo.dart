import 'package:neobis_smart_tailor/features/organization/pages/invite_employee/data/models/send_invite_model.dart';
import 'package:neobis_smart_tailor/features/organization/pages/positions/domain/entitys/position_entity.dart';

abstract class InviteEmployeeRepo {
  Future<void> sendInvitation(SendInviteModel model);
  Future<List<PositionEntity>> getAvailablePositions();
}
