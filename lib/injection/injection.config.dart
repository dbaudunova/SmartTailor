// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:convert' as _i9;

import 'package:dio/dio.dart' as _i3;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i8;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:neobis_smart_tailor/core/app/router/app_routes.dart' as _i81;
import 'package:neobis_smart_tailor/core/network/http_client.dart' as _i25;
import 'package:neobis_smart_tailor/core/services/auth_service.dart' as _i4;
import 'package:neobis_smart_tailor/core/services/secure_storage_service.dart'
    as _i38;
import 'package:neobis_smart_tailor/features/confirmation/data/data_source/confirmation_data_source.dart'
    as _i97;
import 'package:neobis_smart_tailor/features/confirmation/data/data_source/impl/confirmation_data_source_impl.dart'
    as _i98;
import 'package:neobis_smart_tailor/features/confirmation/data/repository/confirmation_repo_impl.dart'
    as _i126;
import 'package:neobis_smart_tailor/features/confirmation/domain/repository/confirmation_repo.dart'
    as _i125;
import 'package:neobis_smart_tailor/features/confirmation/domain/useCase/confirmation_use_case.dart'
    as _i144;
import 'package:neobis_smart_tailor/features/confirmation/domain/useCase/resend_pin_use_case%20copy.dart'
    as _i145;
import 'package:neobis_smart_tailor/features/confirmation/presentation/bloc/confirmation_bloc/confirmation_bloc.dart'
    as _i157;
import 'package:neobis_smart_tailor/features/confirmation/presentation/bloc/timer_bloc/timer_bloc.dart'
    as _i5;
import 'package:neobis_smart_tailor/features/login/data/data_source/impl/login_data_source_impl.dart'
    as _i40;
import 'package:neobis_smart_tailor/features/login/data/data_source/login_data_source.dart'
    as _i39;
import 'package:neobis_smart_tailor/features/login/data/repository/login_repo_impl.dart'
    as _i63;
import 'package:neobis_smart_tailor/features/login/domain/repository/login_repo.dart'
    as _i62;
import 'package:neobis_smart_tailor/features/login/domain/useCase/login_use_case.dart'
    as _i82;
import 'package:neobis_smart_tailor/features/login/presentation/bloc/login_bloc.dart'
    as _i129;
import 'package:neobis_smart_tailor/features/marketplace/data/data_source/marketplace_data_source.dart'
    as _i33;
import 'package:neobis_smart_tailor/features/marketplace/data/data_source/marketplace_data_source_impl/marketplace_data_source_impl.dart'
    as _i34;
import 'package:neobis_smart_tailor/features/marketplace/data/mapper/common_converter.dart'
    as _i52;
import 'package:neobis_smart_tailor/features/marketplace/data/mapper/general_responce_converter.dart'
    as _i15;
import 'package:neobis_smart_tailor/features/marketplace/data/models/general_model/general_model.dart'
    as _i50;
import 'package:neobis_smart_tailor/features/marketplace/data/models/general_responce/general_responce.dart'
    as _i13;
import 'package:neobis_smart_tailor/features/marketplace/data/repository/marketplace_repo_impl.dart'
    as _i113;
import 'package:neobis_smart_tailor/features/marketplace/domain/entitys/common_entity.dart'
    as _i51;
import 'package:neobis_smart_tailor/features/marketplace/domain/entitys/general_responce_entity.dart'
    as _i14;
import 'package:neobis_smart_tailor/features/marketplace/domain/repository/marketplace_repo.dart'
    as _i112;
import 'package:neobis_smart_tailor/features/marketplace/domain/use_case/get_equipments_use_case.dart'
    as _i137;
import 'package:neobis_smart_tailor/features/marketplace/domain/use_case/get_orders_use_case.dart'
    as _i138;
import 'package:neobis_smart_tailor/features/marketplace/domain/use_case/get_services_ude_case.dart'
    as _i139;
