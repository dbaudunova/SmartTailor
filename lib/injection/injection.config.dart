// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i3;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i10;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:neobis_smart_tailor/core/app/router/app_routes.dart' as _i4;
import 'package:neobis_smart_tailor/core/network/http_client.dart' as _i11;
import 'package:neobis_smart_tailor/core/services/auth_service.dart' as _i5;
import 'package:neobis_smart_tailor/core/services/secure_storage_service.dart'
    as _i12;
import 'package:neobis_smart_tailor/features/confirmation/data/data_source/confirmation_data_source.dart'
    as _i17;
import 'package:neobis_smart_tailor/features/confirmation/data/data_source/impl/confirmation_data_source_impl.dart'
    as _i18;
import 'package:neobis_smart_tailor/features/confirmation/presentation/bloc/confirmation_bloc/confirmation_bloc.dart'
    as _i6;
import 'package:neobis_smart_tailor/features/confirmation/presentation/bloc/timer_bloc/timer_bloc.dart'
    as _i7;
import 'package:neobis_smart_tailor/features/order_place/presentation/bloc/order_place_bloc.dart'
    as _i8;
import 'package:neobis_smart_tailor/features/registration/data/data_source/impl/registration_data_source_impl.dart'
    as _i14;
import 'package:neobis_smart_tailor/features/registration/data/data_source/registration_data_source.dart'
    as _i13;
import 'package:neobis_smart_tailor/features/registration/data/repository/registration_repo_impl.dart'
    as _i16;
import 'package:neobis_smart_tailor/features/registration/domain/repository/registration_repo.dart'
    as _i15;
import 'package:neobis_smart_tailor/features/registration/domain/useCase/registration_use_case.dart'
    as _i19;
import 'package:neobis_smart_tailor/features/registration/presentation/bloc/registration_bloc.dart'
    as _i20;
import 'package:neobis_smart_tailor/injection/injection_module.dart' as _i21;
import 'package:shared_preferences/shared_preferences.dart' as _i9;

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
    gh.singleton<_i6.ConfirmationBloc>(() => _i6.ConfirmationBloc());
    gh.singleton<_i7.Ticker>(() => const _i7.Ticker());
    gh.singleton<_i8.OrderPlaceBloc>(() => _i8.OrderPlaceBloc());
    await gh.singletonAsync<_i9.SharedPreferences>(
      () => registerModule.prefs,
      preResolve: true,
    );
    gh.singleton<_i10.FlutterSecureStorage>(() => registerModule.storage);
    gh.singleton<_i11.HttpClient>(() => _i11.HttpClient(gh<_i3.Dio>()));
    gh.singleton<_i7.TimerBloc>(() => _i7.TimerBloc(ticker: gh<_i7.Ticker>()));
    gh.singleton<_i12.SecureStorageService>(
        () => _i12.SecureStorageService(gh<_i10.FlutterSecureStorage>()));
    gh.factory<_i13.RegistrationDataSource>(
        () => _i14.RegistrationDataSourceImpl(gh<_i11.HttpClient>()));
    gh.factory<_i15.RegistrationRepo>(() => _i16.RegistrationRepoImpl(
          gh<_i13.RegistrationDataSource>(),
          gh<_i5.AuthService>(),
        ));
    gh.factory<_i17.ConfirmationDataSource>(
        () => _i18.ConfirmationDataSourceImpl(gh<_i11.HttpClient>()));
    gh.singleton<_i19.RegistrationUseCase>(
        () => _i19.RegistrationUseCase(repo: gh<_i15.RegistrationRepo>()));
    gh.singleton<_i20.RegistrationBloc>(() => _i20.RegistrationBloc(
        registrationUseCase: gh<_i19.RegistrationUseCase>()));
    return this;
  }
}

class _$RegisterModule extends _i21.RegisterModule {}
