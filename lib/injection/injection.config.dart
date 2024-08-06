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
import 'package:neobis_smart_tailor/core/app/router/app_routes.dart' as _i40;
import 'package:neobis_smart_tailor/core/network/http_client.dart' as _i12;
import 'package:neobis_smart_tailor/core/services/auth_service.dart' as _i4;
import 'package:neobis_smart_tailor/core/services/secure_storage_service.dart'
    as _i20;
import 'package:neobis_smart_tailor/features/confirmation/data/data_source/confirmation_data_source.dart'
    as _i51;
import 'package:neobis_smart_tailor/features/confirmation/data/data_source/impl/confirmation_data_source_impl.dart'
    as _i52;
import 'package:neobis_smart_tailor/features/confirmation/data/repository/confirmation_repo_impl.dart'
    as _i65;
import 'package:neobis_smart_tailor/features/confirmation/domain/repository/confirmation_repo.dart'
    as _i64;
import 'package:neobis_smart_tailor/features/confirmation/domain/useCase/confirmation_use_case.dart'
    as _i73;
import 'package:neobis_smart_tailor/features/confirmation/domain/useCase/resend_pin_use_case%20copy.dart'
    as _i74;
import 'package:neobis_smart_tailor/features/confirmation/presentation/bloc/confirmation_bloc/confirmation_bloc.dart'
    as _i84;
import 'package:neobis_smart_tailor/features/confirmation/presentation/bloc/timer_bloc/timer_bloc.dart'
    as _i5;
import 'package:neobis_smart_tailor/features/login/data/data_source/impl/login_data_source_impl.dart'
    as _i22;
import 'package:neobis_smart_tailor/features/login/data/data_source/login_data_source.dart'
    as _i21;
import 'package:neobis_smart_tailor/features/login/data/repository/login_repo_impl.dart'
    as _i34;
import 'package:neobis_smart_tailor/features/login/domain/repository/login_repo.dart'
    as _i33;
import 'package:neobis_smart_tailor/features/login/domain/useCase/login_use_case.dart'
    as _i41;
import 'package:neobis_smart_tailor/features/login/presentation/bloc/login_bloc.dart'
    as _i66;
import 'package:neobis_smart_tailor/features/marketplace/data/data_source/marketplace_data_source.dart'
    as _i18;
import 'package:neobis_smart_tailor/features/marketplace/data/data_source/marketplace_data_source_impl/marketplace_data_source_impl.dart'
    as _i19;
import 'package:neobis_smart_tailor/features/marketplace/data/mapper/common_converter.dart'
    as _i28;
import 'package:neobis_smart_tailor/features/marketplace/data/models/general_model/general_model.dart'
    as _i26;
import 'package:neobis_smart_tailor/features/marketplace/data/repository/marketplace_repo_impl.dart'
    as _i36;
import 'package:neobis_smart_tailor/features/marketplace/domain/entitys/common_entity.dart'
    as _i27;
import 'package:neobis_smart_tailor/features/marketplace/domain/repository/marketplace_repo.dart'
    as _i35;
import 'package:neobis_smart_tailor/features/marketplace/domain/use_case/get_equipments_use_case.dart'
    as _i37;
import 'package:neobis_smart_tailor/features/marketplace/domain/use_case/get_orders_use_case.dart'
    as _i38;
import 'package:neobis_smart_tailor/features/marketplace/domain/use_case/get_services_ude_case.dart'
    as _i39;
