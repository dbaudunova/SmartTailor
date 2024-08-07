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
import 'package:neobis_smart_tailor/core/app/router/app_routes.dart' as _i43;
import 'package:neobis_smart_tailor/core/network/http_client.dart' as _i18;
import 'package:neobis_smart_tailor/core/services/auth_service.dart' as _i4;
import 'package:neobis_smart_tailor/core/services/secure_storage_service.dart'
    as _i26;
import 'package:neobis_smart_tailor/features/confirmation/data/data_source/confirmation_data_source.dart'
    as _i55;
import 'package:neobis_smart_tailor/features/confirmation/data/data_source/impl/confirmation_data_source_impl.dart'
    as _i56;
import 'package:neobis_smart_tailor/features/confirmation/data/repository/confirmation_repo_impl.dart'
    as _i77;
import 'package:neobis_smart_tailor/features/confirmation/domain/repository/confirmation_repo.dart'
    as _i76;
import 'package:neobis_smart_tailor/features/confirmation/domain/useCase/confirmation_use_case.dart'
    as _i91;
import 'package:neobis_smart_tailor/features/confirmation/domain/useCase/resend_pin_use_case%20copy.dart'
    as _i92;
import 'package:neobis_smart_tailor/features/confirmation/presentation/bloc/confirmation_bloc/confirmation_bloc.dart'
    as _i105;
import 'package:neobis_smart_tailor/features/confirmation/presentation/bloc/timer_bloc/timer_bloc.dart'
    as _i5;
import 'package:neobis_smart_tailor/features/login/data/data_source/impl/login_data_source_impl.dart'
    as _i28;
import 'package:neobis_smart_tailor/features/login/data/data_source/login_data_source.dart'
    as _i27;
import 'package:neobis_smart_tailor/features/login/data/repository/login_repo_impl.dart'
    as _i40;
import 'package:neobis_smart_tailor/features/login/domain/repository/login_repo.dart'
    as _i39;
import 'package:neobis_smart_tailor/features/login/domain/useCase/login_use_case.dart'
    as _i44;
import 'package:neobis_smart_tailor/features/login/presentation/bloc/login_bloc.dart'
    as _i78;
import 'package:neobis_smart_tailor/features/marketplace/data/data_source/marketplace_data_source.dart'
    as _i24;
import 'package:neobis_smart_tailor/features/marketplace/data/data_source/marketplace_data_source_impl/marketplace_data_source_impl.dart'
    as _i25;
import 'package:neobis_smart_tailor/features/marketplace/data/mapper/common_converter.dart'
    as _i34;
import 'package:neobis_smart_tailor/features/marketplace/data/mapper/general_responce_converter.dart'
    as _i14;
import 'package:neobis_smart_tailor/features/marketplace/data/models/general_model/general_model.dart'
    as _i32;
import 'package:neobis_smart_tailor/features/marketplace/data/models/general_responce/general_responce.dart'
    as _i12;
import 'package:neobis_smart_tailor/features/marketplace/data/repository/marketplace_repo_impl.dart'
    as _i66;
import 'package:neobis_smart_tailor/features/marketplace/domain/entitys/common_entity.dart'
    as _i33;
import 'package:neobis_smart_tailor/features/marketplace/domain/entitys/general_responce_entity.dart'
    as _i13;
import 'package:neobis_smart_tailor/features/marketplace/domain/repository/marketplace_repo.dart'
    as _i65;
import 'package:neobis_smart_tailor/features/marketplace/domain/use_case/get_equipments_use_case.dart'
    as _i80;
import 'package:neobis_smart_tailor/features/marketplace/domain/use_case/get_orders_use_case.dart'
    as _i81;
import 'package:neobis_smart_tailor/features/marketplace/domain/use_case/get_services_ude_case.dart'
    as _i82;
