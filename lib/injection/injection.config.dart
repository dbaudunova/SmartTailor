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
import 'package:neobis_smart_tailor/core/app/router/app_routes.dart' as _i72;
import 'package:neobis_smart_tailor/core/network/http_client.dart' as _i24;
import 'package:neobis_smart_tailor/core/services/auth_service.dart' as _i4;
import 'package:neobis_smart_tailor/core/services/secure_storage_service.dart'
    as _i34;
import 'package:neobis_smart_tailor/features/confirmation/data/data_source/confirmation_data_source.dart'
    as _i86;
import 'package:neobis_smart_tailor/features/confirmation/data/data_source/impl/confirmation_data_source_impl.dart'
    as _i87;
import 'package:neobis_smart_tailor/features/confirmation/data/repository/confirmation_repo_impl.dart'
    as _i115;
import 'package:neobis_smart_tailor/features/confirmation/domain/repository/confirmation_repo.dart'
    as _i114;
import 'package:neobis_smart_tailor/features/confirmation/domain/useCase/confirmation_use_case.dart'
    as _i133;
import 'package:neobis_smart_tailor/features/confirmation/domain/useCase/resend_pin_use_case%20copy.dart'
    as _i134;
import 'package:neobis_smart_tailor/features/confirmation/presentation/bloc/confirmation_bloc/confirmation_bloc.dart'
    as _i146;
import 'package:neobis_smart_tailor/features/confirmation/presentation/bloc/timer_bloc/timer_bloc.dart'
    as _i5;
import 'package:neobis_smart_tailor/features/login/data/data_source/impl/login_data_source_impl.dart'
    as _i36;
import 'package:neobis_smart_tailor/features/login/data/data_source/login_data_source.dart'
    as _i35;
import 'package:neobis_smart_tailor/features/login/data/repository/login_repo_impl.dart'
    as _i61;
import 'package:neobis_smart_tailor/features/login/domain/repository/login_repo.dart'
    as _i60;
import 'package:neobis_smart_tailor/features/login/domain/useCase/login_use_case.dart'
    as _i73;
import 'package:neobis_smart_tailor/features/login/presentation/bloc/login_bloc.dart'
    as _i118;
import 'package:neobis_smart_tailor/features/marketplace/data/data_source/marketplace_data_source.dart'
    as _i32;
import 'package:neobis_smart_tailor/features/marketplace/data/data_source/marketplace_data_source_impl/marketplace_data_source_impl.dart'
    as _i33;
import 'package:neobis_smart_tailor/features/marketplace/data/mapper/common_converter.dart'
    as _i48;
import 'package:neobis_smart_tailor/features/marketplace/data/mapper/general_responce_converter.dart'
    as _i14;
import 'package:neobis_smart_tailor/features/marketplace/data/models/general_model/general_model.dart'
    as _i46;
import 'package:neobis_smart_tailor/features/marketplace/data/models/general_responce/general_responce.dart'
    as _i12;
import 'package:neobis_smart_tailor/features/marketplace/data/repository/marketplace_repo_impl.dart'
    as _i102;
import 'package:neobis_smart_tailor/features/marketplace/domain/entitys/common_entity.dart'
    as _i47;
import 'package:neobis_smart_tailor/features/marketplace/domain/entitys/general_responce_entity.dart'
    as _i13;
import 'package:neobis_smart_tailor/features/marketplace/domain/repository/marketplace_repo.dart'
    as _i101;
import 'package:neobis_smart_tailor/features/marketplace/domain/use_case/get_equipments_use_case.dart'
    as _i126;
import 'package:neobis_smart_tailor/features/marketplace/domain/use_case/get_orders_use_case.dart'
    as _i127;
import 'package:neobis_smart_tailor/features/marketplace/domain/use_case/get_services_ude_case.dart'
    as _i128;
