// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:convert' as _i8;

import 'package:dio/dio.dart' as _i3;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i7;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:neobis_smart_tailor/core/app/router/app_routes.dart' as _i49;
import 'package:neobis_smart_tailor/core/network/http_client.dart' as _i12;
import 'package:neobis_smart_tailor/core/services/auth_service.dart' as _i4;
import 'package:neobis_smart_tailor/core/services/secure_storage_service.dart'
    as _i23;
import 'package:neobis_smart_tailor/features/confirmation/data/data_source/confirmation_data_source.dart'
    as _i60;
import 'package:neobis_smart_tailor/features/confirmation/data/data_source/impl/confirmation_data_source_impl.dart'
    as _i61;
import 'package:neobis_smart_tailor/features/confirmation/data/repository/confirmation_repo_impl.dart'
    as _i74;
import 'package:neobis_smart_tailor/features/confirmation/domain/repository/confirmation_repo.dart'
    as _i73;
import 'package:neobis_smart_tailor/features/confirmation/domain/useCase/confirmation_use_case.dart'
    as _i80;
import 'package:neobis_smart_tailor/features/confirmation/domain/useCase/resend_pin_use_case%20copy.dart'
    as _i81;
import 'package:neobis_smart_tailor/features/confirmation/presentation/bloc/confirmation_bloc/confirmation_bloc.dart'
    as _i90;
import 'package:neobis_smart_tailor/features/confirmation/presentation/bloc/timer_bloc/timer_bloc.dart'
    as _i5;
import 'package:neobis_smart_tailor/features/login/data/data_source/impl/login_data_source_impl.dart'
    as _i25;
import 'package:neobis_smart_tailor/features/login/data/data_source/login_data_source.dart'
    as _i24;
import 'package:neobis_smart_tailor/features/login/data/repository/login_repo_impl.dart'
    as _i43;
import 'package:neobis_smart_tailor/features/login/domain/repository/login_repo.dart'
    as _i42;
import 'package:neobis_smart_tailor/features/login/domain/useCase/login_use_case.dart'
    as _i50;
import 'package:neobis_smart_tailor/features/login/presentation/bloc/login_bloc.dart'
    as _i75;
import 'package:neobis_smart_tailor/features/marketplace/data/data_source/marketplace_data_source.dart'
    as _i21;
import 'package:neobis_smart_tailor/features/marketplace/data/data_source/marketplace_data_source_impl/marketplace_data_source_impl.dart'
    as _i22;
import 'package:neobis_smart_tailor/features/marketplace/data/mapper/common_converter.dart'
    as _i34;
import 'package:neobis_smart_tailor/features/marketplace/data/mapper/equipment_converter.dart'
    as _i17;
import 'package:neobis_smart_tailor/features/marketplace/data/mapper/order_converter.dart'
    as _i37;
import 'package:neobis_smart_tailor/features/marketplace/data/mapper/service_converter%20copy.dart'
    as _i31;
import 'package:neobis_smart_tailor/features/marketplace/data/models/equipment_model/equipment_model.dart'
    as _i15;
import 'package:neobis_smart_tailor/features/marketplace/data/models/general_model/general_model.dart'
    as _i32;
import 'package:neobis_smart_tailor/features/marketplace/data/models/order_model/order_model.dart'
    as _i35;
import 'package:neobis_smart_tailor/features/marketplace/data/models/service_model/service_model.dart'
    as _i29;
import 'package:neobis_smart_tailor/features/marketplace/data/repository/marketplace_repo_impl.dart'
    as _i45;
import 'package:neobis_smart_tailor/features/marketplace/domain/entitys/common_entity.dart'
    as _i33;
import 'package:neobis_smart_tailor/features/marketplace/domain/entitys/equipment_entity.dart'
    as _i16;
import 'package:neobis_smart_tailor/features/marketplace/domain/entitys/order_entity.dart'
    as _i36;
import 'package:neobis_smart_tailor/features/marketplace/domain/entitys/service_entity.dart'
    as _i30;
import 'package:neobis_smart_tailor/features/marketplace/domain/repository/marketplace_repo.dart'
    as _i44;
