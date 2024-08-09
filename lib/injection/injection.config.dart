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
import 'package:neobis_smart_tailor/core/app/router/app_routes.dart' as _i51;
import 'package:neobis_smart_tailor/core/network/http_client.dart' as _i24;
import 'package:neobis_smart_tailor/core/services/auth_service.dart' as _i4;
import 'package:neobis_smart_tailor/core/services/secure_storage_service.dart'
    as _i32;
import 'package:neobis_smart_tailor/features/confirmation/data/data_source/confirmation_data_source.dart'
    as _i67;
import 'package:neobis_smart_tailor/features/confirmation/data/data_source/impl/confirmation_data_source_impl.dart'
    as _i68;
import 'package:neobis_smart_tailor/features/confirmation/data/repository/confirmation_repo_impl.dart'
    as _i91;
import 'package:neobis_smart_tailor/features/confirmation/domain/repository/confirmation_repo.dart'
    as _i90;
import 'package:neobis_smart_tailor/features/confirmation/domain/useCase/confirmation_use_case.dart'
    as _i108;
import 'package:neobis_smart_tailor/features/confirmation/domain/useCase/resend_pin_use_case%20copy.dart'
    as _i109;
import 'package:neobis_smart_tailor/features/confirmation/presentation/bloc/confirmation_bloc/confirmation_bloc.dart'
    as _i123;
import 'package:neobis_smart_tailor/features/confirmation/presentation/bloc/timer_bloc/timer_bloc.dart'
    as _i5;
import 'package:neobis_smart_tailor/features/login/data/data_source/impl/login_data_source_impl.dart'
    as _i34;
import 'package:neobis_smart_tailor/features/login/data/data_source/login_data_source.dart'
    as _i33;
import 'package:neobis_smart_tailor/features/login/data/repository/login_repo_impl.dart'
    as _i50;
import 'package:neobis_smart_tailor/features/login/domain/repository/login_repo.dart'
    as _i49;
import 'package:neobis_smart_tailor/features/login/domain/useCase/login_use_case.dart'
    as _i52;
import 'package:neobis_smart_tailor/features/login/presentation/bloc/login_bloc.dart'
    as _i92;
import 'package:neobis_smart_tailor/features/marketplace/data/data_source/marketplace_data_source.dart'
    as _i30;
import 'package:neobis_smart_tailor/features/marketplace/data/data_source/marketplace_data_source_impl/marketplace_data_source_impl.dart'
    as _i31;
import 'package:neobis_smart_tailor/features/marketplace/data/mapper/common_converter.dart'
    as _i40;
import 'package:neobis_smart_tailor/features/marketplace/data/mapper/general_responce_converter.dart'
    as _i14;
import 'package:neobis_smart_tailor/features/marketplace/data/models/general_model/general_model.dart'
    as _i38;
import 'package:neobis_smart_tailor/features/marketplace/data/models/general_responce/general_responce.dart'
    as _i12;
import 'package:neobis_smart_tailor/features/marketplace/data/repository/marketplace_repo_impl.dart'
    as _i79;
import 'package:neobis_smart_tailor/features/marketplace/domain/entitys/common_entity.dart'
    as _i39;
import 'package:neobis_smart_tailor/features/marketplace/domain/entitys/general_responce_entity.dart'
    as _i13;
import 'package:neobis_smart_tailor/features/marketplace/domain/repository/marketplace_repo.dart'
    as _i78;
import 'package:neobis_smart_tailor/features/marketplace/domain/use_case/get_equipments_use_case.dart'
    as _i96;
import 'package:neobis_smart_tailor/features/marketplace/domain/use_case/get_orders_use_case.dart'
    as _i97;
import 'package:neobis_smart_tailor/features/marketplace/domain/use_case/get_services_ude_case.dart'
    as _i98;