import 'package:neobis_smart_tailor/features/marketplace/presentation/bloc/marketplace_bloc.dart'
    as _i147;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/equipment_detail_screen/data/data_source/equipment_detail_data_source.dart'
    as _i109;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/equipment_detail_screen/data/data_source/equipment_detail_data_source_impl/marketplace_data_source_impl.dart'
    as _i110;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/equipment_detail_screen/data/mapper/equipment_converter.dart'
    as _i46;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/equipment_detail_screen/data/models/equipment_detail_model/equipment_detail_model.dart'
    as _i44;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/equipment_detail_screen/data/repository/equipment_detail_repo_impl.dart'
    as _i122;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/equipment_detail_screen/domain/entitys/equipment_detail_entity.dart'
    as _i45;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/equipment_detail_screen/domain/repository/equipment_detail_repo.dart'
    as _i121;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/equipment_detail_screen/domain/use_case/buy_equipment_use_case%20copy.dart'
    as _i154;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/equipment_detail_screen/domain/use_case/get_equipmentby_id_use_case.dart'
    as _i155;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/equipment_detail_screen/presentation/bloc/equipment_detail_bloc.dart'
    as _i165;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/order_detail_screen/data/data_source/marketplace_detail_data_source_impl/order_data_source_impl.dart'
    as _i27;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/order_detail_screen/data/data_source/order_detail_data_source.dart'
    as _i26;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/order_detail_screen/data/mapper/order_converter.dart'
    as _i32;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/order_detail_screen/data/models/order_detail_model/order_detail_model.dart'
    as _i30;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/order_detail_screen/data/repository/order_detail_repo_impl.dart'
    as _i94;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/order_detail_screen/domain/entitys/order_detail_entity.dart'
    as _i31;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/order_detail_screen/domain/repository/order_detail_repo.dart'
    as _i93;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/order_detail_screen/domain/use_case/get_order_by_id_use_case.dart'
    as _i95;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/order_detail_screen/domain/use_case/request_to_execute_use_case%20copy.dart'
    as _i96;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/order_detail_screen/presentation/bloc/order_detail_bloc.dart'
    as _i134;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/service_detail_screen/data/data_source/marketplace_detail_data_source_impl/service_detail_data_source_impl.dart'
    as _i108;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/service_detail_screen/data/data_source/service_detail_data_source.dart'
    as _i107;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/service_detail_screen/data/mapper/service_converter%20copy.dart'
    as _i12;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/service_detail_screen/data/models/service_detail_model/service_detail_model.dart'
    as _i10;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/service_detail_screen/data/repository/service_detail_repo_impl.dart'
    as _i153;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/service_detail_screen/domain/entitys/service_detail_entity.dart'
    as _i11;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/service_detail_screen/domain/repository/service_detail_repo.dart'
    as _i152;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/service_detail_screen/domain/use_case/get_service_by_id_use_case.dart'
    as _i164;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/service_detail_screen/presentation/bloc/service_detail_bloc.dart'
    as _i166;
import 'package:neobis_smart_tailor/features/order_place/data/data_source/impl/order_place_data_source_impl.dart'
    as _i89;
import 'package:neobis_smart_tailor/features/order_place/data/data_source/order_place_data_source.dart'
    as _i88;
import 'package:neobis_smart_tailor/features/order_place/data/repository/order_place_repo_impl.dart'
    as _i106;
import 'package:neobis_smart_tailor/features/order_place/domain/repository/order_place_repo.dart'
    as _i105;
import 'package:neobis_smart_tailor/features/order_place/domain/useCase/create_equipment_use_case.dart'
    as _i148;
import 'package:neobis_smart_tailor/features/order_place/domain/useCase/create_order_use_case.dart'
    as _i149;
import 'package:neobis_smart_tailor/features/order_place/domain/useCase/create_service_use_case.dart'
    as _i150;
import 'package:neobis_smart_tailor/features/order_place/presentation/bloc/order_place_bloc.dart'
    as _i151;
import 'package:neobis_smart_tailor/features/organization/pages/create_organization/data/data_source/create_organization_data_source.dart'
    as _i83;
import 'package:neobis_smart_tailor/features/organization/pages/create_organization/data/data_source/impl/create_organization_data_source_impl.dart'
    as _i84;
import 'package:neobis_smart_tailor/features/organization/pages/create_organization/data/repository/create_organization_repo_impl.dart'
    as _i103;
import 'package:neobis_smart_tailor/features/organization/pages/create_organization/domain/repository/create_organization_repo.dart'
    as _i102;
import 'package:neobis_smart_tailor/features/organization/pages/create_organization/domain/use_case/create_organization_use_case.dart'
    as _i146;
import 'package:neobis_smart_tailor/features/organization/pages/create_organization/presentation/create_organization_bloc/create_organization_bloc.dart'
    as _i161;
import 'package:neobis_smart_tailor/features/organization/pages/current_order/data/converter/converter.dart'
    as _i43;
import 'package:neobis_smart_tailor/features/organization/pages/current_order/data/converter/organization_list_converter.dart'
    as _i101;
import 'package:neobis_smart_tailor/features/organization/pages/current_order/data/data_source/current_order_data_source.dart'
    as _i28;
import 'package:neobis_smart_tailor/features/organization/pages/current_order/data/data_source/impl/current_order_data_source_impl.dart'
    as _i29;
import 'package:neobis_smart_tailor/features/organization/pages/current_order/data/models/_model/current_order_model.dart'
    as _i41;
import 'package:neobis_smart_tailor/features/organization/pages/current_order/data/models/organization_list_model/organization_list_model.dart'
    as _i99;
import 'package:neobis_smart_tailor/features/organization/pages/current_order/data/repository/current_order_repo_impl.dart'
    as _i131;
import 'package:neobis_smart_tailor/features/organization/pages/current_order/domain/entitys/current_order_entity.dart'
    as _i42;
import 'package:neobis_smart_tailor/features/organization/pages/current_order/domain/entitys/organization_list_entity.dart'
    as _i100;
import 'package:neobis_smart_tailor/features/organization/pages/current_order/domain/repository/current_orders_repo.dart'
    as _i130;
