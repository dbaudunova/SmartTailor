import 'package:injectable/injectable.dart';
import 'package:neobis_smart_tailor/features/login/data/data_source/login_data_source.dart';
import 'package:neobis_smart_tailor/features/login/domain/repository/login_repo.dart';

@Injectable(as: LoginRepo)
class LoginRepoImpl implements LoginRepo {
  final LoginDataSource _dataSource;

  LoginRepoImpl(
    this._dataSource,
  );

  @override
  Future<void> login(String email) async {
    await _dataSource.login(email: email);
  }
}