import 'package:neobis_smart_tailor/features/marketplace/presentation/bloc/marketplace_bloc.dart'
    as _i136;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/equipment_detail_screen/data/data_source/equipment_detail_data_source.dart'
    as _i98;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/equipment_detail_screen/data/data_source/equipment_detail_data_source_impl/marketplace_data_source_impl.dart'
    as _i99;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/equipment_detail_screen/data/mapper/equipment_converter.dart'
    as _i42;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/equipment_detail_screen/data/models/equipment_detail_model/equipment_detail_model.dart'
    as _i40;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/equipment_detail_screen/data/repository/equipment_detail_repo_impl.dart'
    as _i110;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/equipment_detail_screen/domain/entitys/equipment_detail_entity.dart'
    as _i41;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/equipment_detail_screen/domain/repository/equipment_detail_repo.dart'
    as _i109;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/equipment_detail_screen/domain/use_case/buy_equipment_use_case%20copy.dart'
    as _i143;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/equipment_detail_screen/domain/use_case/get_equipmentby_id_use_case.dart'
    as _i144;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/equipment_detail_screen/presentation/bloc/equipment_detail_bloc.dart'
    as _i154;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/order_detail_screen/data/data_source/marketplace_detail_data_source_impl/order_data_source_impl.dart'
    as _i26;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/order_detail_screen/data/data_source/order_detail_data_source.dart'
    as _i25;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/order_detail_screen/data/mapper/order_converter.dart'
    as _i31;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/order_detail_screen/data/models/order_detail_model/order_detail_model.dart'
    as _i29;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/order_detail_screen/data/repository/order_detail_repo_impl.dart'
    as _i83;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/order_detail_screen/domain/entitys/order_detail_entity.dart'
    as _i30;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/order_detail_screen/domain/repository/order_detail_repo.dart'
    as _i82;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/order_detail_screen/domain/use_case/get_order_by_id_use_case.dart'
    as _i84;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/order_detail_screen/domain/use_case/request_to_execute_use_case%20copy.dart'
    as _i85;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/order_detail_screen/presentation/bloc/order_detail_bloc.dart'
    as _i123;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/service_detail_screen/data/data_source/marketplace_detail_data_source_impl/service_detail_data_source_impl.dart'
    as _i97;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/service_detail_screen/data/data_source/service_detail_data_source.dart'
    as _i96;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/service_detail_screen/data/mapper/service_converter%20copy.dart'
    as _i11;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/service_detail_screen/data/models/service_detail_model/service_detail_model.dart'
    as _i9;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/service_detail_screen/data/repository/service_detail_repo_impl.dart'
    as _i142;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/service_detail_screen/domain/entitys/service_detail_entity.dart'
    as _i10;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/service_detail_screen/domain/repository/service_detail_repo.dart'
    as _i141;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/service_detail_screen/domain/use_case/get_service_by_id_use_case.dart'
    as _i153;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/service_detail_screen/presentation/bloc/service_detail_bloc.dart'
    as _i155;
import 'package:neobis_smart_tailor/features/order_place/data/data_source/impl/order_place_data_source_impl.dart'
    as _i79;
import 'package:neobis_smart_tailor/features/order_place/data/data_source/order_place_data_source.dart'
    as _i78;
import 'package:neobis_smart_tailor/features/order_place/data/repository/order_place_repo_impl.dart'
    as _i95;
import 'package:neobis_smart_tailor/features/order_place/domain/repository/order_place_repo.dart'
    as _i94;
import 'package:neobis_smart_tailor/features/order_place/domain/useCase/create_equipment_use_case.dart'
    as _i137;
import 'package:neobis_smart_tailor/features/order_place/domain/useCase/create_order_use_case.dart'
    as _i138;
import 'package:neobis_smart_tailor/features/order_place/domain/useCase/create_service_use_case.dart'
    as _i139;
import 'package:neobis_smart_tailor/features/order_place/presentation/bloc/order_place_bloc.dart'
    as _i140;
import 'package:neobis_smart_tailor/features/organization/pages/create_organization/data/data_source/create_organization_data_source.dart'
    as _i74;
import 'package:neobis_smart_tailor/features/organization/pages/create_organization/data/data_source/impl/create_organization_data_source_impl.dart'
    as _i75;
import 'package:neobis_smart_tailor/features/organization/pages/create_organization/data/repository/create_organization_repo_impl.dart'
    as _i92;
import 'package:neobis_smart_tailor/features/organization/pages/create_organization/domain/repository/create_organization_repo.dart'
    as _i91;
import 'package:neobis_smart_tailor/features/organization/pages/create_organization/domain/use_case/create_organization_use_case.dart'
    as _i135;
import 'package:neobis_smart_tailor/features/organization/pages/create_organization/presentation/create_organization_bloc/create_organization_bloc.dart'
    as _i150;
import 'package:neobis_smart_tailor/features/organization/pages/current_order/data/converter/converter.dart'
    as _i39;
import 'package:neobis_smart_tailor/features/organization/pages/current_order/data/converter/organization_list_converter.dart'
    as _i90;
import 'package:neobis_smart_tailor/features/organization/pages/current_order/data/data_source/current_order_data_source.dart'
    as _i27;