import 'package:neobis_smart_tailor/features/organization/pages/current_order/domain/use_case/change_order_status_use_case.dart'
    as _i158;
import 'package:neobis_smart_tailor/features/organization/pages/current_order/domain/use_case/get_all_orders_use_case.dart'
    as _i159;
import 'package:neobis_smart_tailor/features/organization/pages/current_order/presentation/bloc/current_order_bloc.dart'
    as _i162;
import 'package:neobis_smart_tailor/features/organization/pages/employee/data/converter/employee_detail_converter.dart'
    as _i55;
import 'package:neobis_smart_tailor/features/organization/pages/employee/data/converter/employees_converter.dart'
    as _i49;
import 'package:neobis_smart_tailor/features/organization/pages/employee/data/data_source/employee_data_source.dart'
    as _i114;
import 'package:neobis_smart_tailor/features/organization/pages/employee/data/data_source/impl/employee_data_source_impl.dart'
    as _i115;
import 'package:neobis_smart_tailor/features/organization/pages/employee/data/models/employee_detail_model/employee_detail_model.dart'
    as _i53;
import 'package:neobis_smart_tailor/features/organization/pages/employee/data/models/employee_model/employee_model.dart'
    as _i47;
import 'package:neobis_smart_tailor/features/organization/pages/employee/data/repository/employee_repo_impl.dart'
    as _i128;
import 'package:neobis_smart_tailor/features/organization/pages/employee/domain/entitys/employee_detail_entity.dart'
    as _i54;
import 'package:neobis_smart_tailor/features/organization/pages/employee/domain/entitys/employee_entity.dart'
    as _i48;
import 'package:neobis_smart_tailor/features/organization/pages/employee/domain/repository/employees_repo.dart'
    as _i127;
import 'package:neobis_smart_tailor/features/organization/pages/employee/domain/use_case/get_all_employees_use_case.dart'
    as _i135;
import 'package:neobis_smart_tailor/features/organization/pages/employee/domain/use_case/get_employee_detail_use_case.dart'
    as _i136;
import 'package:neobis_smart_tailor/features/organization/pages/employee/presentation/bloc/employee_bloc.dart'
    as _i160;
import 'package:neobis_smart_tailor/features/organization/pages/history/presentation/bloc/history_bloc.dart'
    as _i6;
import 'package:neobis_smart_tailor/features/organization/pages/invite_employee/data/data_source/impl/invite_employee_data_source_impl.dart'
    as _i124;
import 'package:neobis_smart_tailor/features/organization/pages/invite_employee/data/data_source/invite_employee_data_source.dart'
    as _i123;
import 'package:neobis_smart_tailor/features/organization/pages/invite_employee/data/repository/invite_employee_repo_impl.dart'
    as _i142;
import 'package:neobis_smart_tailor/features/organization/pages/invite_employee/domain/repository/invite_employee_repo.dart'
    as _i141;
import 'package:neobis_smart_tailor/features/organization/pages/invite_employee/domain/use_case/invite_employee_use_case.dart'
    as _i156;
import 'package:neobis_smart_tailor/features/organization/pages/invite_employee/presentation/bloc/invite_employee_bloc.dart'
    as _i163;
import 'package:neobis_smart_tailor/features/organization/pages/organization/data/converter/organization_info_converter.dart'
    as _i21;
import 'package:neobis_smart_tailor/features/organization/pages/organization/data/data_source/impl/organization_data_source_impl.dart'
    as _i57;
import 'package:neobis_smart_tailor/features/organization/pages/organization/data/data_source/organization_data_source.dart'
    as _i56;
import 'package:neobis_smart_tailor/features/organization/pages/organization/data/models/organization_info_model/organization_info_model.dart'
    as _i19;
import 'package:neobis_smart_tailor/features/organization/pages/organization/data/repository/organization_repo_impl.dart'
    as _i87;
import 'package:neobis_smart_tailor/features/organization/pages/organization/domain/entitys/organization_info_entity.dart'
    as _i20;
import 'package:neobis_smart_tailor/features/organization/pages/organization/domain/repository/organization_repo.dart'
    as _i86;
import 'package:neobis_smart_tailor/features/organization/pages/organization/domain/use_case/get_profile_use_case.dart'
    as _i111;
import 'package:neobis_smart_tailor/features/organization/pages/organization/presentation/bloc/organization_bloc.dart'
    as _i120;
import 'package:neobis_smart_tailor/features/organization/pages/positions/data/converter/converter.dart'
    as _i24;
import 'package:neobis_smart_tailor/features/organization/pages/positions/data/data_source/impl/positions_data_source_impl.dart'
    as _i61;
import 'package:neobis_smart_tailor/features/organization/pages/positions/data/data_source/positions_data_source.dart'
    as _i60;
import 'package:neobis_smart_tailor/features/organization/pages/positions/data/models/_model/position_model.dart'
    as _i22;
import 'package:neobis_smart_tailor/features/organization/pages/positions/data/repository/position_repo_impl.dart'
    as _i91;
import 'package:neobis_smart_tailor/features/organization/pages/positions/domain/entitys/position_entity.dart'
    as _i23;
