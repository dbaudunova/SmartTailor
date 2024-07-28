// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:convert' as _i9;

import 'package:dio/dio.dart' as _i3;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i7;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:neobis_smart_tailor/core/app/router/app_routes.dart' as _i35;
import 'package:neobis_smart_tailor/core/network/http_client.dart' as _i8;
import 'package:neobis_smart_tailor/core/services/auth_service.dart' as _i4;
import 'package:neobis_smart_tailor/core/services/secure_storage_service.dart' as _i15;
import 'package:neobis_smart_tailor/features/confirmation/data/data_source/confirmation_data_source.dart' as _i42;
import 'package:neobis_smart_tailor/features/confirmation/data/data_source/impl/confirmation_data_source_impl.dart'
    as _i43;
import 'package:neobis_smart_tailor/features/confirmation/data/repository/confirmation_repo_impl.dart' as _i50;
import 'package:neobis_smart_tailor/features/confirmation/domain/repository/confirmation_repo.dart' as _i49;
import 'package:neobis_smart_tailor/features/confirmation/domain/useCase/confirmation_use_case.dart' as _i33;
import 'package:neobis_smart_tailor/features/confirmation/domain/useCase/resend_pin_use_case%20copy.dart' as _i34;
import 'package:neobis_smart_tailor/features/confirmation/presentation/bloc/confirmation_bloc/confirmation_bloc.dart'
    as _i61;
import 'package:neobis_smart_tailor/features/confirmation/presentation/bloc/timer_bloc/timer_bloc.dart' as _i8;
import 'package:neobis_smart_tailor/features/login/data/data_source/impl/login_data_source_impl.dart' as _i17;
import 'package:neobis_smart_tailor/features/login/data/data_source/login_data_source.dart' as _i16;
import 'package:neobis_smart_tailor/features/login/data/repository/login_repo_impl.dart' as _i29;
import 'package:neobis_smart_tailor/features/login/domain/repository/login_repo.dart' as _i28;
import 'package:neobis_smart_tailor/features/login/domain/useCase/login_use_case.dart' as _i36;
import 'package:neobis_smart_tailor/features/login/presentation/bloc/login_bloc.dart' as _i51;
import 'package:neobis_smart_tailor/features/marketplace/data/data_source/marketplace_data_source.dart' as _i13;
import 'package:neobis_smart_tailor/features/marketplace/data/data_source/marketplace_data_source_impl/marketplace_data_source_impl.dart'
    as _i14;
import 'package:neobis_smart_tailor/features/marketplace/data/mapper/equipment_converter.dart' as _i12;
import 'package:neobis_smart_tailor/features/marketplace/data/mapper/order_converter.dart' as _i23;
import 'package:neobis_smart_tailor/features/marketplace/data/mapper/service_converter%20copy.dart' as _i20;
import 'package:neobis_smart_tailor/features/marketplace/data/models/equipment_model/equipment_model.dart' as _i10;
import 'package:neobis_smart_tailor/features/marketplace/data/models/order_model/order_model.dart' as _i21;
import 'package:neobis_smart_tailor/features/marketplace/data/models/service_model/service_model.dart' as _i18;
import 'package:neobis_smart_tailor/features/marketplace/data/repository/marketplace_repo_impl.dart' as _i31;
import 'package:neobis_smart_tailor/features/marketplace/domain/entitys/equipment_entity.dart' as _i11;
import 'package:neobis_smart_tailor/features/marketplace/domain/entitys/order_entity.dart' as _i22;
import 'package:neobis_smart_tailor/features/marketplace/domain/entitys/service_entity.dart' as _i19;
import 'package:neobis_smart_tailor/features/marketplace/domain/repository/marketplace_repo.dart' as _i30;
import 'package:neobis_smart_tailor/features/marketplace/domain/use_case/get_equipments_use_case.dart' as _i32;
import 'package:neobis_smart_tailor/features/marketplace/domain/use_case/get_orders_use_case.dart' as _i33;
import 'package:neobis_smart_tailor/features/marketplace/domain/use_case/get_services_ude_case.dart' as _i34;
import 'package:neobis_smart_tailor/features/marketplace/presentation/bloc/marketplace_bloc.dart' as _i37;
import 'package:neobis_smart_tailor/features/order_place/data/data_source/impl/order_place_data_source_impl.dart'
    as _i41;
import 'package:neobis_smart_tailor/features/order_place/data/data_source/order_place_data_source.dart' as _i40;
import 'package:neobis_smart_tailor/features/order_place/data/repository/order_place_repo_impl.dart' as _i45;
import 'package:neobis_smart_tailor/features/order_place/domain/repository/order_place_repo.dart' as _i44;
import 'package:neobis_smart_tailor/features/order_place/domain/useCase/create_equipment_use_case.dart' as _i56;
import 'package:neobis_smart_tailor/features/order_place/domain/useCase/create_order_use_case.dart' as _i57;
import 'package:neobis_smart_tailor/features/order_place/domain/useCase/create_service_use_case.dart' as _i58;
import 'package:neobis_smart_tailor/features/order_place/presentation/bloc/order_place_bloc.dart' as _i6;
import 'package:neobis_smart_tailor/features/profile/data/data_source/remote/profile_data_source.dart' as _i26;
import 'package:neobis_smart_tailor/features/profile/data/data_source/remote/profile_data_source_impl/profile_data_source_impl.dart'
    as _i27;