import 'package:neobis_smart_tailor/features/organization/pages/current_order/data/data_source/impl/current_order_data_source_impl.dart'
    as _i28;
import 'package:neobis_smart_tailor/features/organization/pages/current_order/data/models/_model/current_order_model.dart'
    as _i37;
import 'package:neobis_smart_tailor/features/organization/pages/current_order/data/models/organization_list_model/organization_list_model.dart'
    as _i88;
import 'package:neobis_smart_tailor/features/organization/pages/current_order/data/repository/current_order_repo_impl.dart'
    as _i120;
import 'package:neobis_smart_tailor/features/organization/pages/current_order/domain/entitys/current_order_entity.dart'
    as _i38;
import 'package:neobis_smart_tailor/features/organization/pages/current_order/domain/entitys/organization_list_entity.dart'
    as _i89;
import 'package:neobis_smart_tailor/features/organization/pages/current_order/domain/repository/current_orders_repo.dart'
    as _i119;
import 'package:neobis_smart_tailor/features/organization/pages/current_order/domain/use_case/change_order_status_use_case.dart'
    as _i148;
import 'package:neobis_smart_tailor/features/organization/pages/current_order/domain/use_case/get_all_orders_use_case.dart'
    as _i147;
import 'package:neobis_smart_tailor/features/organization/pages/current_order/presentation/bloc/current_order_bloc.dart'
    as _i151;
import 'package:neobis_smart_tailor/features/organization/pages/employee/data/converter/employee_detail_converter.dart'
    as _i51;
import 'package:neobis_smart_tailor/features/organization/pages/employee/data/converter/employees_converter.dart'
    as _i45;
import 'package:neobis_smart_tailor/features/organization/pages/employee/data/data_source/employee_data_source.dart'
    as _i103;
import 'package:neobis_smart_tailor/features/organization/pages/employee/data/data_source/impl/employee_data_source_impl.dart'
    as _i104;
import 'package:neobis_smart_tailor/features/organization/pages/employee/data/models/employee_detail_model/employee_detail_model.dart'
    as _i49;
import 'package:neobis_smart_tailor/features/organization/pages/employee/data/models/employee_model/employee_model.dart'
    as _i43;
import 'package:neobis_smart_tailor/features/organization/pages/employee/data/repository/employee_repo_impl.dart'
    as _i117;
import 'package:neobis_smart_tailor/features/organization/pages/employee/domain/entitys/employee_detail_entity.dart'
    as _i50;
import 'package:neobis_smart_tailor/features/organization/pages/employee/domain/entitys/employee_entity.dart'
    as _i44;
import 'package:neobis_smart_tailor/features/organization/pages/employee/domain/repository/employees_repo.dart'
    as _i116;
import 'package:neobis_smart_tailor/features/organization/pages/employee/domain/use_case/get_all_employees_use_case.dart'
    as _i124;
import 'package:neobis_smart_tailor/features/organization/pages/employee/domain/use_case/get_employee_detail_use_case.dart'
    as _i125;
import 'package:neobis_smart_tailor/features/organization/pages/employee/presentation/bloc/employee_bloc.dart'
    as _i149;
import 'package:neobis_smart_tailor/features/organization/pages/invite_employee/data/data_source/impl/invite_employee_data_source_impl.dart'
    as _i112;
import 'package:neobis_smart_tailor/features/organization/pages/invite_employee/data/data_source/invite_employee_data_source.dart'
    as _i111;
import 'package:neobis_smart_tailor/features/organization/pages/invite_employee/data/repository/invite_employee_repo_impl.dart'
    as _i131;
import 'package:neobis_smart_tailor/features/organization/pages/invite_employee/domain/repository/invite_employee_repo.dart'
    as _i130;
import 'package:neobis_smart_tailor/features/organization/pages/invite_employee/domain/use_case/invite_employee_use_case.dart'
    as _i145;
import 'package:neobis_smart_tailor/features/organization/pages/invite_employee/presentation/bloc/invite_employee_bloc.dart'
    as _i152;
import 'package:neobis_smart_tailor/features/organization/pages/organization/data/converter/organization_info_converter.dart'
    as _i20;
import 'package:neobis_smart_tailor/features/organization/pages/organization/data/data_source/impl/organization_data_source_impl.dart'
    as _i53;
import 'package:neobis_smart_tailor/features/organization/pages/organization/data/data_source/organization_data_source.dart'
    as _i52;
import 'package:neobis_smart_tailor/features/organization/pages/organization/data/models/organization_info_model/organization_info_model.dart'
    as _i18;