import 'package:neobis_smart_tailor/features/marketplace/presentation/bloc/marketplace_bloc.dart'
    as _i111;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/equipment_detail_screen/data/data_source/equipment_detail_data_source.dart'
    as _i75;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/equipment_detail_screen/data/data_source/equipment_detail_data_source_impl/marketplace_data_source_impl.dart'
    as _i76;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/equipment_detail_screen/data/mapper/equipment_converter.dart'
    as _i37;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/equipment_detail_screen/data/models/equipment_detail_model/equipment_detail_model.dart'
    as _i35;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/equipment_detail_screen/data/repository/equipment_detail_repo_impl.dart'
    as _i87;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/equipment_detail_screen/domain/entitys/equipment_detail_entity.dart'
    as _i36;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/equipment_detail_screen/domain/repository/equipment_detail_repo.dart'
    as _i86;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/equipment_detail_screen/domain/use_case/buy_equipment_use_case%20copy.dart'
    as _i120;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/equipment_detail_screen/domain/use_case/get_equipmentby_id_use_case.dart'
    as _i121;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/equipment_detail_screen/presentation/bloc/equipment_detail_bloc.dart'
    as _i129;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/order_detail_screen/data/data_source/marketplace_detail_data_source_impl/order_data_source_impl.dart'
    as _i26;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/order_detail_screen/data/data_source/order_detail_data_source.dart'
    as _i25;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/order_detail_screen/data/mapper/order_converter.dart'
    as _i29;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/order_detail_screen/data/models/order_detail_model/order_detail_model.dart'
    as _i27;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/order_detail_screen/data/repository/order_detail_repo_impl.dart'
    as _i64;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/order_detail_screen/domain/entitys/order_detail_entity.dart'
    as _i28;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/order_detail_screen/domain/repository/order_detail_repo.dart'
    as _i63;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/order_detail_screen/domain/use_case/get_order_by_id_use_case.dart'
    as _i65;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/order_detail_screen/domain/use_case/request_to_execute_use_case%20copy.dart'
    as _i66;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/order_detail_screen/presentation/bloc/order_detail_bloc.dart'
    as _i95;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/service_detail_screen/data/data_source/marketplace_detail_data_source_impl/service_detail_data_source_impl.dart'
    as _i74;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/service_detail_screen/data/data_source/service_detail_data_source.dart'
    as _i73;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/service_detail_screen/data/mapper/service_converter%20copy.dart'
    as _i11;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/service_detail_screen/data/models/service_detail_model/service_detail_model.dart'
    as _i9;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/service_detail_screen/data/repository/service_detail_repo_impl.dart'
    as _i119;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/service_detail_screen/domain/entitys/service_detail_entity.dart'
    as _i10;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/service_detail_screen/domain/repository/service_detail_repo.dart'
    as _i118;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/service_detail_screen/domain/use_case/get_service_by_id_use_case.dart'
    as _i128;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/service_detail_screen/presentation/bloc/service_detail_bloc.dart'
    as _i131;
import 'package:neobis_smart_tailor/features/order_place/data/data_source/impl/order_place_data_source_impl.dart'
    as _i60;
import 'package:neobis_smart_tailor/features/order_place/data/data_source/order_place_data_source.dart'
    as _i59;
import 'package:neobis_smart_tailor/features/order_place/data/repository/order_place_repo_impl.dart'
    as _i72;
import 'package:neobis_smart_tailor/features/order_place/domain/repository/order_place_repo.dart'
    as _i71;
import 'package:neobis_smart_tailor/features/order_place/domain/useCase/create_equipment_use_case.dart'
    as _i112;
import 'package:neobis_smart_tailor/features/order_place/domain/useCase/create_order_use_case.dart'
    as _i113;
import 'package:neobis_smart_tailor/features/order_place/domain/useCase/create_service_use_case.dart'
    as _i114;
import 'package:neobis_smart_tailor/features/order_place/presentation/bloc/order_place_bloc.dart'
    as _i117;
import 'package:neobis_smart_tailor/features/organization/pages/create_organization/data/data_source/create_organization_data_source.dart'
    as _i53;
import 'package:neobis_smart_tailor/features/organization/pages/create_organization/data/data_source/impl/create_organization_data_source_impl.dart'
    as _i54;
import 'package:neobis_smart_tailor/features/organization/pages/create_organization/data/repository/create_organization_repo_impl.dart'
    as _i70;
import 'package:neobis_smart_tailor/features/organization/pages/create_organization/domain/repository/create_organization_repo.dart'
    as _i69;
import 'package:neobis_smart_tailor/features/organization/pages/create_organization/domain/use_case/create_organization_use_case.dart'
    as _i110;