import 'package:neobis_smart_tailor/features/profile/data/repository/profile_repo_impl.dart' as _i39;
import 'package:neobis_smart_tailor/features/profile/domain/repository/profile_repo.dart' as _i21;
import 'package:neobis_smart_tailor/features/profile/domain/use_case/sign_out_use_case.dart' as _i52;
import 'package:neobis_smart_tailor/features/profile/presentation/bloc/profile_bloc.dart' as _i35;
import 'package:neobis_smart_tailor/features/registration/data/data_source/impl/registration_data_source_impl.dart'
    as _i25;
import 'package:neobis_smart_tailor/features/registration/data/data_source/registration_data_source.dart' as _i24;
import 'package:neobis_smart_tailor/features/registration/data/repository/registration_repo_impl.dart' as _i47;
import 'package:neobis_smart_tailor/features/registration/domain/repository/registration_repo.dart' as _i46;
import 'package:neobis_smart_tailor/features/registration/domain/useCase/registration_use_case.dart' as _i48;
import 'package:neobis_smart_tailor/features/registration/presentation/bloc/registration_bloc.dart' as _i32;
import 'package:neobis_smart_tailor/injection/injection_module.dart' as _i37;
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
    gh.singleton<_i10.SecureStorageService>(() => _i10.SecureStorageService(gh<_i8.FlutterSecureStorage>()));
    gh.factory<_i11.LoginDataSource>(() => _i12.LoginDataSourceImpl(gh<_i9.HttpClient>()));
    gh.factory<_i13.RegistrationDataSource>(() => _i14.RegistrationDataSourceImpl(gh<_i9.HttpClient>()));
    gh.factory<_i15.ProfileDataSource>(() => _i16.ProfileDataSourceImpl(gh<_i9.HttpClient>()));
    gh.factory<_i17.LoginRepo>(() => _i18.LoginRepoImpl(gh<_i11.LoginDataSource>()));
    gh.singleton<_i19.AppRouter>(() => _i19.AppRouter(gh<_i4.AuthService>()));
    gh.singleton<_i20.LoginUseCase>(() => _i20.LoginUseCase(repo: gh<_i17.LoginRepo>()));
    gh.factory<_i21.ProfileRepo>(() => _i22.ProfileRepoImpl(
          gh<_i15.ProfileDataSource>(),
          gh<_i4.AuthService>(),
        ));
    gh.factory<_i42.ConfirmationDataSource>(() => _i43.ConfirmationDataSourceImpl(gh<_i8.HttpClient>()));
    gh.factory<_i44.OrderPlaceRepo>(() => _i45.CreateOrderRepoImpl(gh<_i40.OrderPlaceDataSource>()));
    gh.factory<_i46.RegistrationRepo>(() => _i47.RegistrationRepoImpl(gh<_i24.RegistrationDataSource>()));
    gh.singleton<_i48.RegistrationUseCase>(() => _i48.RegistrationUseCase(repo: gh<_i46.RegistrationRepo>()));
    gh.factory<_i49.ConfirmationRepo>(() => _i50.ConfirmationRepoImpl(
          gh<_i42.ConfirmationDataSource>(),
          gh<_i4.AuthService>(),
        ));
    gh.factory<_i30.LoginBloc>(() => _i30.LoginBloc(loginUseCase: gh<_i20.LoginUseCase>()));
    gh.singleton<_i31.SignOutUseCase>(() => _i31.SignOutUseCase(repo: gh<_i21.ProfileRepo>()));
    gh.factory<_i32.RegistrationBloc>(() => _i32.RegistrationBloc(registrationUseCase: gh<_i27.RegistrationUseCase>()));
    gh.singleton<_i33.ConfirmationUseCase>(() => _i33.ConfirmationUseCase(repo: gh<_i28.ConfirmationRepo>()));
    gh.singleton<_i34.ResendPinUseCase>(() => _i34.ResendPinUseCase(repo: gh<_i28.ConfirmationRepo>()));
    gh.factory<_i35.ProfileBloc>(() => _i35.ProfileBloc(signOutUseCase: gh<_i31.SignOutUseCase>()));
    gh.singleton<_i36.ConfirmationBloc>(() => _i36.ConfirmationBloc(
          gh<_i33.ConfirmationUseCase>(),
          gh<_i34.ResendPinUseCase>(),
        ));
    return this;
  }
}

class _$RegisterModule extends _i37.RegisterModule {}