import 'package:neobis_smart_tailor/features/marketplace/domain/use_case/get_equipments_use_case.dart'
    as _i46;
import 'package:neobis_smart_tailor/features/marketplace/domain/use_case/get_orders_use_case.dart'
    as _i47;
import 'package:neobis_smart_tailor/features/marketplace/domain/use_case/get_services_ude_case.dart'
    as _i48;
import 'package:neobis_smart_tailor/features/marketplace/presentation/bloc/marketplace_bloc.dart'
    as _i51;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/equipment_detail_screen/data/data_source/equipment_detail_data_source.dart'
    as _i66;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/equipment_detail_screen/data/data_source/equipment_detail_data_source_impl/marketplace_data_source_impl.dart'
    as _i67;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/equipment_detail_screen/data/mapper/equipment_converter.dart'
    as _i28;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/equipment_detail_screen/data/models/equipment_detail_model/equipment_detail_model.dart'
    as _i26;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/equipment_detail_screen/data/repository/equipment_detail_repo_impl.dart'
    as _i72;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/equipment_detail_screen/domain/entitys/equipment_detail_entity.dart'
    as _i27;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/equipment_detail_screen/domain/repository/equipment_detail_repo.dart'
    as _i71;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/equipment_detail_screen/domain/use_case/buy_equipment_use_case%20copy.dart'
    as _i89;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/equipment_detail_screen/domain/use_case/get_equipmentby_id_use_case.dart'
    as _i88;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/equipment_detail_screen/presentation/bloc/equipment_detail_bloc.dart'
    as _i93;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/order_detail_screen/data/data_source/marketplace_detail_data_source_impl/order_data_source_impl.dart'
    as _i14;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/order_detail_screen/data/data_source/order_detail_data_source.dart'
    as _i13;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/order_detail_screen/data/mapper/order_converter.dart'
    as _i20;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/order_detail_screen/data/models/order_detail_model/order_detail_model.dart'
    as _i18;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/order_detail_screen/data/repository/order_detail_repo_impl.dart'
    as _i57;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/order_detail_screen/domain/entitys/order_detail_entity.dart'
    as _i19;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/order_detail_screen/domain/repository/order_detail_repo.dart'
    as _i56;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/order_detail_screen/domain/use_case/get_order_by_id_use_case.dart'
    as _i58;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/order_detail_screen/domain/use_case/request_to_execute_use_case%20copy.dart'
    as _i59;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/order_detail_screen/presentation/bloc/order_detail_bloc.dart'
    as _i76;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/service_detail_screen/data/data_source/marketplace_detail_data_source_impl/service_detail_data_source_impl.dart'
    as _i65;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/service_detail_screen/data/data_source/service_detail_data_source.dart'
    as _i64;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/service_detail_screen/data/mapper/service_converter%20copy.dart'
    as _i11;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/service_detail_screen/data/models/service_detail_model/service_detail_model.dart'
    as _i9;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/service_detail_screen/data/repository/service_detail_repo_impl.dart'
    as _i87;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/service_detail_screen/domain/entitys/service_detail_entity.dart'
    as _i10;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/service_detail_screen/domain/repository/service_detail_repo.dart'
    as _i86;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/service_detail_screen/domain/use_case/get_service_by_id_use_case.dart'
    as _i92;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/service_detail_screen/presentation/bloc/service_detail_bloc.dart'
    as _i94;
import 'package:neobis_smart_tailor/features/order_place/data/data_source/impl/order_place_data_source_impl.dart'
    as _i55;
import 'package:neobis_smart_tailor/features/order_place/data/data_source/order_place_data_source.dart'
    as _i54;
import 'package:neobis_smart_tailor/features/order_place/data/repository/order_place_repo_impl.dart'
    as _i63;
import 'package:neobis_smart_tailor/features/order_place/domain/repository/order_place_repo.dart'
    as _i62;
import 'package:neobis_smart_tailor/features/order_place/domain/useCase/create_equipment_use_case.dart'
    as _i82;
import 'package:neobis_smart_tailor/features/order_place/domain/useCase/create_order_use_case.dart'
    as _i83;