import 'package:neobis_smart_tailor/features/organization/pages/positions/domain/repository/positions_repo.dart'
    as _i90;
import 'package:neobis_smart_tailor/features/organization/pages/positions/domain/use_case/add_position_use_case.dart'
    as _i132;
import 'package:neobis_smart_tailor/features/organization/pages/positions/domain/use_case/get_all_positions_use_case.dart'
    as _i133;
import 'package:neobis_smart_tailor/features/organization/pages/positions/presentation/bloc/positions_bloc.dart'
    as _i140;
import 'package:neobis_smart_tailor/features/profile/data/converter/histoty/history_converter.dart'
    as _i37;
import 'package:neobis_smart_tailor/features/profile/data/converter/histoty/history_list_converter.dart'
    as _i64;
import 'package:neobis_smart_tailor/features/profile/data/converter/purchases/purchaese_converter.dart'
    as _i18;
import 'package:neobis_smart_tailor/features/profile/data/converter/purchases/purchases_list_converter.dart'
    as _i65;
import 'package:neobis_smart_tailor/features/profile/data/model/history_model/my_history_model.dart'
    as _i35;
import 'package:neobis_smart_tailor/features/profile/data/model/my_purchases/my_purchases_list_model.dart'
    as _i16;
import 'package:neobis_smart_tailor/features/profile/domain/model/my_history_entity.dart'
    as _i36;
import 'package:neobis_smart_tailor/features/profile/domain/model/my_purchases.dart'
    as _i17;
import 'package:neobis_smart_tailor/features/profile/domain/repository/profile_repo.dart'
    as _i67;
import 'package:neobis_smart_tailor/features/profile/domain/use_case/edit_profile_info_use_case.dart'
    as _i66;
import 'package:neobis_smart_tailor/features/profile/domain/use_case/get_all_purchases_use_case.dart'
    as _i68;
import 'package:neobis_smart_tailor/features/profile/domain/use_case/get_equipment_detailed_by_id_use_case.dart'
    as _i78;
import 'package:neobis_smart_tailor/features/profile/domain/use_case/get_my_equipments_use_case.dart'
    as _i69;
import 'package:neobis_smart_tailor/features/profile/domain/use_case/get_my_orders_use_case.dart'
    as _i70;
import 'package:neobis_smart_tailor/features/profile/domain/use_case/get_my_services_use_case.dart'
    as _i71;
import 'package:neobis_smart_tailor/features/profile/domain/use_case/get_order_detailed_by_id_use_case.dart'
    as _i79;
import 'package:neobis_smart_tailor/features/profile/domain/use_case/get_order_history_for_user_use_case.dart'
    as _i72;
import 'package:neobis_smart_tailor/features/profile/domain/use_case/get_profile_info_use_case.dart'
    as _i73;
import 'package:neobis_smart_tailor/features/profile/domain/use_case/get_service_detailed_by_id_use_case.dart'
    as _i80;
import 'package:neobis_smart_tailor/features/profile/domain/use_case/load_more_purchases_use_case.dart'
    as _i74;
import 'package:neobis_smart_tailor/features/profile/domain/use_case/send_subscription_use_case.dart'
    as _i75;
import 'package:neobis_smart_tailor/features/profile/domain/use_case/sign_out_use_case.dart'
    as _i76;
import 'package:neobis_smart_tailor/features/profile/domain/use_case/upload_image_use_case.dart'
    as _i77;
import 'package:neobis_smart_tailor/features/profile/presentation/bloc/announcement/announcement_bloc.dart'
    as _i118;
import 'package:neobis_smart_tailor/features/profile/presentation/bloc/profile/profile_bloc.dart'
    as _i85;
import 'package:neobis_smart_tailor/features/profile/presentation/pages/order_history/bloc/order_history_bloc.dart'
    as _i92;
import 'package:neobis_smart_tailor/features/profile/presentation/pages/purchases/bloc/purchases_bloc.dart'
    as _i104;
import 'package:neobis_smart_tailor/features/registration/data/data_source/impl/registration_data_source_impl.dart'
    as _i59;
import 'package:neobis_smart_tailor/features/registration/data/data_source/registration_data_source.dart'
    as _i58;
import 'package:neobis_smart_tailor/features/registration/data/repository/registration_repo_impl.dart'
    as _i117;
import 'package:neobis_smart_tailor/features/registration/domain/repository/registration_repo.dart'
    as _i116;
import 'package:neobis_smart_tailor/features/registration/domain/useCase/registration_use_case.dart'
    as _i119;
import 'package:neobis_smart_tailor/features/registration/presentation/bloc/registration_bloc.dart'
    as _i143;