import 'package:neobis_smart_tailor/features/marketplace/presentation/bloc/marketplace_bloc.dart'
    as _i94;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/equipment_detail_screen/data/data_source/equipment_detail_data_source.dart'
    as _i63;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/equipment_detail_screen/data/data_source/equipment_detail_data_source_impl/marketplace_data_source_impl.dart'
    as _i64;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/equipment_detail_screen/data/mapper/equipment_converter.dart'
    as _i31;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/equipment_detail_screen/data/models/equipment_detail_model/equipment_detail_model.dart'
    as _i29;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/equipment_detail_screen/data/repository/equipment_detail_repo_impl.dart'
    as _i73;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/equipment_detail_screen/domain/entitys/equipment_detail_entity.dart'
    as _i30;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/equipment_detail_screen/domain/repository/equipment_detail_repo.dart'
    as _i72;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/equipment_detail_screen/domain/use_case/buy_equipment_use_case%20copy.dart'
    as _i101;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/equipment_detail_screen/domain/use_case/get_equipmentby_id_use_case.dart'
    as _i102;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/equipment_detail_screen/presentation/bloc/equipment_detail_bloc.dart'
    as _i111;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/order_detail_screen/data/data_source/marketplace_detail_data_source_impl/order_data_source_impl.dart'
    as _i20;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/order_detail_screen/data/data_source/order_detail_data_source.dart'
    as _i19;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/order_detail_screen/data/mapper/order_converter.dart'
    as _i23;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/order_detail_screen/data/models/order_detail_model/order_detail_model.dart'
    as _i21;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/order_detail_screen/data/repository/order_detail_repo_impl.dart'
    as _i52;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/order_detail_screen/domain/entitys/order_detail_entity.dart'
    as _i22;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/order_detail_screen/domain/repository/order_detail_repo.dart'
    as _i51;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/order_detail_screen/domain/use_case/get_order_by_id_use_case.dart'
    as _i53;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/order_detail_screen/domain/use_case/request_to_execute_use_case%20copy.dart'
    as _i54;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/order_detail_screen/presentation/bloc/order_detail_bloc.dart'
    as _i79;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/service_detail_screen/data/data_source/marketplace_detail_data_source_impl/service_detail_data_source_impl.dart'
    as _i62;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/service_detail_screen/data/data_source/service_detail_data_source.dart'
    as _i61;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/service_detail_screen/data/mapper/service_converter%20copy.dart'
    as _i11;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/service_detail_screen/data/models/service_detail_model/service_detail_model.dart'
    as _i9;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/service_detail_screen/data/repository/service_detail_repo_impl.dart'
    as _i100;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/service_detail_screen/domain/entitys/service_detail_entity.dart'
    as _i10;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/service_detail_screen/domain/repository/service_detail_repo.dart'
    as _i99;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/service_detail_screen/domain/use_case/get_service_by_id_use_case.dart'
    as _i110;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/service_detail_screen/presentation/bloc/service_detail_bloc.dart'
    as _i112;
import 'package:neobis_smart_tailor/features/order_place/data/data_source/impl/order_place_data_source_impl.dart'
    as _i50;
import 'package:neobis_smart_tailor/features/order_place/data/data_source/order_place_data_source.dart'
    as _i49;
import 'package:neobis_smart_tailor/features/order_place/data/repository/order_place_repo_impl.dart'
    as _i60;
import 'package:neobis_smart_tailor/features/order_place/domain/repository/order_place_repo.dart'
    as _i59;
import 'package:neobis_smart_tailor/features/order_place/domain/useCase/create_equipment_use_case.dart'
    as _i95;
import 'package:neobis_smart_tailor/features/order_place/domain/useCase/create_order_use_case.dart'
    as _i96;
import 'package:neobis_smart_tailor/features/order_place/domain/useCase/create_service_use_case.dart'
    as _i97;
import 'package:neobis_smart_tailor/features/order_place/presentation/bloc/order_place_bloc.dart'
    as _i98;
import 'package:neobis_smart_tailor/features/organization/pages/create_organization/data/data_source/create_organization_data_source.dart'
    as _i45;
import 'package:neobis_smart_tailor/features/organization/pages/create_organization/data/data_source/impl/create_organization_data_source_impl.dart'
    as _i46;
import 'package:neobis_smart_tailor/features/organization/pages/create_organization/data/repository/create_organization_repo_impl.dart'
    as _i58;
import 'package:neobis_smart_tailor/features/organization/pages/create_organization/domain/repository/create_organization_repo.dart'
    as _i57;
import 'package:neobis_smart_tailor/features/organization/pages/create_organization/domain/use_case/create_organization_use_case.dart'
    as _i93;