import 'package:neobis_smart_tailor/features/order_place/domain/useCase/create_service_use_case.dart'
    as _i84;
import 'package:neobis_smart_tailor/features/order_place/presentation/bloc/order_place_bloc.dart'
    as _i85;
import 'package:neobis_smart_tailor/features/profile/data/data_source/remote/profile_data_source.dart'
    as _i40;
import 'package:neobis_smart_tailor/features/profile/data/data_source/remote/profile_data_source_impl/profile_data_source_impl.dart'
    as _i41;
import 'package:neobis_smart_tailor/features/profile/data/repository/profile_repo_impl.dart'
    as _i53;
import 'package:neobis_smart_tailor/features/profile/domain/repository/profile_repo.dart'
    as _i52;
import 'package:neobis_smart_tailor/features/profile/domain/use_case/get_profile_info_use_case.dart'
    as _i77;
import 'package:neobis_smart_tailor/features/profile/domain/use_case/sign_out_use_case.dart'
    as _i78;
import 'package:neobis_smart_tailor/features/profile/presentation/bloc/profile_bloc.dart'
    as _i91;
import 'package:neobis_smart_tailor/features/registration/data/data_source/impl/registration_data_source_impl.dart'
    as _i39;
import 'package:neobis_smart_tailor/features/registration/data/data_source/registration_data_source.dart'
    as _i38;
import 'package:neobis_smart_tailor/features/registration/data/repository/registration_repo_impl.dart'
    as _i69;
import 'package:neobis_smart_tailor/features/registration/domain/repository/registration_repo.dart'
    as _i68;
import 'package:neobis_smart_tailor/features/registration/domain/useCase/registration_use_case.dart'
    as _i70;
import 'package:neobis_smart_tailor/features/registration/presentation/bloc/registration_bloc.dart'
    as _i79;