import 'package:neobis_smart_tailor/injection/injection_module.dart' as _i167;
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
    gh.singleton<_i6.HistoryBloc>(() => _i6.HistoryBloc());
    await gh.singletonAsync<_i7.SharedPreferences>(
      () => registerModule.prefs,
      preResolve: true,
    );
    gh.singleton<_i8.FlutterSecureStorage>(() => registerModule.storage);
    gh.factory<
            _i9.Converter<_i10.ServiceDetailModel, _i11.ServiceDetailEntity>>(
        () => _i12.ServiceDetailMapper());
    gh.factory<
        _i9.Converter<_i13.GeneralResponceModel,
            _i14.GeneralResponceEntity>>(() => _i15.GeneralResponceMapper());
    gh.factory<_i9.Converter<_i16.PurchasesModel, _i17.PurchasesEntity>>(
        () => _i18.GeneralResponseMapper());
    gh.factory<
        _i9.Converter<_i19.OrganizationInfoModel,
            _i20.OrganizationInfoEntity>>(() => _i21.GeneralResponceMapper());
    gh.factory<
            _i9.Converter<List<_i22.PositionModel>, List<_i23.PositionEntity>>>(
        () => _i24.PositionModelListToEntityListConverter());
    gh.singleton<_i25.HttpClient>(() => _i25.HttpClient(gh<_i3.Dio>()));
    gh.factory<_i26.OrderDetailDataSource>(
        () => _i27.OrderDetailDataSourceImpl(gh<_i25.HttpClient>()));
    gh.factory<_i28.CurrentOrderDataSource>(
        () => _i29.CurrentOrderDataSourceImpl(gh<_i25.HttpClient>()));
    gh.factory<_i9.Converter<_i30.OrderDetailModel, _i31.OrderDetailEntity>>(
        () => _i32.OrderDetailMapper());
    gh.factory<_i33.MarketplaceDataSource>(
        () => _i34.MarketplaceDataSourceImpl(gh<_i25.HttpClient>()));
    gh.singleton<_i5.TimerBloc>(() => _i5.TimerBloc(ticker: gh<_i5.Ticker>()));
    gh.factory<_i9.Converter<_i35.HistoryModel, _i36.HistoryEntity>>(
        () => _i37.GeneralResponseMapper());
    gh.singleton<_i38.SecureStorageService>(
        () => _i38.SecureStorageService(gh<_i8.FlutterSecureStorage>()));
    gh.factory<_i39.LoginDataSource>(
        () => _i40.LoginDataSourceImpl(gh<_i25.HttpClient>()));
    gh.factory<_i9.Converter<_i41.CurrentOrderModel, _i42.CurrentOrderEntity>>(
        () => _i43.GeneralResponceMapper());
    gh.factory<
        _i9.Converter<_i44.EquipmentDetailModel,
            _i45.EquipmentDetailEntity>>(() => _i46.EquipmentDetailMapper());
    gh.factory<_i9.Converter<_i47.EmployeeModel, _i48.EmployeeEntity>>(
        () => _i49.GeneralResponceMapper());
    gh.factory<_i9.Converter<_i50.GeneralOrderModel, _i51.GeneralEntity>>(
        () => _i52.EquipmentMapper());
    gh.factory<
            _i9.Converter<_i53.EmployeeDetailModel, _i54.EmployeeDetailEntity>>(
        () => _i55.GeneralResponceMapper());
    gh.factory<_i56.OrganizationDataSource>(
        () => _i57.OrganizationDataSourceImpl(gh<_i25.HttpClient>()));
    gh.factory<_i58.RegistrationDataSource>(
        () => _i59.RegistrationDataSourceImpl(gh<_i25.HttpClient>()));
    gh.factory<_i60.PositionsDataSource>(
        () => _i61.PositionsSourceImpl(gh<_i25.HttpClient>()));
    gh.factory<_i62.LoginRepo>(
        () => _i63.LoginRepoImpl(gh<_i39.LoginDataSource>()));
    gh.factory<_i9.Converter<_i35.MyHistoryModel, _i36.MyHistoryEntity>>(() =>
        _i64.GeneralResponseMapper(
            gh<_i9.Converter<_i35.HistoryModel, _i36.HistoryEntity>>()));
    gh.factory<
            _i9.Converter<_i16.PurchasesListModel, _i17.PurchasesListEntity>>(
        () => _i65.GeneralResponseMapper(
            gh<_i9.Converter<_i16.PurchasesModel, _i17.PurchasesEntity>>()));
    gh.singleton<_i66.EditProfileInfoUseCase>(
        () => _i66.EditProfileInfoUseCase(repo: gh<_i67.ProfileRepo>()));
    gh.singleton<_i68.GetAllPurchasesUseCase>(
        () => _i68.GetAllPurchasesUseCase(repo: gh<_i67.ProfileRepo>()));
    gh.singleton<_i69.GetMyEquipmentsUseCase>(
        () => _i69.GetMyEquipmentsUseCase(repo: gh<_i67.ProfileRepo>()));
    gh.singleton<_i70.GetMyOrdersUseCase>(
        () => _i70.GetMyOrdersUseCase(repo: gh<_i67.ProfileRepo>()));
    gh.singleton<_i71.GetMyServicesUseCase>(
        () => _i71.GetMyServicesUseCase(repo: gh<_i67.ProfileRepo>()));
    gh.singleton<_i72.GetOrderHistoryForUserUseCase>(
        () => _i72.GetOrderHistoryForUserUseCase(repo: gh<_i67.ProfileRepo>()));
    gh.singleton<_i73.GetProfileInfoUseCase>(
        () => _i73.GetProfileInfoUseCase(repo: gh<_i67.ProfileRepo>()));
    gh.singleton<_i74.LoadMorePurchasesUseCase>(
        () => _i74.LoadMorePurchasesUseCase(repo: gh<_i67.ProfileRepo>()));
    gh.singleton<_i75.SendSubscriptionUseCase>(
        () => _i75.SendSubscriptionUseCase(repo: gh<_i67.ProfileRepo>()));
    gh.singleton<_i76.SignOutUseCase>(
        () => _i76.SignOutUseCase(repo: gh<_i67.ProfileRepo>()));
    gh.singleton<_i77.UploadImageUseCase>(
        () => _i77.UploadImageUseCase(repo: gh<_i67.ProfileRepo>()));
    gh.singleton<_i78.GetEquipmentDetailedByIdUseCase>(() =>
        _i78.GetEquipmentDetailedByIdUseCase(repo: gh<_i67.ProfileRepo>()));
    gh.singleton<_i79.GetOrderDetailedByIdUseCase>(
        () => _i79.GetOrderDetailedByIdUseCase(repo: gh<_i67.ProfileRepo>()));
    gh.singleton<_i80.GetServiceDetailedByIdUseCase>(
        () => _i80.GetServiceDetailedByIdUseCase(repo: gh<_i67.ProfileRepo>()));
    gh.singleton<_i81.AppRouter>(() => _i81.AppRouter(gh<_i4.AuthService>()));
    gh.singleton<_i82.LoginUseCase>(
        () => _i82.LoginUseCase(repo: gh<_i62.LoginRepo>()));
    gh.factory<_i83.CreateOrganizationDataSource>(
        () => _i84.CreateOrganizationDataSourceImpl(
              gh<_i25.HttpClient>(),
              gh<_i4.AuthService>(),
            ));
    gh.factory<_i85.ProfileBloc>(() => _i85.ProfileBloc(
          sendSubscriptionUseCase: gh<_i75.SendSubscriptionUseCase>(),
          signOutUseCase: gh<_i76.SignOutUseCase>(),
          getProfileInfoUseCase: gh<_i73.GetProfileInfoUseCase>(),
          editProfileInfoUseCase: gh<_i66.EditProfileInfoUseCase>(),
          uploadImageUseCase: gh<_i77.UploadImageUseCase>(),
          getMyOrdersUseCase: gh<_i70.GetMyOrdersUseCase>(),
          getMyEquipmentsUseCase: gh<_i69.GetMyEquipmentsUseCase>(),
          getMyServicesUseCase: gh<_i71.GetMyServicesUseCase>(),
        ));
    gh.factory<_i86.OrganizationRepo>(() => _i87.OrganizationRepoImpl(
          gh<_i56.OrganizationDataSource>(),
          gh<
              _i9.Converter<_i19.OrganizationInfoModel,
                  _i20.OrganizationInfoEntity>>(),
        ));
    gh.factory<_i88.OrderPlaceDataSource>(() => _i89.OrderPlaceDataSourceImpl(
          gh<_i25.HttpClient>(),
          gh<_i4.AuthService>(),
        ));
    gh.factory<_i90.PositionsRepo>(() => _i91.PositionRepoImpl(
          gh<_i60.PositionsDataSource>(),
          gh<
              _i9.Converter<List<_i22.PositionModel>,
                  List<_i23.PositionEntity>>>(),
        ));
    gh.factory<_i92.OrderHistoryBloc>(
        () => _i92.OrderHistoryBloc(gh<_i72.GetOrderHistoryForUserUseCase>()));
    gh.factory<_i93.OrderDetailRepo>(() => _i94.OrderDetailRepoImpl(
          gh<_i26.OrderDetailDataSource>(),
          gh<_i9.Converter<_i30.OrderDetailModel, _i31.OrderDetailEntity>>(),
        ));
    gh.singleton<_i95.GetOrderByIdUseCase>(
        () => _i95.GetOrderByIdUseCase(repo: gh<_i93.OrderDetailRepo>()));
    gh.singleton<_i96.RequestToExecuteUseCase>(
        () => _i96.RequestToExecuteUseCase(repo: gh<_i93.OrderDetailRepo>()));
    gh.factory<_i97.ConfirmationDataSource>(
        () => _i98.ConfirmationDataSourceImpl(gh<_i25.HttpClient>()));
    gh.factory<
        _i9.Converter<_i99.OrganizationListModel,
            _i100.OrganizationListEntity>>(() => _i101.GeneralResponseMapper(
        gh<_i9.Converter<_i41.CurrentOrderModel, _i42.CurrentOrderEntity>>()));
    gh.factory<_i102.CreateOrganizationRepo>(() =>
        _i103.CreateOrganizationRepoImpl(
            gh<_i83.CreateOrganizationDataSource>()));
    gh.factory<_i104.PurchasesBloc>(() => _i104.PurchasesBloc(
          gh<_i68.GetAllPurchasesUseCase>(),
          gh<_i74.LoadMorePurchasesUseCase>(),
        ));
    gh.factory<_i105.OrderPlaceRepo>(
        () => _i106.CreateOrderRepoImpl(gh<_i88.OrderPlaceDataSource>()));
    gh.factory<_i107.ServiceDetailDataSource>(
        () => _i108.ServiceDetailDataSourceImpl(gh<_i25.HttpClient>()));
    gh.factory<_i109.EquipmentDetailDataSource>(
        () => _i110.EquipmentDetailDataSourceImpl(gh<_i25.HttpClient>()));
    gh.singleton<_i111.GetProfileUseCase>(
        () => _i111.GetProfileUseCase(repo: gh<_i86.OrganizationRepo>()));
    gh.factory<_i112.MarketplaceRepo>(() => _i113.MarketplaceRepoImpl(
          gh<_i33.MarketplaceDataSource>(),
          gh<
              _i9.Converter<_i13.GeneralResponceModel,
                  _i14.GeneralResponceEntity>>(),
        ));
    gh.factory<_i114.EmployeeDataSource>(
        () => _i115.OrganizationDataSourceImpl(gh<_i25.HttpClient>()));
    gh.factory<_i116.RegistrationRepo>(
        () => _i117.RegistrationRepoImpl(gh<_i58.RegistrationDataSource>()));
    gh.factory<_i118.AnnouncementBloc>(() => _i118.AnnouncementBloc(
          gh<_i79.GetOrderDetailedByIdUseCase>(),
          gh<_i80.GetServiceDetailedByIdUseCase>(),
          gh<_i78.GetEquipmentDetailedByIdUseCase>(),
        ));
    gh.singleton<_i119.RegistrationUseCase>(
        () => _i119.RegistrationUseCase(repo: gh<_i116.RegistrationRepo>()));
    gh.singleton<_i120.OrganizationBloc>(
        () => _i120.OrganizationBloc(gh<_i111.GetProfileUseCase>()));
    gh.factory<_i121.EquipmentDetailRepo>(() => _i122.EquipmentDetailRepoImpl(
          gh<_i109.EquipmentDetailDataSource>(),
          gh<
              _i9.Converter<_i44.EquipmentDetailModel,
                  _i45.EquipmentDetailEntity>>(),
        ));
    gh.factory<_i123.InviteEmployeeDataSource>(
        () => _i124.InviteEmployeeDataSourceImpl(gh<_i25.HttpClient>()));
    gh.factory<_i125.ConfirmationRepo>(() => _i126.ConfirmationRepoImpl(
          gh<_i97.ConfirmationDataSource>(),
          gh<_i4.AuthService>(),
        ));
    gh.factory<_i127.EmployeeRepo>(() => _i128.EmployeeRepoImpl(
          gh<_i114.EmployeeDataSource>(),
          gh<_i9.Converter<_i47.EmployeeModel, _i48.EmployeeEntity>>(),
          gh<
              _i9.Converter<_i53.EmployeeDetailModel,
                  _i54.EmployeeDetailEntity>>(),
        ));
    gh.factory<_i129.LoginBloc>(
        () => _i129.LoginBloc(loginUseCase: gh<_i82.LoginUseCase>()));
    gh.factory<_i130.CurrentOrdersRepo>(() => _i131.CurrentOrderRepoImpl(
          gh<_i28.CurrentOrderDataSource>(),
          gh<
              _i9.Converter<_i99.OrganizationListModel,
                  _i100.OrganizationListEntity>>(),
        ));
    gh.singleton<_i132.AddPositionUseCase>(
        () => _i132.AddPositionUseCase(repo: gh<_i90.PositionsRepo>()));
    gh.singleton<_i133.GetAllPositionsUseCase>(
        () => _i133.GetAllPositionsUseCase(repo: gh<_i90.PositionsRepo>()));
    gh.factory<_i134.OrderDetailBloc>(() => _i134.OrderDetailBloc(
          gh<_i95.GetOrderByIdUseCase>(),
          gh<_i96.RequestToExecuteUseCase>(),
        ));
    gh.singleton<_i135.GetAllEmployeesUseCase>(
        () => _i135.GetAllEmployeesUseCase(repo: gh<_i127.EmployeeRepo>()));
    gh.singleton<_i136.GetEmployeeDetailUseCase>(
        () => _i136.GetEmployeeDetailUseCase(repo: gh<_i127.EmployeeRepo>()));
    gh.singleton<_i137.GetEuipmentsUseCase>(
        () => _i137.GetEuipmentsUseCase(repo: gh<_i112.MarketplaceRepo>()));
    gh.singleton<_i138.GetOrdersUseCase>(
        () => _i138.GetOrdersUseCase(repo: gh<_i112.MarketplaceRepo>()));
    gh.singleton<_i139.GetServicesUseCase>(
        () => _i139.GetServicesUseCase(repo: gh<_i112.MarketplaceRepo>()));
    gh.singleton<_i140.PositionsBloc>(() => _i140.PositionsBloc(
          gh<_i132.AddPositionUseCase>(),
          gh<_i133.GetAllPositionsUseCase>(),
        ));
    gh.factory<_i141.InviteEmployeeRepo>(() =>
        _i142.InviteEmployeeRepoImpl(gh<_i123.InviteEmployeeDataSource>()));
    gh.factory<_i143.RegistrationBloc>(() => _i143.RegistrationBloc(
        registrationUseCase: gh<_i119.RegistrationUseCase>()));
    gh.singleton<_i144.ConfirmationUseCase>(
        () => _i144.ConfirmationUseCase(repo: gh<_i125.ConfirmationRepo>()));
    gh.singleton<_i145.ResendPinUseCase>(
        () => _i145.ResendPinUseCase(repo: gh<_i125.ConfirmationRepo>()));
    gh.singleton<_i146.CreateOrganizationUseCase>(() =>
        _i146.CreateOrganizationUseCase(
            repo: gh<_i102.CreateOrganizationRepo>()));
    gh.singleton<_i147.MarketplaceBloc>(() => _i147.MarketplaceBloc(
          gh<_i137.GetEuipmentsUseCase>(),
          gh<_i138.GetOrdersUseCase>(),
          gh<_i139.GetServicesUseCase>(),
        ));
    gh.singleton<_i148.CreateEquipmentUseCase>(
        () => _i148.CreateEquipmentUseCase(repo: gh<_i105.OrderPlaceRepo>()));
    gh.singleton<_i149.CreateOrderUseCase>(
        () => _i149.CreateOrderUseCase(repo: gh<_i105.OrderPlaceRepo>()));
    gh.singleton<_i150.CreateServiceUseCase>(
        () => _i150.CreateServiceUseCase(repo: gh<_i105.OrderPlaceRepo>()));
    gh.singleton<_i151.OrderPlaceBloc>(() => _i151.OrderPlaceBloc(
          gh<_i148.CreateEquipmentUseCase>(),
          gh<_i150.CreateServiceUseCase>(),
          gh<_i149.CreateOrderUseCase>(),
        ));
    gh.factory<_i152.ServiceDetailRepo>(() => _i153.ServiceDetailRepoImpl(
          gh<_i107.ServiceDetailDataSource>(),
          gh<
              _i9
              .Converter<_i10.ServiceDetailModel, _i11.ServiceDetailEntity>>(),
        ));
    gh.singleton<_i154.BuyEquipmentIdUseCase>(() =>
        _i154.BuyEquipmentIdUseCase(repo: gh<_i121.EquipmentDetailRepo>()));
    gh.singleton<_i155.GetEuipmentByIdUseCase>(() =>
        _i155.GetEuipmentByIdUseCase(repo: gh<_i121.EquipmentDetailRepo>()));
    gh.singleton<_i156.InviteEmployeeUseCase>(() =>
        _i156.InviteEmployeeUseCase(repo: gh<_i141.InviteEmployeeRepo>()));
    gh.singleton<_i157.ConfirmationBloc>(() => _i157.ConfirmationBloc(
          gh<_i144.ConfirmationUseCase>(),
          gh<_i145.ResendPinUseCase>(),
        ));
    gh.singleton<_i158.ChangeOrderStatusUseCase>(() =>
        _i158.ChangeOrderStatusUseCase(repo: gh<_i130.CurrentOrdersRepo>()));
    gh.singleton<_i159.GetAllOrdersUseCase>(
        () => _i159.GetAllOrdersUseCase(repo: gh<_i130.CurrentOrdersRepo>()));
    gh.singleton<_i160.EmployeeBloc>(() => _i160.EmployeeBloc(
          gh<_i135.GetAllEmployeesUseCase>(),
          gh<_i136.GetEmployeeDetailUseCase>(),
        ));
    gh.factory<_i161.CreateOrganizationBloc>(() =>
        _i161.CreateOrganizationBloc(gh<_i146.CreateOrganizationUseCase>()));
    gh.singleton<_i162.CurrentOrderBloc>(
        () => _i162.CurrentOrderBloc(gh<_i159.GetAllOrdersUseCase>()));
    gh.singleton<_i163.InviteEmployeeBloc>(
        () => _i163.InviteEmployeeBloc(gh<_i156.InviteEmployeeUseCase>()));
    gh.singleton<_i164.GetServiceByIdUseCase>(
        () => _i164.GetServiceByIdUseCase(repo: gh<_i152.ServiceDetailRepo>()));
    gh.factory<_i165.EquipmentDetailBloc>(() => _i165.EquipmentDetailBloc(
          gh<_i155.GetEuipmentByIdUseCase>(),
          gh<_i154.BuyEquipmentIdUseCase>(),
        ));
    gh.factory<_i166.ServiceDetailBloc>(
        () => _i166.ServiceDetailBloc(gh<_i164.GetServiceByIdUseCase>()));
    return this;
  }
}

class _$RegisterModule extends _i167.RegisterModule {}
