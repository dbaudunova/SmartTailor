// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i4;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:neobis_smart_tailor/core/app/router/app_routes.dart' as _i3;
import 'package:neobis_smart_tailor/features/confirmation/presentation/bloc/registration_bloc.dart'
    as _i6;
import 'package:neobis_smart_tailor/features/registration/presentation/bloc/registration_bloc.dart'
    as _i7;
import 'package:neobis_smart_tailor/injection/injection_module.dart' as _i9;
import 'package:shared_preferences/shared_preferences.dart' as _i8;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i1.GetIt> init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final registerModule = _$RegisterModule();
    gh.singleton<_i3.AppRouter>(() => _i3.AppRouter());
    gh.factory<_i4.Dio>(() => registerModule.dio);
    gh.singleton<_i5.FlutterSecureStorage>(() => registerModule.storage);
    gh.singleton<_i6.RegistrationBloc>(() => _i6.RegistrationBloc());
    gh.singleton<_i7.RegistrationBloc>(() => _i7.RegistrationBloc());
    await gh.singletonAsync<_i8.SharedPreferences>(
      () => registerModule.prefs,
      preResolve: true,
    );
    return this;
  }
}

class _$RegisterModule extends _i9.RegisterModule {}