import 'package:neobis_smart_tailor/features/organization/pages/create_organization/presentation/create_organization_bloc/create_organization_bloc.dart'
    as _i125;
import 'package:neobis_smart_tailor/features/organization/pages/employee/data/converter/converter.dart'
    as _i23;
import 'package:neobis_smart_tailor/features/organization/pages/employee/data/data_source/employee_data_source.dart'
    as _i80;
import 'package:neobis_smart_tailor/features/organization/pages/employee/data/data_source/impl/employee_data_source_impl.dart'
    as _i81;
import 'package:neobis_smart_tailor/features/organization/pages/employee/data/models/_model/employee_model.dart'
    as _i21;
import 'package:neobis_smart_tailor/features/organization/pages/employee/data/repository/employee_repo_impl.dart'
    as _i116;
import 'package:neobis_smart_tailor/features/organization/pages/employee/domain/entitys/employee_entity.dart'
    as _i22;
import 'package:neobis_smart_tailor/features/organization/pages/employee/domain/repository/employees_repo.dart'
    as _i115;
import 'package:neobis_smart_tailor/features/organization/pages/employee/domain/use_case/get_all_employees_use_case.dart'
    as _i127;
import 'package:neobis_smart_tailor/features/organization/pages/employee/presentation/bloc/employee_bloc.dart'
    as _i130;
import 'package:neobis_smart_tailor/features/organization/pages/invite_employee/data/data_source/impl/invite_employee_data_source_impl.dart'
    as _i89;
import 'package:neobis_smart_tailor/features/organization/pages/invite_employee/data/data_source/invite_employee_data_source.dart'
    as _i88;
import 'package:neobis_smart_tailor/features/organization/pages/invite_employee/data/repository/invite_employee_repo_impl.dart'
    as _i106;
import 'package:neobis_smart_tailor/features/organization/pages/invite_employee/domain/repository/invite_employee_repo.dart'
    as _i105;
import 'package:neobis_smart_tailor/features/organization/pages/invite_employee/domain/use_case/invite_employee_use_case.dart'
    as _i122;
import 'package:neobis_smart_tailor/features/organization/pages/invite_employee/presentation/bloc/invite_employee_bloc.dart'
    as _i126;
import 'package:neobis_smart_tailor/features/organization/pages/organization/data/converter/organization_info_converter.dart'
    as _i17;
import 'package:neobis_smart_tailor/features/organization/pages/organization/data/data_source/impl/organization_data_source_impl.dart'
    as _i42;
import 'package:neobis_smart_tailor/features/organization/pages/organization/data/data_source/organization_data_source.dart'
    as _i41;
import 'package:neobis_smart_tailor/features/organization/pages/organization/data/models/organization_info_model/organization_info_model.dart'
    as _i15;
import 'package:neobis_smart_tailor/features/organization/pages/organization/data/repository/organization_repo_impl.dart'
    as _i56;
import 'package:neobis_smart_tailor/features/organization/pages/organization/domain/entitys/organization_info_entity.dart'
    as _i16;
import 'package:neobis_smart_tailor/features/organization/pages/organization/domain/repository/organization_repo.dart'
    as _i55;
import 'package:neobis_smart_tailor/features/organization/pages/organization/domain/use_case/get_profile_use_case.dart'
    as _i77;
import 'package:neobis_smart_tailor/features/organization/pages/organization/presentation/bloc/organization_bloc.dart'
    as _i85;
import 'package:neobis_smart_tailor/features/organization/pages/positions/data/converter/converter.dart'
    as _i20;
import 'package:neobis_smart_tailor/features/organization/pages/positions/data/data_source/impl/positions_data_source_impl.dart'
    as _i46;
import 'package:neobis_smart_tailor/features/organization/pages/positions/data/data_source/positions_data_source.dart'
    as _i45;
import 'package:neobis_smart_tailor/features/organization/pages/positions/data/models/_model/position_model.dart'
    as _i18;
import 'package:neobis_smart_tailor/features/organization/pages/positions/data/repository/position_repo_impl.dart'
    as _i62;
import 'package:neobis_smart_tailor/features/organization/pages/positions/domain/entitys/position_entity.dart'
    as _i19;
import 'package:neobis_smart_tailor/features/organization/pages/positions/domain/repository/positions_repo.dart'
    as _i61;