import 'package:neobis_smart_tailor/features/organization/pages/create_organization/presentation/create_organization_bloc/create_organization_bloc.dart'
    as _i108;
import 'package:neobis_smart_tailor/features/organization/pages/invite_employee/data/data_source/impl/invite_employee_data_source_impl.dart'
    as _i75;
import 'package:neobis_smart_tailor/features/organization/pages/invite_employee/data/data_source/invite_employee_data_source.dart'
    as _i74;
import 'package:neobis_smart_tailor/features/organization/pages/invite_employee/data/repository/invite_employee_repo_impl.dart'
    as _i89;
import 'package:neobis_smart_tailor/features/organization/pages/invite_employee/domain/entitys/_entity.dart'
    as _i16;
import 'package:neobis_smart_tailor/features/organization/pages/invite_employee/domain/repository/invite_employee_repo.dart'
    as _i88;
import 'package:neobis_smart_tailor/features/organization/pages/invite_employee/domain/use_case/invite_employee_use_case.dart'
    as _i103;
import 'package:neobis_smart_tailor/features/organization/pages/invite_employee/presentation/bloc/invite_employee_bloc.dart'
    as _i109;
import 'package:neobis_smart_tailor/features/organization/pages/organization/data/converter/organization_info_converter.dart'
    as _i17;
import 'package:neobis_smart_tailor/features/organization/pages/organization/data/data_source/impl/organization_data_source_impl.dart'
    as _i42;
import 'package:neobis_smart_tailor/features/organization/pages/organization/data/data_source/organization_data_source.dart'
    as _i41;
import 'package:neobis_smart_tailor/features/organization/pages/organization/data/models/organization_info_model/organization_info_model.dart'
    as _i15;
import 'package:neobis_smart_tailor/features/organization/pages/organization/data/repository/organization_repo_impl.dart'
    as _i71;
import 'package:neobis_smart_tailor/features/organization/pages/organization/domain/repository/organization_repo.dart'
    as _i70;
import 'package:neobis_smart_tailor/features/organization/pages/organization/domain/use_case/get_profile_use_case.dart'
    as _i104;
import 'package:neobis_smart_tailor/features/organization/pages/organization/presentation/bloc/organization_bloc.dart'
    as _i106;
import 'package:neobis_smart_tailor/features/profile/data/data_source/remote/profile_data_source.dart'
    as _i37;
import 'package:neobis_smart_tailor/features/profile/data/data_source/remote/profile_data_source_impl/profile_data_source_impl.dart'
    as _i38;
import 'package:neobis_smart_tailor/features/profile/data/repository/profile_repo_impl.dart'
    as _i48;
import 'package:neobis_smart_tailor/features/profile/domain/repository/profile_repo.dart'
    as _i47;
import 'package:neobis_smart_tailor/features/profile/domain/use_case/edit_profile_info_use_case.dart'
    as _i83;
import 'package:neobis_smart_tailor/features/profile/domain/use_case/get_profile_info_use_case.dart'
    as _i84;
import 'package:neobis_smart_tailor/features/profile/domain/use_case/send_subscription_use_case.dart'
    as _i85;
import 'package:neobis_smart_tailor/features/profile/domain/use_case/sign_out_use_case.dart'
    as _i86;
import 'package:neobis_smart_tailor/features/profile/domain/use_case/upload_image_use_case.dart'
    as _i87;
import 'package:neobis_smart_tailor/features/profile/presentation/bloc/profile_bloc.dart'
    as _i107;
import 'package:neobis_smart_tailor/features/registration/data/data_source/impl/registration_data_source_impl.dart'
    as _i36;
import 'package:neobis_smart_tailor/features/registration/data/data_source/registration_data_source.dart'
    as _i35;
import 'package:neobis_smart_tailor/features/registration/data/repository/registration_repo_impl.dart'
    as _i68;
import 'package:neobis_smart_tailor/features/registration/domain/repository/registration_repo.dart'
    as _i67;
import 'package:neobis_smart_tailor/features/registration/domain/useCase/registration_use_case.dart'
    as _i69;
import 'package:neobis_smart_tailor/features/registration/presentation/bloc/registration_bloc.dart'
    as _i90;