import 'package:neobis_smart_tailor/features/marketplace/presentation/bloc/marketplace_bloc.dart'
    as _i42;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/equipment_detail_screen/data/data_source/equipment_detail_data_source.dart'
    as _i57;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/equipment_detail_screen/data/data_source/equipment_detail_data_source_impl/marketplace_data_source_impl.dart'
    as _i58;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/equipment_detail_screen/data/mapper/equipment_converter.dart'
    as _i25;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/equipment_detail_screen/data/models/equipment_detail_model/equipment_detail_model.dart'
    as _i23;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/equipment_detail_screen/data/repository/equipment_detail_repo_impl.dart'
    as _i63;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/equipment_detail_screen/domain/entitys/equipment_detail_entity.dart'
    as _i24;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/equipment_detail_screen/domain/repository/equipment_detail_repo.dart'
    as _i62;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/equipment_detail_screen/domain/use_case/buy_equipment_use_case%20copy.dart'
    as _i82;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/equipment_detail_screen/domain/use_case/get_equipmentby_id_use_case.dart'
    as _i83;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/equipment_detail_screen/presentation/bloc/equipment_detail_bloc.dart'
    as _i86;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/order_detail_screen/data/data_source/marketplace_detail_data_source_impl/order_data_source_impl.dart'
    as _i14;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/order_detail_screen/data/data_source/order_detail_data_source.dart'
    as _i13;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/order_detail_screen/data/mapper/order_converter.dart'
    as _i17;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/order_detail_screen/data/models/order_detail_model/order_detail_model.dart'
    as _i15;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/order_detail_screen/data/repository/order_detail_repo_impl.dart'
    as _i48;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/order_detail_screen/domain/entitys/order_detail_entity.dart'
    as _i16;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/order_detail_screen/domain/repository/order_detail_repo.dart'
    as _i47;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/order_detail_screen/domain/use_case/get_order_by_id_use_case.dart'
    as _i49;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/order_detail_screen/domain/use_case/request_to_execute_use_case%20copy.dart'
    as _i50;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/order_detail_screen/presentation/bloc/order_detail_bloc.dart'
    as _i67;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/service_detail_screen/data/data_source/marketplace_detail_data_source_impl/service_detail_data_source_impl.dart'
    as _i56;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/service_detail_screen/data/data_source/service_detail_data_source.dart'
    as _i55;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/service_detail_screen/data/mapper/service_converter%20copy.dart'
    as _i11;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/service_detail_screen/data/models/service_detail_model/service_detail_model.dart'
    as _i9;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/service_detail_screen/data/repository/service_detail_repo_impl.dart'
    as _i81;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/service_detail_screen/domain/entitys/service_detail_entity.dart'
    as _i10;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/service_detail_screen/domain/repository/service_detail_repo.dart'
    as _i80;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/service_detail_screen/domain/use_case/get_service_by_id_use_case.dart'
    as _i85;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/service_detail_screen/presentation/bloc/service_detail_bloc.dart'
    as _i87;
import 'package:neobis_smart_tailor/features/order_place/data/data_source/impl/order_place_data_source_impl.dart'
    as _i46;
import 'package:neobis_smart_tailor/features/order_place/data/data_source/order_place_data_source.dart'
    as _i45;
import 'package:neobis_smart_tailor/features/order_place/data/repository/order_place_repo_impl.dart'
    as _i54;
import 'package:neobis_smart_tailor/features/order_place/domain/repository/order_place_repo.dart'
    as _i53;
import 'package:neobis_smart_tailor/features/order_place/domain/useCase/create_equipment_use_case.dart'
    as _i76;
import 'package:neobis_smart_tailor/features/order_place/domain/useCase/create_order_use_case.dart'
    as _i77;
import 'package:neobis_smart_tailor/features/order_place/domain/useCase/create_service_use_case.dart'
    as _i78;
import 'package:neobis_smart_tailor/features/order_place/presentation/bloc/order_place_bloc.dart'
    as _i79;
import 'package:neobis_smart_tailor/features/profile/data/data_source/remote/profile_data_source.dart'
    as _i31;
import 'package:neobis_smart_tailor/features/profile/data/data_source/remote/profile_data_source_impl/profile_data_source_impl.dart'
    as _i32;
import 'package:neobis_smart_tailor/features/profile/data/repository/profile_repo_impl.dart'
    as _i44;
import 'package:neobis_smart_tailor/features/profile/domain/repository/profile_repo.dart'
    as _i43;
import 'package:neobis_smart_tailor/features/profile/domain/use_case/edit_profile_info_use_case.dart'
    as _i68;
import 'package:neobis_smart_tailor/features/profile/domain/use_case/get_profile_info_use_case.dart'
    as _i69;
import 'package:neobis_smart_tailor/features/profile/domain/use_case/sign_out_use_case.dart'
    as _i70;
import 'package:neobis_smart_tailor/features/profile/domain/use_case/upload_image_use_case.dart'
    as _i71;
import 'package:neobis_smart_tailor/features/profile/presentation/bloc/profile_bloc.dart'
    as _i75;
import 'package:neobis_smart_tailor/features/registration/data/data_source/impl/registration_data_source_impl.dart'
    as _i30;
import 'package:neobis_smart_tailor/features/registration/data/data_source/registration_data_source.dart'
    as _i29;
import 'package:neobis_smart_tailor/features/registration/data/repository/registration_repo_impl.dart'
    as _i60;
import 'package:neobis_smart_tailor/features/registration/domain/repository/registration_repo.dart'
    as _i59;
import 'package:neobis_smart_tailor/features/registration/domain/useCase/registration_use_case.dart'
    as _i61;
import 'package:neobis_smart_tailor/features/registration/presentation/bloc/registration_bloc.dart'
    as _i72;