import 'package:neobis_smart_tailor/features/organization/pages/positions/domain/use_case/add_position_use_case.dart'
    as _i93;
import 'package:neobis_smart_tailor/features/organization/pages/positions/domain/use_case/get_all_positions_use_case.dart'
    as _i94;
import 'package:neobis_smart_tailor/features/organization/pages/positions/presentation/bloc/positions_bloc.dart'
    as _i104;
import 'package:neobis_smart_tailor/features/profile/data/data_source/remote/profile_data_source.dart'
    as _i47;
import 'package:neobis_smart_tailor/features/profile/data/data_source/remote/profile_data_source_impl/profile_data_source_impl.dart'
    as _i48;
import 'package:neobis_smart_tailor/features/profile/data/repository/profile_repo_impl.dart'
    as _i58;
import 'package:neobis_smart_tailor/features/profile/domain/repository/profile_repo.dart'
    as _i57;
import 'package:neobis_smart_tailor/features/profile/domain/use_case/edit_profile_info_use_case.dart'
    as _i99;
import 'package:neobis_smart_tailor/features/profile/domain/use_case/get_profile_info_use_case.dart'
    as _i100;
import 'package:neobis_smart_tailor/features/profile/domain/use_case/send_subscription_use_case.dart'
    as _i101;
import 'package:neobis_smart_tailor/features/profile/domain/use_case/sign_out_use_case.dart'
    as _i102;
import 'package:neobis_smart_tailor/features/profile/domain/use_case/upload_image_use_case.dart'
    as _i103;
import 'package:neobis_smart_tailor/features/profile/presentation/bloc/profile_bloc.dart'
    as _i124;
import 'package:neobis_smart_tailor/features/registration/data/data_source/impl/registration_data_source_impl.dart'
    as _i44;
import 'package:neobis_smart_tailor/features/registration/data/data_source/registration_data_source.dart'
    as _i43;
import 'package:neobis_smart_tailor/features/registration/data/repository/registration_repo_impl.dart'
    as _i83;
import 'package:neobis_smart_tailor/features/registration/domain/repository/registration_repo.dart'
    as _i82;
import 'package:neobis_smart_tailor/features/registration/domain/useCase/registration_use_case.dart'
    as _i84;
import 'package:neobis_smart_tailor/features/registration/presentation/bloc/registration_bloc.dart'
    as _i107;
