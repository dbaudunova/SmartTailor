import 'package:injectable/injectable.dart';
import 'package:neobis_smart_tailor/features/organization/pages/invite_employee/data/data_source/invite_employee_data_source.dart';
import 'package:neobis_smart_tailor/features/organization/pages/invite_employee/data/models/send_invite_model/send_invite_model.dart';
import 'package:neobis_smart_tailor/features/organization/pages/invite_employee/domain/repository/invite_employee_repo.dart';

@Injectable(as: InviteEmployeeRepo)
class InviteEmployeeRepoImpl implements InviteEmployeeRepo {
  final InviteEmployeeDataSource _dataSource;

  InviteEmployeeRepoImpl(
    this._dataSource,
  );

  @override
  Future<void> sendInvitation(SendInviteModel model) async {
    await _dataSource.sendInvitation(model);
  }
}
