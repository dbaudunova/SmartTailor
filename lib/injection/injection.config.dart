// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i3;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i8;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:neobis_smart_tailor/core/app/router/app_routes.dart' as _i17;
import 'package:neobis_smart_tailor/core/network/http_client.dart' as _i9;
import 'package:neobis_smart_tailor/core/services/auth_service.dart' as _i4;
import 'package:neobis_smart_tailor/core/services/secure_storage_service.dart'
    as _i10;
import 'package:neobis_smart_tailor/features/confirmation/data/data_source/confirmation_data_source.dart'
    as _i19;
import 'package:neobis_smart_tailor/features/confirmation/data/data_source/impl/confirmation_data_source_impl.dart'
    as _i20;
import 'package:neobis_smart_tailor/features/confirmation/data/repository/confirmation_repo_impl.dart'
    as _i25;
import 'package:neobis_smart_tailor/features/confirmation/domain/repository/confirmation_repo.dart'
    as _i24;
import 'package:neobis_smart_tailor/features/confirmation/domain/useCase/confirmation_use_case.dart'
    as _i28;
import 'package:neobis_smart_tailor/features/confirmation/domain/useCase/resend_pin_use_case%20copy.dart'
    as _i29;
import 'package:neobis_smart_tailor/features/confirmation/presentation/bloc/confirmation_bloc/confirmation_bloc.dart'
    as _i30;
import 'package:neobis_smart_tailor/features/confirmation/presentation/bloc/timer_bloc/timer_bloc.dart'
    as _i5;
import 'package:neobis_smart_tailor/features/login/data/data_source/impl/login_data_source_impl.dart'
    as _i12;
import 'package:neobis_smart_tailor/features/login/data/data_source/login_data_source.dart'
    as _i11;
import 'package:neobis_smart_tailor/features/login/data/repository/login_repo_impl.dart'
    as _i16;
import 'package:neobis_smart_tailor/features/login/domain/repository/login_repo.dart'
    as _i15;
import 'package:neobis_smart_tailor/features/login/domain/useCase/login_use_case.dart'
    as _i18;
import 'package:neobis_smart_tailor/features/login/presentation/bloc/login_bloc.dart'
    as _i26;
import 'package:neobis_smart_tailor/features/order_place/presentation/bloc/order_place_bloc.dart'
    as _i6;
import 'package:neobis_smart_tailor/features/registration/data/data_source/impl/registration_data_source_impl.dart'
    as _i14;
import 'package:neobis_smart_tailor/features/registration/data/data_source/registration_data_source.dart'
    as _i13;
import 'package:neobis_smart_tailor/features/registration/data/repository/registration_repo_impl.dart'
    as _i22;
import 'package:neobis_smart_tailor/features/registration/domain/repository/registration_repo.dart'
    as _i21;
import 'package:neobis_smart_tailor/features/registration/domain/useCase/registration_use_case.dart'
    as _i23;
import 'package:neobis_smart_tailor/features/registration/presentation/bloc/registration_bloc.dart'
    as _i27;
import 'package:neobis_smart_tailor/injection/injection_module.dart' as _i31;
import 'package:shared_preferences/shared_preferences.dart' as _i7;

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
    gh.singleton<_i4.AuthService>(() => _i4.AuthService());
    gh.singleton<_i5.Ticker>(() => const _i5.Ticker());
    gh.singleton<_i6.OrderPlaceBloc>(() => _i6.OrderPlaceBloc());
    await gh.singletonAsync<_i7.SharedPreferences>(
      () => registerModule.prefs,
      preResolve: true,
    );
    gh.singleton<_i8.FlutterSecureStorage>(() => registerModule.storage);
    gh.singleton<_i9.HttpClient>(() => _i9.HttpClient(gh<_i3.Dio>()));
    gh.singleton<_i5.TimerBloc>(() => _i5.TimerBloc(ticker: gh<_i5.Ticker>()));
    gh.singleton<_i10.SecureStorageService>(
        () => _i10.SecureStorageService(gh<_i8.FlutterSecureStorage>()));
    gh.factory<_i11.LoginDataSource>(
        () => _i12.LoginDataSourceImpl(gh<_i9.HttpClient>()));
    gh.factory<_i13.RegistrationDataSource>(
        () => _i14.RegistrationDataSourceImpl(gh<_i9.HttpClient>()));
    gh.factory<_i15.LoginRepo>(
        () => _i16.LoginRepoImpl(gh<_i11.LoginDataSource>()));
    gh.singleton<_i17.AppRouter>(() => _i17.AppRouter(gh<_i4.AuthService>()));
    gh.singleton<_i18.LoginUseCase>(
        () => _i18.LoginUseCase(repo: gh<_i15.LoginRepo>()));
    gh.factory<_i19.ConfirmationDataSource>(
        () => _i20.ConfirmationDataSourceImpl(gh<_i9.HttpClient>()));
    gh.factory<_i21.RegistrationRepo>(
        () => _i22.RegistrationRepoImpl(gh<_i13.RegistrationDataSource>()));
    gh.singleton<_i23.RegistrationUseCase>(
        () => _i23.RegistrationUseCase(repo: gh<_i21.RegistrationRepo>()));
    gh.factory<_i24.ConfirmationRepo>(() => _i25.ConfirmationRepoImpl(
          gh<_i19.ConfirmationDataSource>(),
          gh<_i4.AuthService>(),
        ));
    gh.factory<_i26.LoginBloc>(
        () => _i26.LoginBloc(loginUseCase: gh<_i18.LoginUseCase>()));
    gh.factory<_i27.RegistrationBloc>(() => _i27.RegistrationBloc(
        registrationUseCase: gh<_i23.RegistrationUseCase>()));
    gh.singleton<_i28.ConfirmationUseCase>(
        () => _i28.ConfirmationUseCase(repo: gh<_i24.ConfirmationRepo>()));
    gh.singleton<_i29.ResendPinUseCase>(
        () => _i29.ResendPinUseCase(repo: gh<_i24.ConfirmationRepo>()));
    gh.singleton<_i30.ConfirmationBloc>(() => _i30.ConfirmationBloc(
          gh<_i28.ConfirmationUseCase>(),
          gh<_i29.ResendPinUseCase>(),
        ));
    return this;
  }
}

class _$RegisterModule extends _i31.RegisterModule {}