import 'package:neobis_smart_tailor/injection/injection_module.dart' as _i132;
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
    gh.factory<
            _i8.Converter<List<_i18.PositionModel>, List<_i19.PositionEntity>>>(
        () => _i20.PositionModelListToEntityListConverter());
    gh.factory<_i8.Converter<_i21.EmployeeModel, _i22.EmployeeEntity>>(
        () => _i23.GeneralResponceMapper());
    gh.singleton<_i24.HttpClient>(() => _i24.HttpClient(gh<_i3.Dio>()));
    gh.factory<_i25.OrderDetailDataSource>(
        () => _i26.OrderDetailDataSourceImpl(gh<_i24.HttpClient>()));
    gh.factory<_i8.Converter<_i27.OrderDetailModel, _i28.OrderDetailEntity>>(
        () => _i29.OrderDetailMapper());
    gh.factory<_i30.MarketplaceDataSource>(
        () => _i31.MarketplaceDataSourceImpl(gh<_i24.HttpClient>()));
    gh.singleton<_i5.TimerBloc>(() => _i5.TimerBloc(ticker: gh<_i5.Ticker>()));
    gh.singleton<_i32.SecureStorageService>(
        () => _i32.SecureStorageService(gh<_i7.FlutterSecureStorage>()));
    gh.factory<_i33.LoginDataSource>(
        () => _i34.LoginDataSourceImpl(gh<_i24.HttpClient>()));
    gh.factory<
        _i8.Converter<_i35.EquipmentDetailModel,
            _i36.EquipmentDetailEntity>>(() => _i37.EquipmentDetailMapper());
    gh.factory<_i8.Converter<_i38.GeneralOrderModel, _i39.GeneralEntity>>(
        () => _i40.EquipmentMapper());
    gh.factory<_i41.OrganizationDataSource>(
        () => _i42.OrganizationDataSourceImpl(gh<_i24.HttpClient>()));
    gh.factory<_i43.RegistrationDataSource>(
        () => _i44.RegistrationDataSourceImpl(gh<_i24.HttpClient>()));
    gh.factory<_i45.PositionsDataSource>(
        () => _i46.PositionsSourceImpl(gh<_i24.HttpClient>()));
    gh.factory<_i47.ProfileDataSource>(
        () => _i48.ProfileDataSourceImpl(gh<_i24.HttpClient>()));
    gh.factory<_i49.LoginRepo>(
        () => _i50.LoginRepoImpl(gh<_i33.LoginDataSource>()));
    gh.singleton<_i51.AppRouter>(() => _i51.AppRouter(gh<_i4.AuthService>()));
    gh.singleton<_i52.LoginUseCase>(
        () => _i52.LoginUseCase(repo: gh<_i49.LoginRepo>()));
    gh.factory<_i53.CreateOrganizationDataSource>(
        () => _i54.CreateOrganizationDataSourceImpl(
              gh<_i24.HttpClient>(),
              gh<_i4.AuthService>(),
            ));
    gh.factory<_i55.OrganizationRepo>(() => _i56.OrganizationRepoImpl(
          gh<_i41.OrganizationDataSource>(),
          gh<
              _i8.Converter<_i15.OrganizationInfoModel,
                  _i16.OrganizationInfoEntity>>(),
        ));
    gh.factory<_i57.ProfileRepo>(() => _i58.ProfileRepoImpl(
          gh<_i47.ProfileDataSource>(),
          gh<_i4.AuthService>(),
        ));
    gh.factory<_i59.OrderPlaceDataSource>(() => _i60.OrderPlaceDataSourceImpl(
          gh<_i24.HttpClient>(),
          gh<_i4.AuthService>(),
        ));
    gh.factory<_i61.PositionsRepo>(() => _i62.PositionRepoImpl(
          gh<_i45.PositionsDataSource>(),
          gh<
              _i8.Converter<List<_i18.PositionModel>,
                  List<_i19.PositionEntity>>>(),
        ));
    gh.factory<_i63.OrderDetailRepo>(() => _i64.OrderDetailRepoImpl(
          gh<_i25.OrderDetailDataSource>(),
          gh<_i8.Converter<_i27.OrderDetailModel, _i28.OrderDetailEntity>>(),
        ));
    gh.singleton<_i65.GetOrderByIdUseCase>(
        () => _i65.GetOrderByIdUseCase(repo: gh<_i63.OrderDetailRepo>()));
    gh.singleton<_i66.RequestToExecuteUseCase>(
        () => _i66.RequestToExecuteUseCase(repo: gh<_i63.OrderDetailRepo>()));
    gh.factory<_i67.ConfirmationDataSource>(
        () => _i68.ConfirmationDataSourceImpl(gh<_i24.HttpClient>()));
    gh.factory<_i69.CreateOrganizationRepo>(() =>
        _i70.CreateOrganizationRepoImpl(
            gh<_i53.CreateOrganizationDataSource>()));
    gh.factory<_i71.OrderPlaceRepo>(
        () => _i72.CreateOrderRepoImpl(gh<_i59.OrderPlaceDataSource>()));
    gh.factory<_i73.ServiceDetailDataSource>(
        () => _i74.ServiceDetailDataSourceImpl(gh<_i24.HttpClient>()));
    gh.factory<_i75.EquipmentDetailDataSource>(
        () => _i76.EquipmentDetailDataSourceImpl(gh<_i24.HttpClient>()));
    gh.singleton<_i77.GetProfileUseCase>(
        () => _i77.GetProfileUseCase(repo: gh<_i55.OrganizationRepo>()));
    gh.factory<_i78.MarketplaceRepo>(() => _i79.MarketplaceRepoImpl(
          gh<_i30.MarketplaceDataSource>(),
          gh<
              _i8.Converter<_i12.GeneralResponceModel,
                  _i13.GeneralResponceEntity>>(),
        ));
    gh.factory<_i80.EmployeeDataSource>(
        () => _i81.OrganizationDataSourceImpl(gh<_i24.HttpClient>()));
    gh.factory<_i82.RegistrationRepo>(
        () => _i83.RegistrationRepoImpl(gh<_i43.RegistrationDataSource>()));
    gh.singleton<_i84.RegistrationUseCase>(
        () => _i84.RegistrationUseCase(repo: gh<_i82.RegistrationRepo>()));
    gh.singleton<_i85.OrganizationBloc>(
        () => _i85.OrganizationBloc(gh<_i77.GetProfileUseCase>()));
    gh.factory<_i86.EquipmentDetailRepo>(() => _i87.EquipmentDetailRepoImpl(
          gh<_i75.EquipmentDetailDataSource>(),
          gh<
              _i8.Converter<_i35.EquipmentDetailModel,
                  _i36.EquipmentDetailEntity>>(),
        ));
    gh.factory<_i88.InviteEmployeeDataSource>(
        () => _i89.InviteEmployeeDataSourceImpl(gh<_i24.HttpClient>()));
    gh.factory<_i90.ConfirmationRepo>(() => _i91.ConfirmationRepoImpl(
          gh<_i67.ConfirmationDataSource>(),
          gh<_i4.AuthService>(),
        ));
    gh.factory<_i92.LoginBloc>(
        () => _i92.LoginBloc(loginUseCase: gh<_i52.LoginUseCase>()));
    gh.singleton<_i93.AddPositionUseCase>(
        () => _i93.AddPositionUseCase(repo: gh<_i61.PositionsRepo>()));
    gh.singleton<_i94.GetAllPositionsUseCase>(
        () => _i94.GetAllPositionsUseCase(repo: gh<_i61.PositionsRepo>()));
    gh.singleton<_i95.OrderDetailBloc>(() => _i95.OrderDetailBloc(
          gh<_i65.GetOrderByIdUseCase>(),
          gh<_i66.RequestToExecuteUseCase>(),
        ));
    gh.singleton<_i96.GetEuipmentsUseCase>(
        () => _i96.GetEuipmentsUseCase(repo: gh<_i78.MarketplaceRepo>()));
    gh.singleton<_i97.GetOrdersUseCase>(
        () => _i97.GetOrdersUseCase(repo: gh<_i78.MarketplaceRepo>()));
    gh.singleton<_i98.GetServicesUseCase>(
        () => _i98.GetServicesUseCase(repo: gh<_i78.MarketplaceRepo>()));
    gh.singleton<_i99.EditProfileInfoUseCase>(
        () => _i99.EditProfileInfoUseCase(repo: gh<_i57.ProfileRepo>()));
    gh.singleton<_i100.GetProfileInfoUseCase>(
        () => _i100.GetProfileInfoUseCase(repo: gh<_i57.ProfileRepo>()));
    gh.singleton<_i101.SendSubscriptionUseCase>(
        () => _i101.SendSubscriptionUseCase(repo: gh<_i57.ProfileRepo>()));
    gh.singleton<_i102.SignOutUseCase>(
        () => _i102.SignOutUseCase(repo: gh<_i57.ProfileRepo>()));
    gh.singleton<_i103.UploadImageUseCase>(
        () => _i103.UploadImageUseCase(repo: gh<_i57.ProfileRepo>()));
    gh.singleton<_i104.PositionsBloc>(() => _i104.PositionsBloc(
          gh<_i93.AddPositionUseCase>(),
          gh<_i94.GetAllPositionsUseCase>(),
        ));
    gh.factory<_i105.InviteEmployeeRepo>(() =>
        _i106.InviteEmployeeRepoImpl(gh<_i88.InviteEmployeeDataSource>()));
    gh.factory<_i107.RegistrationBloc>(() => _i107.RegistrationBloc(
        registrationUseCase: gh<_i84.RegistrationUseCase>()));
    gh.singleton<_i108.ConfirmationUseCase>(
        () => _i108.ConfirmationUseCase(repo: gh<_i90.ConfirmationRepo>()));
    gh.singleton<_i109.ResendPinUseCase>(
        () => _i109.ResendPinUseCase(repo: gh<_i90.ConfirmationRepo>()));
    gh.singleton<_i110.CreateOrganizationUseCase>(() =>
        _i110.CreateOrganizationUseCase(
            repo: gh<_i69.CreateOrganizationRepo>()));
    gh.singleton<_i111.MarketplaceBloc>(() => _i111.MarketplaceBloc(
          gh<_i96.GetEuipmentsUseCase>(),
          gh<_i97.GetOrdersUseCase>(),
          gh<_i98.GetServicesUseCase>(),
        ));
    gh.singleton<_i112.CreateEquipmentUseCase>(
        () => _i112.CreateEquipmentUseCase(repo: gh<_i71.OrderPlaceRepo>()));
    gh.singleton<_i113.CreateOrderUseCase>(
        () => _i113.CreateOrderUseCase(repo: gh<_i71.OrderPlaceRepo>()));
    gh.singleton<_i114.CreateServiceUseCase>(
        () => _i114.CreateServiceUseCase(repo: gh<_i71.OrderPlaceRepo>()));
    gh.factory<_i115.EmployeeRepo>(() => _i116.EmployeeRepoImpl(
          gh<_i80.EmployeeDataSource>(),
          gh<_i8.Converter<_i21.EmployeeModel, _i22.EmployeeEntity>>(),
        ));
    gh.singleton<_i117.OrderPlaceBloc>(() => _i117.OrderPlaceBloc(
          gh<_i112.CreateEquipmentUseCase>(),
          gh<_i114.CreateServiceUseCase>(),
          gh<_i113.CreateOrderUseCase>(),
        ));
    gh.factory<_i118.ServiceDetailRepo>(() => _i119.ServiceDetailRepoImpl(
          gh<_i73.ServiceDetailDataSource>(),
          gh<_i8.Converter<_i9.ServiceDetailModel, _i10.ServiceDetailEntity>>(),
        ));
    gh.singleton<_i120.BuyEquipmentIdUseCase>(() =>
        _i120.BuyEquipmentIdUseCase(repo: gh<_i86.EquipmentDetailRepo>()));
    gh.singleton<_i121.GetEuipmentByIdUseCase>(() =>
        _i121.GetEuipmentByIdUseCase(repo: gh<_i86.EquipmentDetailRepo>()));
    gh.singleton<_i122.InviteEmployeeUseCase>(() =>
        _i122.InviteEmployeeUseCase(repo: gh<_i105.InviteEmployeeRepo>()));
    gh.singleton<_i123.ConfirmationBloc>(() => _i123.ConfirmationBloc(
          gh<_i108.ConfirmationUseCase>(),
          gh<_i109.ResendPinUseCase>(),
        ));
    gh.factory<_i124.ProfileBloc>(() => _i124.ProfileBloc(
          sendSubscriptionUseCase: gh<_i101.SendSubscriptionUseCase>(),
          signOutUseCase: gh<_i102.SignOutUseCase>(),
          getProfileInfoUseCase: gh<_i100.GetProfileInfoUseCase>(),
          editProfileInfoUseCase: gh<_i99.EditProfileInfoUseCase>(),
          uploadImageUseCase: gh<_i103.UploadImageUseCase>(),
        ));
    gh.singleton<_i125.CreateOrganizationBloc>(() =>
        _i125.CreateOrganizationBloc(gh<_i110.CreateOrganizationUseCase>()));
    gh.singleton<_i126.InviteEmployeeBloc>(
        () => _i126.InviteEmployeeBloc(gh<_i122.InviteEmployeeUseCase>()));
    gh.singleton<_i127.GetAllEmployeesUseCase>(
        () => _i127.GetAllEmployeesUseCase(repo: gh<_i115.EmployeeRepo>()));
    gh.singleton<_i128.GetServiceByIdUseCase>(
        () => _i128.GetServiceByIdUseCase(repo: gh<_i118.ServiceDetailRepo>()));
    gh.singleton<_i129.EquipmentDetailBloc>(() => _i129.EquipmentDetailBloc(
          gh<_i121.GetEuipmentByIdUseCase>(),
          gh<_i120.BuyEquipmentIdUseCase>(),
        ));
    gh.singleton<_i130.EmployeeBloc>(
        () => _i130.EmployeeBloc(gh<_i127.GetAllEmployeesUseCase>()));
    gh.singleton<_i131.ServiceDetailBloc>(
        () => _i131.ServiceDetailBloc(gh<_i128.GetServiceByIdUseCase>()));
    return this;
  }
}

class _$RegisterModule extends _i132.RegisterModule {}
