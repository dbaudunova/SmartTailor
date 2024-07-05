// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i3;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i9;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:neobis_smart_tailor/core/app/router/app_routes.dart' as _i4;
import 'package:neobis_smart_tailor/core/network/http_client.dart' as _i10;
import 'package:neobis_smart_tailor/core/services/auth_service.dart' as _i5;
import 'package:neobis_smart_tailor/core/services/secure_storage_service.dart'
    as _i11;
import 'package:neobis_smart_tailor/features/confirmation/presentation/bloc/bloc/timer_bloc.dart'
    as _i6;
import 'package:neobis_smart_tailor/features/confirmation/presentation/bloc/confirmation_bloc.dart'
    as _i17;
import 'package:neobis_smart_tailor/features/order_place/presentation/bloc/order_place_bloc.dart'
    as _i7;
import 'package:neobis_smart_tailor/features/registration/data/data_source/impl/registration_data_source_impl.dart'
    as _i13;
import 'package:neobis_smart_tailor/features/registration/data/data_source/registration_data_source.dart'
    as _i12;
import 'package:neobis_smart_tailor/features/registration/data/repository/registration_repo_impl.dart'
    as _i15;
import 'package:neobis_smart_tailor/features/registration/domain/repository/registration_repo.dart'
    as _i14;
import 'package:neobis_smart_tailor/features/registration/domain/useCase/registration_use_case.dart'
    as _i16;
import 'package:neobis_smart_tailor/features/registration/presentation/bloc/registration_bloc.dart'
    as _i18;
import 'package:neobis_smart_tailor/injection/injection_module.dart' as _i19;
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
    gh.factory<_i3.Dio>(() => registerModule.dio);
    gh.singleton<_i4.AppRouter>(() => _i4.AppRouter());
    gh.singleton<_i5.AuthService>(() => _i5.AuthService());
    gh.singleton<_i6.Ticker>(() => const _i6.Ticker());
    gh.singleton<_i7.OrderPlaceBloc>(() => _i7.OrderPlaceBloc());
    await gh.singletonAsync<_i8.SharedPreferences>(
      () => registerModule.prefs,
      preResolve: true,
    );
    gh.singleton<_i9.FlutterSecureStorage>(() => registerModule.storage);
    gh.singleton<_i6.TimerBloc>(() => _i6.TimerBloc(ticker: gh<_i6.Ticker>()));
    gh.singleton<_i10.HttpClient>(() => _i10.HttpClient(gh<_i3.Dio>()));
    gh.singleton<_i11.SecureStorageService>(
        () => _i11.SecureStorageService(gh<_i9.FlutterSecureStorage>()));
    gh.factory<_i12.RegistrationDataSource>(
        () => _i13.RegistrationDataSourceImpl(gh<_i10.HttpClient>()));
    gh.factory<_i14.RegistrationRepo>(
        () => _i15.RegistrationRepoImpl(gh<_i12.RegistrationDataSource>()));
    gh.singleton<_i16.RegistrationUseCase>(
        () => _i16.RegistrationUseCase(repo: gh<_i14.RegistrationRepo>()));
    gh.singleton<_i17.ConfirmationBloc>(() => _i17.ConfirmationBloc(
        registrationUseCase: gh<_i16.RegistrationUseCase>()));
    gh.singleton<_i18.RegistrationBloc>(() => _i18.RegistrationBloc(
        registrationUseCase: gh<_i16.RegistrationUseCase>()));
    return this;
  }
}

class _$RegisterModule extends _i19.RegisterModule {}