import 'package:neobis_smart_tailor/injection/injection_module.dart' as _i113;
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
    gh.factory<
        _i8.Converter<_i12.GeneralResponceModel,
            _i13.GeneralResponceEntity>>(() => _i14.GeneralResponceMapper());
    gh.factory<
        _i8.Converter<_i15.OrganizationInfoModel,
            _i16.OrganizationInfoEntity>>(() => _i17.GeneralResponceMapper());
    gh.singleton<_i18.HttpClient>(() => _i18.HttpClient(gh<_i3.Dio>()));
    gh.factory<_i19.OrderDetailDataSource>(
        () => _i20.OrderDetailDataSourceImpl(gh<_i18.HttpClient>()));
    gh.factory<_i8.Converter<_i21.OrderDetailModel, _i22.OrderDetailEntity>>(
        () => _i23.OrderDetailMapper());
    gh.factory<_i24.MarketplaceDataSource>(
        () => _i25.MarketplaceDataSourceImpl(gh<_i18.HttpClient>()));
    gh.singleton<_i5.TimerBloc>(() => _i5.TimerBloc(ticker: gh<_i5.Ticker>()));
    gh.singleton<_i26.SecureStorageService>(
        () => _i26.SecureStorageService(gh<_i7.FlutterSecureStorage>()));
    gh.factory<_i27.LoginDataSource>(
        () => _i28.LoginDataSourceImpl(gh<_i18.HttpClient>()));
    gh.factory<
        _i8.Converter<_i29.EquipmentDetailModel,
            _i30.EquipmentDetailEntity>>(() => _i31.EquipmentDetailMapper());
    gh.factory<_i8.Converter<_i32.GeneralOrderModel, _i33.GeneralEntity>>(
        () => _i34.EquipmentMapper());
    gh.factory<_i35.RegistrationDataSource>(
        () => _i36.RegistrationDataSourceImpl(gh<_i18.HttpClient>()));
    gh.factory<_i37.ProfileDataSource>(
        () => _i38.ProfileDataSourceImpl(gh<_i18.HttpClient>()));
    gh.factory<_i39.LoginRepo>(
        () => _i40.LoginRepoImpl(gh<_i27.LoginDataSource>()));
    gh.factory<_i41.OrganizationDataSource>(
        () => _i42.OrganizationDataSourceImpl(
              gh<_i18.HttpClient>(),
              gh<_i4.AuthService>(),
            ));
    gh.singleton<_i43.AppRouter>(() => _i43.AppRouter(gh<_i4.AuthService>()));
    gh.singleton<_i44.LoginUseCase>(
        () => _i44.LoginUseCase(repo: gh<_i39.LoginRepo>()));
    gh.factory<_i45.CreateOrganizationDataSource>(
        () => _i46.CreateOrganizationDataSourceImpl(
              gh<_i18.HttpClient>(),
              gh<_i4.AuthService>(),
            ));
    gh.factory<_i47.ProfileRepo>(() => _i48.ProfileRepoImpl(
          gh<_i37.ProfileDataSource>(),
          gh<_i4.AuthService>(),
        ));
    gh.factory<_i49.OrderPlaceDataSource>(() => _i50.OrderPlaceDataSourceImpl(
          gh<_i18.HttpClient>(),
          gh<_i4.AuthService>(),
        ));
    gh.factory<_i51.OrderDetailRepo>(() => _i52.OrderDetailRepoImpl(
          gh<_i19.OrderDetailDataSource>(),
          gh<_i8.Converter<_i21.OrderDetailModel, _i22.OrderDetailEntity>>(),
        ));
    gh.singleton<_i53.GetOrderByIdUseCase>(
        () => _i53.GetOrderByIdUseCase(repo: gh<_i51.OrderDetailRepo>()));
    gh.singleton<_i54.RequestToExecuteUseCase>(
        () => _i54.RequestToExecuteUseCase(repo: gh<_i51.OrderDetailRepo>()));
    gh.factory<_i55.ConfirmationDataSource>(
        () => _i56.ConfirmationDataSourceImpl(gh<_i18.HttpClient>()));
    gh.factory<_i57.CreateOrganizationRepo>(() =>
        _i58.CreateOrganizationRepoImpl(
            gh<_i45.CreateOrganizationDataSource>()));
    gh.factory<_i59.OrderPlaceRepo>(
        () => _i60.CreateOrderRepoImpl(gh<_i49.OrderPlaceDataSource>()));
    gh.factory<_i61.ServiceDetailDataSource>(
        () => _i62.ServiceDetailDataSourceImpl(gh<_i18.HttpClient>()));
    gh.factory<_i63.EquipmentDetailDataSource>(
        () => _i64.EquipmentDetailDataSourceImpl(gh<_i18.HttpClient>()));
    gh.factory<_i65.MarketplaceRepo>(() => _i66.MarketplaceRepoImpl(
          gh<_i24.MarketplaceDataSource>(),
          gh<
              _i8.Converter<_i12.GeneralResponceModel,
                  _i13.GeneralResponceEntity>>(),
        ));
    gh.factory<_i67.RegistrationRepo>(
        () => _i68.RegistrationRepoImpl(gh<_i35.RegistrationDataSource>()));
    gh.singleton<_i69.RegistrationUseCase>(
        () => _i69.RegistrationUseCase(repo: gh<_i67.RegistrationRepo>()));
    gh.factory<_i70.OrganizationRepo>(() => _i71.OrganizationRepoImpl(
          gh<_i41.OrganizationDataSource>(),
          gh<
              _i8.Converter<_i15.OrganizationInfoModel,
                  _i16.OrganizationInfoEntity>>(),
        ));
    gh.factory<_i72.EquipmentDetailRepo>(() => _i73.EquipmentDetailRepoImpl(
          gh<_i63.EquipmentDetailDataSource>(),
          gh<
              _i8.Converter<_i29.EquipmentDetailModel,
                  _i30.EquipmentDetailEntity>>(),
        ));
    gh.factory<_i74.InviteEmployeeDataSource>(
        () => _i75.InviteEmployeeDataSourceImpl(gh<_i18.HttpClient>()));
    gh.factory<_i76.ConfirmationRepo>(() => _i77.ConfirmationRepoImpl(
          gh<_i55.ConfirmationDataSource>(),
          gh<_i4.AuthService>(),
        ));
    gh.factory<_i78.LoginBloc>(
        () => _i78.LoginBloc(loginUseCase: gh<_i44.LoginUseCase>()));
    gh.singleton<_i79.OrderDetailBloc>(() => _i79.OrderDetailBloc(
          gh<_i53.GetOrderByIdUseCase>(),
          gh<_i54.RequestToExecuteUseCase>(),
        ));
    gh.singleton<_i80.GetEuipmentsUseCase>(
        () => _i80.GetEuipmentsUseCase(repo: gh<_i65.MarketplaceRepo>()));
    gh.singleton<_i81.GetOrdersUseCase>(
        () => _i81.GetOrdersUseCase(repo: gh<_i65.MarketplaceRepo>()));
    gh.singleton<_i82.GetServicesUseCase>(
        () => _i82.GetServicesUseCase(repo: gh<_i65.MarketplaceRepo>()));
    gh.singleton<_i83.EditProfileInfoUseCase>(
        () => _i83.EditProfileInfoUseCase(repo: gh<_i47.ProfileRepo>()));
    gh.singleton<_i84.GetProfileInfoUseCase>(
        () => _i84.GetProfileInfoUseCase(repo: gh<_i47.ProfileRepo>()));
    gh.singleton<_i85.SendSubscriptionUseCase>(
        () => _i85.SendSubscriptionUseCase(repo: gh<_i47.ProfileRepo>()));
    gh.singleton<_i86.SignOutUseCase>(
        () => _i86.SignOutUseCase(repo: gh<_i47.ProfileRepo>()));
    gh.singleton<_i87.UploadImageUseCase>(
        () => _i87.UploadImageUseCase(repo: gh<_i47.ProfileRepo>()));
    gh.factory<_i88.InviteEmployeeRepo>(
        () => _i89.InviteEmployeeRepoImpl(gh<_i74.InviteEmployeeDataSource>()));
    gh.factory<_i90.RegistrationBloc>(() => _i90.RegistrationBloc(
        registrationUseCase: gh<_i69.RegistrationUseCase>()));
    gh.singleton<_i91.ConfirmationUseCase>(
        () => _i91.ConfirmationUseCase(repo: gh<_i76.ConfirmationRepo>()));
    gh.singleton<_i92.ResendPinUseCase>(
        () => _i92.ResendPinUseCase(repo: gh<_i76.ConfirmationRepo>()));
    gh.singleton<_i93.CreateOrganizationUseCase>(() =>
        _i93.CreateOrganizationUseCase(
            repo: gh<_i57.CreateOrganizationRepo>()));
    gh.singleton<_i94.MarketplaceBloc>(() => _i94.MarketplaceBloc(
          gh<_i80.GetEuipmentsUseCase>(),
          gh<_i81.GetOrdersUseCase>(),
          gh<_i82.GetServicesUseCase>(),
        ));
    gh.singleton<_i95.CreateEquipmentUseCase>(
        () => _i95.CreateEquipmentUseCase(repo: gh<_i59.OrderPlaceRepo>()));
    gh.singleton<_i96.CreateOrderUseCase>(
        () => _i96.CreateOrderUseCase(repo: gh<_i59.OrderPlaceRepo>()));
    gh.singleton<_i97.CreateServiceUseCase>(
        () => _i97.CreateServiceUseCase(repo: gh<_i59.OrderPlaceRepo>()));
    gh.singleton<_i98.OrderPlaceBloc>(() => _i98.OrderPlaceBloc(
          gh<_i95.CreateEquipmentUseCase>(),
          gh<_i97.CreateServiceUseCase>(),
          gh<_i96.CreateOrderUseCase>(),
        ));
    gh.factory<_i99.ServiceDetailRepo>(() => _i100.ServiceDetailRepoImpl(
          gh<_i61.ServiceDetailDataSource>(),
          gh<_i8.Converter<_i9.ServiceDetailModel, _i10.ServiceDetailEntity>>(),
        ));
    gh.singleton<_i101.BuyEquipmentIdUseCase>(() =>
        _i101.BuyEquipmentIdUseCase(repo: gh<_i72.EquipmentDetailRepo>()));
    gh.singleton<_i102.GetEuipmentByIdUseCase>(() =>
        _i102.GetEuipmentByIdUseCase(repo: gh<_i72.EquipmentDetailRepo>()));
    gh.singleton<_i103.InviteEmployeeUseCase>(
        () => _i103.InviteEmployeeUseCase(repo: gh<_i88.InviteEmployeeRepo>()));
    gh.singleton<_i104.GetProfileUseCase>(
        () => _i104.GetProfileUseCase(repo: gh<_i70.OrganizationRepo>()));
    gh.singleton<_i105.ConfirmationBloc>(() => _i105.ConfirmationBloc(
          gh<_i91.ConfirmationUseCase>(),
          gh<_i92.ResendPinUseCase>(),
        ));
    gh.singleton<_i106.OrganizationBloc>(
        () => _i106.OrganizationBloc(gh<_i104.GetProfileUseCase>()));
    gh.factory<_i107.ProfileBloc>(() => _i107.ProfileBloc(
          sendSubscriptionUseCase: gh<_i85.SendSubscriptionUseCase>(),
          signOutUseCase: gh<_i86.SignOutUseCase>(),
          getProfileInfoUseCase: gh<_i84.GetProfileInfoUseCase>(),
          editProfileInfoUseCase: gh<_i83.EditProfileInfoUseCase>(),
          uploadImageUseCase: gh<_i87.UploadImageUseCase>(),
        ));
    gh.singleton<_i108.CreateOrganizationBloc>(() =>
        _i108.CreateOrganizationBloc(gh<_i93.CreateOrganizationUseCase>()));
    gh.singleton<_i109.InviteEmployeeBloc>(
        () => _i109.InviteEmployeeBloc(gh<_i103.InviteEmployeeUseCase>()));
    gh.singleton<_i110.GetServiceByIdUseCase>(
        () => _i110.GetServiceByIdUseCase(repo: gh<_i99.ServiceDetailRepo>()));
    gh.singleton<_i111.EquipmentDetailBloc>(() => _i111.EquipmentDetailBloc(
          gh<_i102.GetEuipmentByIdUseCase>(),
          gh<_i101.BuyEquipmentIdUseCase>(),
        ));
    gh.singleton<_i112.ServiceDetailBloc>(
        () => _i112.ServiceDetailBloc(gh<_i110.GetServiceByIdUseCase>()));
    return this;
  }
}

class _$RegisterModule extends _i113.RegisterModule {}