import 'package:neobis_smart_tailor/features/organization/pages/organization/data/repository/organization_repo_impl.dart'
    as _i77;
import 'package:neobis_smart_tailor/features/organization/pages/organization/domain/entitys/organization_info_entity.dart'
    as _i19;
import 'package:neobis_smart_tailor/features/organization/pages/organization/domain/repository/organization_repo.dart'
    as _i76;
import 'package:neobis_smart_tailor/features/organization/pages/organization/domain/use_case/get_profile_use_case.dart'
    as _i100;
import 'package:neobis_smart_tailor/features/organization/pages/organization/presentation/bloc/organization_bloc.dart'
    as _i108;
import 'package:neobis_smart_tailor/features/organization/pages/positions/data/converter/converter.dart'
    as _i23;
import 'package:neobis_smart_tailor/features/organization/pages/positions/data/data_source/impl/positions_data_source_impl.dart'
    as _i57;
import 'package:neobis_smart_tailor/features/organization/pages/positions/data/data_source/positions_data_source.dart'
    as _i56;
import 'package:neobis_smart_tailor/features/organization/pages/positions/data/models/_model/position_model.dart'
    as _i21;
import 'package:neobis_smart_tailor/features/organization/pages/positions/data/repository/position_repo_impl.dart'
    as _i81;
import 'package:neobis_smart_tailor/features/organization/pages/positions/domain/entitys/position_entity.dart'
    as _i22;
import 'package:neobis_smart_tailor/features/organization/pages/positions/domain/repository/positions_repo.dart'
    as _i80;
import 'package:neobis_smart_tailor/features/organization/pages/positions/domain/use_case/add_position_use_case.dart'
    as _i121;
import 'package:neobis_smart_tailor/features/organization/pages/positions/domain/use_case/get_all_positions_use_case.dart'
    as _i122;
import 'package:neobis_smart_tailor/features/organization/pages/positions/presentation/bloc/positions_bloc.dart'
    as _i129;
import 'package:neobis_smart_tailor/features/profile/data/converter/purchaese_converter.dart'
    as _i17;
import 'package:neobis_smart_tailor/features/profile/data/converter/purchases_list_converter.dart'
    as _i62;
import 'package:neobis_smart_tailor/features/profile/data/data_source/remote/profile_data_source.dart'
    as _i58;
import 'package:neobis_smart_tailor/features/profile/data/data_source/remote/profile_data_source_impl/profile_data_source_impl.dart'
    as _i59;
import 'package:neobis_smart_tailor/features/profile/data/model/my_purchases/my_purchases_list_model.dart'
    as _i15;
import 'package:neobis_smart_tailor/features/profile/data/repository/profile_repo_impl.dart'
    as _i64;
import 'package:neobis_smart_tailor/features/profile/domain/model/my_purchases.dart'
    as _i16;
import 'package:neobis_smart_tailor/features/profile/domain/repository/profile_repo.dart'
    as _i63;
import 'package:neobis_smart_tailor/features/profile/domain/use_case/edit_profile_info_use_case.dart'
    as _i65;
import 'package:neobis_smart_tailor/features/profile/domain/use_case/get_all_purchases_use_case.dart'
    as _i71;
import 'package:neobis_smart_tailor/features/profile/domain/use_case/get_announcements_use_case.dart'
    as _i70;
import 'package:neobis_smart_tailor/features/profile/domain/use_case/get_profile_info_use_case.dart'
    as _i66;
import 'package:neobis_smart_tailor/features/profile/domain/use_case/send_subscription_use_case.dart'
    as _i67;
import 'package:neobis_smart_tailor/features/profile/domain/use_case/sign_out_use_case.dart'
    as _i68;
import 'package:neobis_smart_tailor/features/profile/domain/use_case/upload_image_use_case.dart'
    as _i69;
import 'package:neobis_smart_tailor/features/profile/presentation/bloc/profile_bloc.dart'
    as _i113;
import 'package:neobis_smart_tailor/features/profile/presentation/pages/purchases/bloc/purchases_bloc.dart'
    as _i93;
import 'package:neobis_smart_tailor/features/registration/data/data_source/impl/registration_data_source_impl.dart'
    as _i55;
import 'package:neobis_smart_tailor/features/registration/data/data_source/registration_data_source.dart'
    as _i54;
import 'package:neobis_smart_tailor/features/registration/data/repository/registration_repo_impl.dart'
    as _i106;
import 'package:neobis_smart_tailor/features/registration/domain/repository/registration_repo.dart'
    as _i105;