import 'package:neobis_smart_tailor/injection/injection_module.dart' as _i95;
import 'package:shared_preferences/shared_preferences.dart' as _i6;

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
    await gh.singletonAsync<_i6.SharedPreferences>(
      () => registerModule.prefs,
      preResolve: true,
    );
    gh.singleton<_i7.FlutterSecureStorage>(() => registerModule.storage);
    gh.factory<_i8.Converter<_i9.ServiceDetailModel, _i10.ServiceDetailEntity>>(
        () => _i11.ServiceDetailMapper());
    gh.singleton<_i12.HttpClient>(() => _i12.HttpClient(gh<_i3.Dio>()));
    gh.factory<_i13.OrderDetailDataSource>(
        () => _i14.OrderDetailDataSourceImpl(gh<_i12.HttpClient>()));
    gh.factory<_i8.Converter<_i15.EquipmentModel, _i16.EquipmentEntity>>(
        () => _i17.EquipmentMapper());
    gh.factory<_i8.Converter<_i18.OrderDetailModel, _i19.OrderDetailEntity>>(
        () => _i20.OrderDetailMapper());
    gh.factory<_i21.MarketplaceDataSource>(
        () => _i22.MarketplaceDataSourceImpl(gh<_i12.HttpClient>()));
    gh.singleton<_i5.TimerBloc>(() => _i5.TimerBloc(ticker: gh<_i5.Ticker>()));
    gh.singleton<_i23.SecureStorageService>(
        () => _i23.SecureStorageService(gh<_i7.FlutterSecureStorage>()));
    gh.factory<_i24.LoginDataSource>(
        () => _i25.LoginDataSourceImpl(gh<_i12.HttpClient>()));
    gh.factory<
        _i8.Converter<_i26.EquipmentDetailModel,
            _i27.EquipmentDetailEntity>>(() => _i28.EquipmentDetailMapper());
    gh.factory<_i8.Converter<_i29.ServiceModel, _i30.ServiceEntity>>(
        () => _i31.RecipeHomeMapper());
    gh.factory<_i8.Converter<_i32.GeneralOrderModel, _i33.GeneralEntity>>(
        () => _i34.EquipmentMapper());
    gh.factory<_i8.Converter<_i35.OrderModel, _i36.OrderEntity>>(
        () => _i37.OrderMapper());
    gh.factory<_i38.RegistrationDataSource>(
        () => _i39.RegistrationDataSourceImpl(gh<_i12.HttpClient>()));
    gh.factory<_i40.ProfileDataSource>(
        () => _i41.ProfileDataSourceImpl(gh<_i12.HttpClient>()));
    gh.factory<_i42.LoginRepo>(
        () => _i43.LoginRepoImpl(gh<_i24.LoginDataSource>()));
    gh.factory<_i44.MarketplaceRepo>(() => _i45.MarketplaceRepoImpl(
          gh<_i21.MarketplaceDataSource>(),
          gh<_i8.Converter<_i32.GeneralOrderModel, _i33.GeneralEntity>>(),
        ));
    gh.singleton<_i46.GetEuipmentsUseCase>(
        () => _i46.GetEuipmentsUseCase(repo: gh<_i44.MarketplaceRepo>()));
    gh.singleton<_i47.GetOrdersUseCase>(
        () => _i47.GetOrdersUseCase(repo: gh<_i44.MarketplaceRepo>()));
    gh.singleton<_i48.GetServicesUseCase>(
        () => _i48.GetServicesUseCase(repo: gh<_i44.MarketplaceRepo>()));
    gh.singleton<_i49.AppRouter>(() => _i49.AppRouter(gh<_i4.AuthService>()));
    gh.singleton<_i50.LoginUseCase>(
        () => _i50.LoginUseCase(repo: gh<_i42.LoginRepo>()));
    gh.singleton<_i51.MarketplaceBloc>(() => _i51.MarketplaceBloc(
          gh<_i46.GetEuipmentsUseCase>(),
          gh<_i47.GetOrdersUseCase>(),
          gh<_i48.GetServicesUseCase>(),
        ));
    gh.factory<_i52.ProfileRepo>(() => _i53.ProfileRepoImpl(
          gh<_i40.ProfileDataSource>(),
          gh<_i4.AuthService>(),
        ));
    gh.factory<_i54.OrderPlaceDataSource>(() => _i55.OrderPlaceDataSourceImpl(
          gh<_i12.HttpClient>(),
          gh<_i4.AuthService>(),
        ));
    gh.factory<_i56.OrderDetailRepo>(() => _i57.OrderDetailRepoImpl(
          gh<_i13.OrderDetailDataSource>(),
          gh<_i8.Converter<_i18.OrderDetailModel, _i19.OrderDetailEntity>>(),
        ));
    gh.singleton<_i58.GetOrderByIdUseCase>(
        () => _i58.GetOrderByIdUseCase(repo: gh<_i56.OrderDetailRepo>()));
    gh.singleton<_i59.RequestToExecuteUseCase>(
        () => _i59.RequestToExecuteUseCase(repo: gh<_i56.OrderDetailRepo>()));
    gh.factory<_i60.ConfirmationDataSource>(
        () => _i61.ConfirmationDataSourceImpl(gh<_i12.HttpClient>()));
    gh.factory<_i62.OrderPlaceRepo>(
        () => _i63.CreateOrderRepoImpl(gh<_i54.OrderPlaceDataSource>()));
    gh.factory<_i64.ServiceDetailDataSource>(
        () => _i65.ServiceDetailDataSourceImpl(gh<_i12.HttpClient>()));
    gh.factory<_i66.EquipmentDetailDataSource>(
        () => _i67.EquipmentDetailDataSourceImpl(gh<_i12.HttpClient>()));
    gh.factory<_i68.RegistrationRepo>(
        () => _i69.RegistrationRepoImpl(gh<_i38.RegistrationDataSource>()));
    gh.singleton<_i70.RegistrationUseCase>(
        () => _i70.RegistrationUseCase(repo: gh<_i68.RegistrationRepo>()));
    gh.factory<_i71.EquipmentDetailRepo>(() => _i72.EquipmentDetailRepoImpl(
          gh<_i66.EquipmentDetailDataSource>(),
          gh<
              _i8.Converter<_i26.EquipmentDetailModel,
                  _i27.EquipmentDetailEntity>>(),
        ));
    gh.factory<_i73.ConfirmationRepo>(() => _i74.ConfirmationRepoImpl(
          gh<_i60.ConfirmationDataSource>(),
          gh<_i4.AuthService>(),
        ));
    gh.factory<_i75.LoginBloc>(
        () => _i75.LoginBloc(loginUseCase: gh<_i50.LoginUseCase>()));
    gh.singleton<_i76.OrderDetailBloc>(() => _i76.OrderDetailBloc(
          gh<_i58.GetOrderByIdUseCase>(),
          gh<_i59.RequestToExecuteUseCase>(),
        ));
    gh.singleton<_i77.GetProfileInfoUseCase>(
        () => _i77.GetProfileInfoUseCase(repo: gh<_i52.ProfileRepo>()));
    gh.singleton<_i78.SignOutUseCase>(
        () => _i78.SignOutUseCase(repo: gh<_i52.ProfileRepo>()));
    gh.factory<_i79.RegistrationBloc>(() => _i79.RegistrationBloc(
        registrationUseCase: gh<_i70.RegistrationUseCase>()));
    gh.singleton<_i80.ConfirmationUseCase>(
        () => _i80.ConfirmationUseCase(repo: gh<_i73.ConfirmationRepo>()));
    gh.singleton<_i81.ResendPinUseCase>(
        () => _i81.ResendPinUseCase(repo: gh<_i73.ConfirmationRepo>()));
    gh.singleton<_i82.CreateEquipmentUseCase>(
        () => _i82.CreateEquipmentUseCase(repo: gh<_i62.OrderPlaceRepo>()));
    gh.singleton<_i83.CreateOrderUseCase>(
        () => _i83.CreateOrderUseCase(repo: gh<_i62.OrderPlaceRepo>()));
    gh.singleton<_i84.CreateServiceUseCase>(
        () => _i84.CreateServiceUseCase(repo: gh<_i62.OrderPlaceRepo>()));
    gh.singleton<_i85.OrderPlaceBloc>(() => _i85.OrderPlaceBloc(
          gh<_i82.CreateEquipmentUseCase>(),
          gh<_i84.CreateServiceUseCase>(),
          gh<_i83.CreateOrderUseCase>(),
        ));
    gh.factory<_i86.ServiceDetailRepo>(() => _i87.ServiceDetailRepoImpl(
          gh<_i64.ServiceDetailDataSource>(),
          gh<_i8.Converter<_i9.ServiceDetailModel, _i10.ServiceDetailEntity>>(),
        ));
    gh.singleton<_i88.GetEuipmentByIdUseCase>(() =>
        _i88.GetEuipmentByIdUseCase(repo: gh<_i71.EquipmentDetailRepo>()));
    gh.singleton<_i89.BuyEquipmentIdUseCase>(
        () => _i89.BuyEquipmentIdUseCase(repo: gh<_i71.EquipmentDetailRepo>()));
    gh.singleton<_i90.ConfirmationBloc>(() => _i90.ConfirmationBloc(
          gh<_i80.ConfirmationUseCase>(),
          gh<_i81.ResendPinUseCase>(),
        ));
    gh.factory<_i91.ProfileBloc>(() => _i91.ProfileBloc(
          signOutUseCase: gh<_i78.SignOutUseCase>(),
          getProfileInfoUseCase: gh<_i77.GetProfileInfoUseCase>(),
        ));
    gh.singleton<_i92.GetServiceByIdUseCase>(
        () => _i92.GetServiceByIdUseCase(repo: gh<_i86.ServiceDetailRepo>()));
    gh.singleton<_i93.EquipmentDetailBloc>(() => _i93.EquipmentDetailBloc(
          gh<_i88.GetEuipmentByIdUseCase>(),
          gh<_i89.BuyEquipmentIdUseCase>(),
        ));
    gh.singleton<_i94.ServiceDetailBloc>(
        () => _i94.ServiceDetailBloc(gh<_i92.GetServiceByIdUseCase>()));
    return this;
  }
}

class _$RegisterModule extends _i95.RegisterModule {}