import 'package:neobis_smart_tailor/injection/injection_module.dart' as _i88;
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
    gh.factory<_i8.Converter<_i15.OrderDetailModel, _i16.OrderDetailEntity>>(
        () => _i17.OrderDetailMapper());
    gh.factory<_i18.MarketplaceDataSource>(
        () => _i19.MarketplaceDataSourceImpl(gh<_i12.HttpClient>()));
    gh.singleton<_i5.TimerBloc>(() => _i5.TimerBloc(ticker: gh<_i5.Ticker>()));
    gh.singleton<_i20.SecureStorageService>(
        () => _i20.SecureStorageService(gh<_i7.FlutterSecureStorage>()));
    gh.factory<_i21.LoginDataSource>(
        () => _i22.LoginDataSourceImpl(gh<_i12.HttpClient>()));
    gh.factory<
        _i8.Converter<_i23.EquipmentDetailModel,
            _i24.EquipmentDetailEntity>>(() => _i25.EquipmentDetailMapper());
    gh.factory<_i8.Converter<_i26.GeneralOrderModel, _i27.GeneralEntity>>(
        () => _i28.EquipmentMapper());
    gh.factory<_i29.RegistrationDataSource>(
        () => _i30.RegistrationDataSourceImpl(gh<_i12.HttpClient>()));
    gh.factory<_i31.ProfileDataSource>(
        () => _i32.ProfileDataSourceImpl(gh<_i12.HttpClient>()));
    gh.factory<_i33.LoginRepo>(
        () => _i34.LoginRepoImpl(gh<_i21.LoginDataSource>()));
    gh.factory<_i35.MarketplaceRepo>(() => _i36.MarketplaceRepoImpl(
          gh<_i18.MarketplaceDataSource>(),
          gh<_i8.Converter<_i26.GeneralOrderModel, _i27.GeneralEntity>>(),
        ));
    gh.singleton<_i37.GetEuipmentsUseCase>(
        () => _i37.GetEuipmentsUseCase(repo: gh<_i35.MarketplaceRepo>()));
    gh.singleton<_i38.GetOrdersUseCase>(
        () => _i38.GetOrdersUseCase(repo: gh<_i35.MarketplaceRepo>()));
    gh.singleton<_i39.GetServicesUseCase>(
        () => _i39.GetServicesUseCase(repo: gh<_i35.MarketplaceRepo>()));
    gh.singleton<_i40.AppRouter>(() => _i40.AppRouter(gh<_i4.AuthService>()));
    gh.singleton<_i41.LoginUseCase>(
        () => _i41.LoginUseCase(repo: gh<_i33.LoginRepo>()));
    gh.singleton<_i42.MarketplaceBloc>(() => _i42.MarketplaceBloc(
          gh<_i37.GetEuipmentsUseCase>(),
          gh<_i38.GetOrdersUseCase>(),
          gh<_i39.GetServicesUseCase>(),
        ));
    gh.factory<_i43.ProfileRepo>(() => _i44.ProfileRepoImpl(
          gh<_i31.ProfileDataSource>(),
          gh<_i4.AuthService>(),
        ));
    gh.factory<_i45.OrderPlaceDataSource>(() => _i46.OrderPlaceDataSourceImpl(
          gh<_i12.HttpClient>(),
          gh<_i4.AuthService>(),
        ));
    gh.factory<_i47.OrderDetailRepo>(() => _i48.OrderDetailRepoImpl(
          gh<_i13.OrderDetailDataSource>(),
          gh<_i8.Converter<_i15.OrderDetailModel, _i16.OrderDetailEntity>>(),
        ));
    gh.singleton<_i49.GetOrderByIdUseCase>(
        () => _i49.GetOrderByIdUseCase(repo: gh<_i47.OrderDetailRepo>()));
    gh.singleton<_i50.RequestToExecuteUseCase>(
        () => _i50.RequestToExecuteUseCase(repo: gh<_i47.OrderDetailRepo>()));
    gh.factory<_i51.ConfirmationDataSource>(
        () => _i52.ConfirmationDataSourceImpl(gh<_i12.HttpClient>()));
    gh.factory<_i53.OrderPlaceRepo>(
        () => _i54.CreateOrderRepoImpl(gh<_i45.OrderPlaceDataSource>()));
    gh.factory<_i55.ServiceDetailDataSource>(
        () => _i56.ServiceDetailDataSourceImpl(gh<_i12.HttpClient>()));
    gh.factory<_i57.EquipmentDetailDataSource>(
        () => _i58.EquipmentDetailDataSourceImpl(gh<_i12.HttpClient>()));
    gh.factory<_i59.RegistrationRepo>(
        () => _i60.RegistrationRepoImpl(gh<_i29.RegistrationDataSource>()));
    gh.singleton<_i61.RegistrationUseCase>(
        () => _i61.RegistrationUseCase(repo: gh<_i59.RegistrationRepo>()));
    gh.factory<_i62.EquipmentDetailRepo>(() => _i63.EquipmentDetailRepoImpl(
          gh<_i57.EquipmentDetailDataSource>(),
          gh<
              _i8.Converter<_i23.EquipmentDetailModel,
                  _i24.EquipmentDetailEntity>>(),
        ));
    gh.factory<_i64.ConfirmationRepo>(() => _i65.ConfirmationRepoImpl(
          gh<_i51.ConfirmationDataSource>(),
          gh<_i4.AuthService>(),
        ));
    gh.factory<_i66.LoginBloc>(
        () => _i66.LoginBloc(loginUseCase: gh<_i41.LoginUseCase>()));
    gh.singleton<_i67.OrderDetailBloc>(() => _i67.OrderDetailBloc(
          gh<_i49.GetOrderByIdUseCase>(),
          gh<_i50.RequestToExecuteUseCase>(),
        ));
    gh.singleton<_i68.EditProfileInfoUseCase>(
        () => _i68.EditProfileInfoUseCase(repo: gh<_i43.ProfileRepo>()));
    gh.singleton<_i69.GetProfileInfoUseCase>(
        () => _i69.GetProfileInfoUseCase(repo: gh<_i43.ProfileRepo>()));
    gh.singleton<_i70.SignOutUseCase>(
        () => _i70.SignOutUseCase(repo: gh<_i43.ProfileRepo>()));
    gh.singleton<_i71.UploadImageUseCase>(
        () => _i71.UploadImageUseCase(repo: gh<_i43.ProfileRepo>()));
    gh.factory<_i72.RegistrationBloc>(() => _i72.RegistrationBloc(
        registrationUseCase: gh<_i61.RegistrationUseCase>()));
    gh.singleton<_i73.ConfirmationUseCase>(
        () => _i73.ConfirmationUseCase(repo: gh<_i64.ConfirmationRepo>()));
    gh.singleton<_i74.ResendPinUseCase>(
        () => _i74.ResendPinUseCase(repo: gh<_i64.ConfirmationRepo>()));
    gh.factory<_i75.ProfileBloc>(() => _i75.ProfileBloc(
          signOutUseCase: gh<_i70.SignOutUseCase>(),
          getProfileInfoUseCase: gh<_i69.GetProfileInfoUseCase>(),
          editProfileInfoUseCase: gh<_i68.EditProfileInfoUseCase>(),
          uploadImageUseCase: gh<_i71.UploadImageUseCase>(),
        ));
    gh.singleton<_i76.CreateEquipmentUseCase>(
        () => _i76.CreateEquipmentUseCase(repo: gh<_i53.OrderPlaceRepo>()));
    gh.singleton<_i77.CreateOrderUseCase>(
        () => _i77.CreateOrderUseCase(repo: gh<_i53.OrderPlaceRepo>()));
    gh.singleton<_i78.CreateServiceUseCase>(
        () => _i78.CreateServiceUseCase(repo: gh<_i53.OrderPlaceRepo>()));
    gh.singleton<_i79.OrderPlaceBloc>(() => _i79.OrderPlaceBloc(
          gh<_i76.CreateEquipmentUseCase>(),
          gh<_i78.CreateServiceUseCase>(),
          gh<_i77.CreateOrderUseCase>(),
        ));
    gh.factory<_i80.ServiceDetailRepo>(() => _i81.ServiceDetailRepoImpl(
          gh<_i55.ServiceDetailDataSource>(),
          gh<_i8.Converter<_i9.ServiceDetailModel, _i10.ServiceDetailEntity>>(),
        ));
    gh.singleton<_i82.BuyEquipmentIdUseCase>(
        () => _i82.BuyEquipmentIdUseCase(repo: gh<_i62.EquipmentDetailRepo>()));
    gh.singleton<_i83.GetEuipmentByIdUseCase>(() =>
        _i83.GetEuipmentByIdUseCase(repo: gh<_i62.EquipmentDetailRepo>()));
    gh.singleton<_i84.ConfirmationBloc>(() => _i84.ConfirmationBloc(
          gh<_i73.ConfirmationUseCase>(),
          gh<_i74.ResendPinUseCase>(),
        ));
    gh.singleton<_i85.GetServiceByIdUseCase>(
        () => _i85.GetServiceByIdUseCase(repo: gh<_i80.ServiceDetailRepo>()));
    gh.singleton<_i86.EquipmentDetailBloc>(() => _i86.EquipmentDetailBloc(
          gh<_i83.GetEuipmentByIdUseCase>(),
          gh<_i82.BuyEquipmentIdUseCase>(),
        ));
    gh.singleton<_i87.ServiceDetailBloc>(
        () => _i87.ServiceDetailBloc(gh<_i85.GetServiceByIdUseCase>()));
    return this;
  }
}

class _$RegisterModule extends _i88.RegisterModule {}