import 'package:neobis_smart_tailor/features/registration/domain/useCase/registration_use_case.dart'
    as _i107;
import 'package:neobis_smart_tailor/features/registration/presentation/bloc/registration_bloc.dart'
    as _i132;
import 'package:neobis_smart_tailor/injection/injection_module.dart' as _i156;
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
    gh.factory<_i8.Converter<_i15.PurchasesModel, _i16.PurchasesEntity>>(
        () => _i17.GeneralResponseMapper());
    gh.factory<
        _i8.Converter<_i18.OrganizationInfoModel,
            _i19.OrganizationInfoEntity>>(() => _i20.GeneralResponceMapper());
    gh.factory<
            _i8.Converter<List<_i21.PositionModel>, List<_i22.PositionEntity>>>(
        () => _i23.PositionModelListToEntityListConverter());
    gh.singleton<_i24.HttpClient>(() => _i24.HttpClient(gh<_i3.Dio>()));
    gh.factory<_i25.OrderDetailDataSource>(
        () => _i26.OrderDetailDataSourceImpl(gh<_i24.HttpClient>()));
    gh.factory<_i27.CurrentOrderDataSource>(
        () => _i28.CurrentOrderDataSourceImpl(gh<_i24.HttpClient>()));
    gh.factory<_i8.Converter<_i29.OrderDetailModel, _i30.OrderDetailEntity>>(
        () => _i31.OrderDetailMapper());
    gh.factory<_i32.MarketplaceDataSource>(
        () => _i33.MarketplaceDataSourceImpl(gh<_i24.HttpClient>()));
    gh.singleton<_i5.TimerBloc>(() => _i5.TimerBloc(ticker: gh<_i5.Ticker>()));
    gh.singleton<_i34.SecureStorageService>(
        () => _i34.SecureStorageService(gh<_i7.FlutterSecureStorage>()));
    gh.factory<_i35.LoginDataSource>(
        () => _i36.LoginDataSourceImpl(gh<_i24.HttpClient>()));
    gh.factory<_i8.Converter<_i37.CurrentOrderModel, _i38.CurrentOrderEntity>>(
        () => _i39.GeneralResponceMapper());
    gh.factory<
        _i8.Converter<_i40.EquipmentDetailModel,
            _i41.EquipmentDetailEntity>>(() => _i42.EquipmentDetailMapper());
    gh.factory<_i8.Converter<_i43.EmployeeModel, _i44.EmployeeEntity>>(
        () => _i45.GeneralResponceMapper());
    gh.factory<_i8.Converter<_i46.GeneralOrderModel, _i47.GeneralEntity>>(
        () => _i48.EquipmentMapper());
    gh.factory<
            _i8.Converter<_i49.EmployeeDetailModel, _i50.EmployeeDetailEntity>>(
        () => _i51.GeneralResponceMapper());
    gh.factory<_i52.OrganizationDataSource>(
        () => _i53.OrganizationDataSourceImpl(gh<_i24.HttpClient>()));
    gh.factory<_i54.RegistrationDataSource>(
        () => _i55.RegistrationDataSourceImpl(gh<_i24.HttpClient>()));
    gh.factory<_i56.PositionsDataSource>(
        () => _i57.PositionsSourceImpl(gh<_i24.HttpClient>()));
    gh.factory<_i58.ProfileDataSource>(
        () => _i59.ProfileDataSourceImpl(gh<_i24.HttpClient>()));
    gh.factory<_i60.LoginRepo>(
        () => _i61.LoginRepoImpl(gh<_i35.LoginDataSource>()));
    gh.factory<
            _i8.Converter<_i15.PurchasesListModel, _i16.PurchasesListEntity>>(
        () => _i62.GeneralResponseMapper(
            gh<_i8.Converter<_i15.PurchasesModel, _i16.PurchasesEntity>>()));
    gh.factory<_i63.ProfileRepo>(() => _i64.ProfileRepoImpl(
          gh<_i58.ProfileDataSource>(),
          gh<_i4.AuthService>(),
          gh<
              _i8
              .Converter<_i15.PurchasesListModel, _i16.PurchasesListEntity>>(),
        ));
    gh.singleton<_i65.EditProfileInfoUseCase>(
        () => _i65.EditProfileInfoUseCase(repo: gh<_i63.ProfileRepo>()));
    gh.singleton<_i66.GetProfileInfoUseCase>(
        () => _i66.GetProfileInfoUseCase(repo: gh<_i63.ProfileRepo>()));
    gh.singleton<_i67.SendSubscriptionUseCase>(
        () => _i67.SendSubscriptionUseCase(repo: gh<_i63.ProfileRepo>()));
    gh.singleton<_i68.SignOutUseCase>(
        () => _i68.SignOutUseCase(repo: gh<_i63.ProfileRepo>()));
    gh.singleton<_i69.UploadImageUseCase>(
        () => _i69.UploadImageUseCase(repo: gh<_i63.ProfileRepo>()));
    gh.singleton<_i70.GetAnnouncementsUseCase>(
        () => _i70.GetAnnouncementsUseCase(repo: gh<_i63.ProfileRepo>()));
    gh.singleton<_i71.GetAllPurchasesUseCase>(
        () => _i71.GetAllPurchasesUseCase(repo: gh<_i63.ProfileRepo>()));
    gh.singleton<_i72.AppRouter>(() => _i72.AppRouter(gh<_i4.AuthService>()));
    gh.singleton<_i73.LoginUseCase>(
        () => _i73.LoginUseCase(repo: gh<_i60.LoginRepo>()));
    gh.factory<_i74.CreateOrganizationDataSource>(
        () => _i75.CreateOrganizationDataSourceImpl(
              gh<_i24.HttpClient>(),
              gh<_i4.AuthService>(),
            ));
    gh.factory<_i76.OrganizationRepo>(() => _i77.OrganizationRepoImpl(
          gh<_i52.OrganizationDataSource>(),
          gh<
              _i8.Converter<_i18.OrganizationInfoModel,
                  _i19.OrganizationInfoEntity>>(),
        ));
    gh.factory<_i78.OrderPlaceDataSource>(() => _i79.OrderPlaceDataSourceImpl(
          gh<_i24.HttpClient>(),
          gh<_i4.AuthService>(),
        ));
    gh.factory<_i80.PositionsRepo>(() => _i81.PositionRepoImpl(
          gh<_i56.PositionsDataSource>(),
          gh<
              _i8.Converter<List<_i21.PositionModel>,
                  List<_i22.PositionEntity>>>(),
        ));
    gh.factory<_i82.OrderDetailRepo>(() => _i83.OrderDetailRepoImpl(
          gh<_i25.OrderDetailDataSource>(),
          gh<_i8.Converter<_i29.OrderDetailModel, _i30.OrderDetailEntity>>(),
        ));
    gh.singleton<_i84.GetOrderByIdUseCase>(
        () => _i84.GetOrderByIdUseCase(repo: gh<_i82.OrderDetailRepo>()));
    gh.singleton<_i85.RequestToExecuteUseCase>(
        () => _i85.RequestToExecuteUseCase(repo: gh<_i82.OrderDetailRepo>()));
    gh.factory<_i86.ConfirmationDataSource>(
        () => _i87.ConfirmationDataSourceImpl(gh<_i24.HttpClient>()));
    gh.factory<
        _i8.Converter<_i88.OrganizationListModel,
            _i89.OrganizationListEntity>>(() => _i90.GeneralResponseMapper(
        gh<_i8.Converter<_i37.CurrentOrderModel, _i38.CurrentOrderEntity>>()));
    gh.factory<_i91.CreateOrganizationRepo>(() =>
        _i92.CreateOrganizationRepoImpl(
            gh<_i74.CreateOrganizationDataSource>()));
    gh.factory<_i93.PurchasesBloc>(
        () => _i93.PurchasesBloc(gh<_i71.GetAllPurchasesUseCase>()));
    gh.factory<_i94.OrderPlaceRepo>(
        () => _i95.CreateOrderRepoImpl(gh<_i78.OrderPlaceDataSource>()));
    gh.factory<_i96.ServiceDetailDataSource>(
        () => _i97.ServiceDetailDataSourceImpl(gh<_i24.HttpClient>()));
    gh.factory<_i98.EquipmentDetailDataSource>(
        () => _i99.EquipmentDetailDataSourceImpl(gh<_i24.HttpClient>()));
    gh.singleton<_i100.GetProfileUseCase>(
        () => _i100.GetProfileUseCase(repo: gh<_i76.OrganizationRepo>()));
    gh.factory<_i101.MarketplaceRepo>(() => _i102.MarketplaceRepoImpl(
          gh<_i32.MarketplaceDataSource>(),
          gh<
              _i8.Converter<_i12.GeneralResponceModel,
                  _i13.GeneralResponceEntity>>(),
        ));
    gh.factory<_i103.EmployeeDataSource>(
        () => _i104.OrganizationDataSourceImpl(gh<_i24.HttpClient>()));
    gh.factory<_i105.RegistrationRepo>(
        () => _i106.RegistrationRepoImpl(gh<_i54.RegistrationDataSource>()));
    gh.singleton<_i107.RegistrationUseCase>(
        () => _i107.RegistrationUseCase(repo: gh<_i105.RegistrationRepo>()));
    gh.singleton<_i108.OrganizationBloc>(
        () => _i108.OrganizationBloc(gh<_i100.GetProfileUseCase>()));
    gh.factory<_i109.EquipmentDetailRepo>(() => _i110.EquipmentDetailRepoImpl(
          gh<_i98.EquipmentDetailDataSource>(),
          gh<
              _i8.Converter<_i40.EquipmentDetailModel,
                  _i41.EquipmentDetailEntity>>(),
        ));
    gh.factory<_i111.InviteEmployeeDataSource>(
        () => _i112.InviteEmployeeDataSourceImpl(gh<_i24.HttpClient>()));
    gh.factory<_i113.ProfileBloc>(() => _i113.ProfileBloc(
          sendSubscriptionUseCase: gh<_i67.SendSubscriptionUseCase>(),
          signOutUseCase: gh<_i68.SignOutUseCase>(),
          getProfileInfoUseCase: gh<_i66.GetProfileInfoUseCase>(),
          editProfileInfoUseCase: gh<_i65.EditProfileInfoUseCase>(),
          uploadImageUseCase: gh<_i69.UploadImageUseCase>(),
        ));
    gh.factory<_i114.ConfirmationRepo>(() => _i115.ConfirmationRepoImpl(
          gh<_i86.ConfirmationDataSource>(),
          gh<_i4.AuthService>(),
        ));
    gh.factory<_i116.EmployeeRepo>(() => _i117.EmployeeRepoImpl(
          gh<_i103.EmployeeDataSource>(),
          gh<_i8.Converter<_i43.EmployeeModel, _i44.EmployeeEntity>>(),
          gh<
              _i8.Converter<_i49.EmployeeDetailModel,
                  _i50.EmployeeDetailEntity>>(),
        ));
    gh.factory<_i118.LoginBloc>(
        () => _i118.LoginBloc(loginUseCase: gh<_i73.LoginUseCase>()));
    gh.factory<_i119.CurrentOrdersRepo>(() => _i120.CurrentOrderRepoImpl(
          gh<_i27.CurrentOrderDataSource>(),
          gh<
              _i8.Converter<_i88.OrganizationListModel,
                  _i89.OrganizationListEntity>>(),
        ));
    gh.singleton<_i121.AddPositionUseCase>(
        () => _i121.AddPositionUseCase(repo: gh<_i80.PositionsRepo>()));
    gh.singleton<_i122.GetAllPositionsUseCase>(
        () => _i122.GetAllPositionsUseCase(repo: gh<_i80.PositionsRepo>()));
    gh.factory<_i123.OrderDetailBloc>(() => _i123.OrderDetailBloc(
          gh<_i84.GetOrderByIdUseCase>(),
          gh<_i85.RequestToExecuteUseCase>(),
        ));
    gh.singleton<_i124.GetAllEmployeesUseCase>(
        () => _i124.GetAllEmployeesUseCase(repo: gh<_i116.EmployeeRepo>()));
    gh.singleton<_i125.GetEmployeeDetailUseCase>(
        () => _i125.GetEmployeeDetailUseCase(repo: gh<_i116.EmployeeRepo>()));
    gh.singleton<_i126.GetEuipmentsUseCase>(
        () => _i126.GetEuipmentsUseCase(repo: gh<_i101.MarketplaceRepo>()));
    gh.singleton<_i127.GetOrdersUseCase>(
        () => _i127.GetOrdersUseCase(repo: gh<_i101.MarketplaceRepo>()));
    gh.singleton<_i128.GetServicesUseCase>(
        () => _i128.GetServicesUseCase(repo: gh<_i101.MarketplaceRepo>()));
    gh.singleton<_i129.PositionsBloc>(() => _i129.PositionsBloc(
          gh<_i121.AddPositionUseCase>(),
          gh<_i122.GetAllPositionsUseCase>(),
        ));
    gh.factory<_i130.InviteEmployeeRepo>(() =>
        _i131.InviteEmployeeRepoImpl(gh<_i111.InviteEmployeeDataSource>()));
    gh.factory<_i132.RegistrationBloc>(() => _i132.RegistrationBloc(
        registrationUseCase: gh<_i107.RegistrationUseCase>()));
    gh.singleton<_i133.ConfirmationUseCase>(
        () => _i133.ConfirmationUseCase(repo: gh<_i114.ConfirmationRepo>()));
    gh.singleton<_i134.ResendPinUseCase>(
        () => _i134.ResendPinUseCase(repo: gh<_i114.ConfirmationRepo>()));
    gh.singleton<_i135.CreateOrganizationUseCase>(() =>
        _i135.CreateOrganizationUseCase(
            repo: gh<_i91.CreateOrganizationRepo>()));
    gh.singleton<_i136.MarketplaceBloc>(() => _i136.MarketplaceBloc(
          gh<_i126.GetEuipmentsUseCase>(),
          gh<_i127.GetOrdersUseCase>(),
          gh<_i128.GetServicesUseCase>(),
        ));
    gh.singleton<_i137.CreateEquipmentUseCase>(
        () => _i137.CreateEquipmentUseCase(repo: gh<_i94.OrderPlaceRepo>()));
    gh.singleton<_i138.CreateOrderUseCase>(
        () => _i138.CreateOrderUseCase(repo: gh<_i94.OrderPlaceRepo>()));
    gh.singleton<_i139.CreateServiceUseCase>(
        () => _i139.CreateServiceUseCase(repo: gh<_i94.OrderPlaceRepo>()));
    gh.singleton<_i140.OrderPlaceBloc>(() => _i140.OrderPlaceBloc(
          gh<_i137.CreateEquipmentUseCase>(),
          gh<_i139.CreateServiceUseCase>(),
          gh<_i138.CreateOrderUseCase>(),
        ));
    gh.factory<_i141.ServiceDetailRepo>(() => _i142.ServiceDetailRepoImpl(
          gh<_i96.ServiceDetailDataSource>(),
          gh<_i8.Converter<_i9.ServiceDetailModel, _i10.ServiceDetailEntity>>(),
        ));
    gh.singleton<_i143.BuyEquipmentIdUseCase>(() =>
        _i143.BuyEquipmentIdUseCase(repo: gh<_i109.EquipmentDetailRepo>()));
    gh.singleton<_i144.GetEuipmentByIdUseCase>(() =>
        _i144.GetEuipmentByIdUseCase(repo: gh<_i109.EquipmentDetailRepo>()));
    gh.singleton<_i145.InviteEmployeeUseCase>(() =>
        _i145.InviteEmployeeUseCase(repo: gh<_i130.InviteEmployeeRepo>()));
    gh.singleton<_i146.ConfirmationBloc>(() => _i146.ConfirmationBloc(
          gh<_i133.ConfirmationUseCase>(),
          gh<_i134.ResendPinUseCase>(),
        ));
    gh.singleton<_i147.GetAllOrdersUseCase>(
        () => _i147.GetAllOrdersUseCase(repo: gh<_i119.CurrentOrdersRepo>()));
    gh.singleton<_i148.ChangeOrderStatusUseCase>(() =>
        _i148.ChangeOrderStatusUseCase(repo: gh<_i119.CurrentOrdersRepo>()));
    gh.singleton<_i149.EmployeeBloc>(() => _i149.EmployeeBloc(
          gh<_i124.GetAllEmployeesUseCase>(),
          gh<_i125.GetEmployeeDetailUseCase>(),
        ));
    gh.singleton<_i150.CreateOrganizationBloc>(() =>
        _i150.CreateOrganizationBloc(gh<_i135.CreateOrganizationUseCase>()));
    gh.singleton<_i151.CurrentOrderBloc>(
        () => _i151.CurrentOrderBloc(gh<_i147.GetAllOrdersUseCase>()));
    gh.singleton<_i152.InviteEmployeeBloc>(
        () => _i152.InviteEmployeeBloc(gh<_i145.InviteEmployeeUseCase>()));
    gh.singleton<_i153.GetServiceByIdUseCase>(
        () => _i153.GetServiceByIdUseCase(repo: gh<_i141.ServiceDetailRepo>()));
    gh.factory<_i154.EquipmentDetailBloc>(() => _i154.EquipmentDetailBloc(
          gh<_i144.GetEuipmentByIdUseCase>(),
          gh<_i143.BuyEquipmentIdUseCase>(),
        ));
    gh.factory<_i155.ServiceDetailBloc>(
        () => _i155.ServiceDetailBloc(gh<_i153.GetServiceByIdUseCase>()));
    return this;
  }
}

class _$RegisterModule extends _i156.RegisterModule {}
