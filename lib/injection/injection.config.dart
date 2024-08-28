// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:convert' as _i8;

import 'package:dio/dio.dart' as _i3;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i6;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:neobis_smart_tailor/core/app/router/app_routes.dart' as _i64;
import 'package:neobis_smart_tailor/core/network/http_client.dart' as _i33;
import 'package:neobis_smart_tailor/core/services/auth_service.dart' as _i4;
import 'package:neobis_smart_tailor/core/services/secure_storage_service.dart' as _i47;
import 'package:neobis_smart_tailor/features/authorization/data/data_source/authorization_data_source.dart' as _i84;
import 'package:neobis_smart_tailor/features/authorization/data/data_source/impl/authorization_data_source_impl.dart'
    as _i85;
import 'package:neobis_smart_tailor/features/authorization/data/repository/authorization_repo_impl.dart' as _i98;
import 'package:neobis_smart_tailor/features/authorization/domain/repository/authorization_repository.dart' as _i97;
import 'package:neobis_smart_tailor/features/authorization/domain/use_case/confirmation_use_case.dart' as _i136;
import 'package:neobis_smart_tailor/features/authorization/domain/use_case/login_use_case.dart' as _i137;
import 'package:neobis_smart_tailor/features/authorization/domain/use_case/registration_use_case.dart' as _i138;
import 'package:neobis_smart_tailor/features/authorization/domain/use_case/resend_pin_use_case%20copy.dart' as _i139;
import 'package:neobis_smart_tailor/features/authorization/presentation/blocs/confirmation_bloc/confirmation_bloc.dart'
    as _i164;
import 'package:neobis_smart_tailor/features/authorization/presentation/blocs/login_bloc/login_bloc.dart' as _i169;
import 'package:neobis_smart_tailor/features/authorization/presentation/blocs/registration_bloc/registration_bloc.dart'
    as _i170;
import 'package:neobis_smart_tailor/features/authorization/presentation/blocs/timer_bloc/timer_bloc.dart' as _i7;
import 'package:neobis_smart_tailor/features/marketplace/data/data_source/marketplace_data_source.dart' as _i42;
import 'package:neobis_smart_tailor/features/marketplace/data/data_source/marketplace_data_source_impl/marketplace_data_source_impl.dart'
    as _i43;
import 'package:neobis_smart_tailor/features/marketplace/data/mapper/common_converter.dart' as _i56;
import 'package:neobis_smart_tailor/features/marketplace/data/mapper/general_responce_converter.dart' as _i20;
import 'package:neobis_smart_tailor/features/marketplace/data/mapper/search_converter.dart' as _i11;
import 'package:neobis_smart_tailor/features/marketplace/data/models/general_model/general_model.dart' as _i54;
import 'package:neobis_smart_tailor/features/marketplace/data/models/general_responce/general_responce.dart' as _i18;
import 'package:neobis_smart_tailor/features/marketplace/data/models/search_model/advertisement_model.dart' as _i9;
import 'package:neobis_smart_tailor/features/marketplace/data/repository/marketplace_repo_impl.dart' as _i89;
import 'package:neobis_smart_tailor/features/marketplace/domain/entitys/common_entity.dart' as _i55;
import 'package:neobis_smart_tailor/features/marketplace/domain/entitys/general_responce_entity.dart' as _i19;
import 'package:neobis_smart_tailor/features/marketplace/domain/entitys/search_entity.dart' as _i10;
import 'package:neobis_smart_tailor/features/marketplace/domain/repository/marketplace_repo.dart' as _i88;
import 'package:neobis_smart_tailor/features/marketplace/domain/use_case/get_equipments_use_case.dart' as _i91;
import 'package:neobis_smart_tailor/features/marketplace/domain/use_case/get_orders_use_case.dart' as _i92;
import 'package:neobis_smart_tailor/features/marketplace/domain/use_case/get_services_ude_case.dart' as _i93;
import 'package:neobis_smart_tailor/features/marketplace/domain/use_case/search_equipment_use_case.dart' as _i94;
import 'package:neobis_smart_tailor/features/marketplace/domain/use_case/search_order_use_case.dart' as _i95;
import 'package:neobis_smart_tailor/features/marketplace/domain/use_case/search_service_use_case.dart' as _i96;
import 'package:neobis_smart_tailor/features/marketplace/presentation/bloc/marketplace_bloc.dart' as _i126;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/equipment_detail_screen/data/data_source/equipment_detail_data_source.dart'
    as _i82;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/equipment_detail_screen/data/data_source/equipment_detail_data_source_impl/marketplace_data_source_impl.dart'
    as _i83;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/equipment_detail_screen/data/mapper/equipment_converter.dart'
    as _i53;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/equipment_detail_screen/data/models/equipment_detail_model/equipment_detail_model.dart'
    as _i51;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/equipment_detail_screen/data/repository/equipment_detail_repo_impl.dart'
    as _i87;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/equipment_detail_screen/domain/entitys/equipment_detail_entity.dart'
    as _i52;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/equipment_detail_screen/domain/repository/equipment_detail_repo.dart'
    as _i86;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/equipment_detail_screen/domain/use_case/buy_equipment_use_case%20copy.dart'
    as _i132;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/equipment_detail_screen/domain/use_case/get_equipmentby_id_use_case.dart'
    as _i133;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/equipment_detail_screen/presentation/bloc/equipment_detail_bloc.dart'
    as _i162;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/order_detail_screen/data/data_source/marketplace_detail_data_source_impl/order_data_source_impl.dart'
    as _i35;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/order_detail_screen/data/data_source/order_detail_data_source.dart'
    as _i34;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/order_detail_screen/data/mapper/order_converter.dart'
    as _i41;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/order_detail_screen/data/models/order_detail_model/order_detail_model.dart'
    as _i39;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/order_detail_screen/data/repository/order_detail_repo_impl.dart'
    as _i70;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/order_detail_screen/domain/entitys/order_detail_entity.dart'
    as _i40;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/order_detail_screen/domain/repository/order_detail_repo.dart'
    as _i69;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/order_detail_screen/domain/use_case/get_order_by_id_use_case.dart'
    as _i71;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/order_detail_screen/domain/use_case/request_to_execute_use_case%20copy.dart'
    as _i72;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/order_detail_screen/presentation/bloc/order_detail_bloc.dart'
    as _i90;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/service_detail_screen/data/data_source/marketplace_detail_data_source_impl/service_detail_data_source_impl.dart'
    as _i81;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/service_detail_screen/data/data_source/service_detail_data_source.dart'
    as _i80;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/service_detail_screen/data/mapper/service_converter%20copy.dart'
    as _i17;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/service_detail_screen/data/models/service_detail_model/service_detail_model.dart'
    as _i15;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/service_detail_screen/data/repository/service_detail_repo_impl.dart'
    as _i131;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/service_detail_screen/domain/entitys/service_detail_entity.dart'
    as _i16;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/service_detail_screen/domain/repository/service_detail_repo.dart'
    as _i130;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/service_detail_screen/domain/use_case/get_service_by_id_use_case.dart'
    as _i157;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/service_detail_screen/domain/use_case/send_request_to_service_use_case.dart'
    as _i158;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/service_detail_screen/presentation/bloc/service_detail_bloc.dart'
    as _i168;
import 'package:neobis_smart_tailor/features/order_place/data/data_source/impl/order_place_data_source_impl.dart'
    as _i66;
import 'package:neobis_smart_tailor/features/order_place/data/data_source/order_place_data_source.dart' as _i65;
import 'package:neobis_smart_tailor/features/order_place/data/repository/order_place_repo_impl.dart' as _i79;
import 'package:neobis_smart_tailor/features/order_place/domain/repository/order_place_repo.dart' as _i78;
import 'package:neobis_smart_tailor/features/order_place/domain/useCase/create_equipment_use_case.dart' as _i123;
import 'package:neobis_smart_tailor/features/order_place/domain/useCase/create_order_use_case.dart' as _i124;
import 'package:neobis_smart_tailor/features/order_place/domain/useCase/create_service_use_case.dart' as _i125;
import 'package:neobis_smart_tailor/features/order_place/presentation/bloc/order_place_bloc.dart' as _i129;
import 'package:neobis_smart_tailor/features/organization/data/converters/current-detail_order_converter.dart' as _i23;
import 'package:neobis_smart_tailor/features/organization/data/converters/current_history_detail_converter.dart'
    as _i50;
import 'package:neobis_smart_tailor/features/organization/data/converters/current_order_converter.dart' as _i59;
import 'package:neobis_smart_tailor/features/organization/data/converters/employee_detail_converter.dart' as _i29;
import 'package:neobis_smart_tailor/features/organization/data/converters/employees_converter.dart' as _i32;
import 'package:neobis_smart_tailor/features/organization/data/converters/organization_info_converter.dart' as _i14;
import 'package:neobis_smart_tailor/features/organization/data/converters/organization_list_converter.dart' as _i75;
import 'package:neobis_smart_tailor/features/organization/data/converters/position_list_converter.dart' as _i38;
import 'package:neobis_smart_tailor/features/organization/data/data_source/organization_data_source.dart' as _i76;
import 'package:neobis_smart_tailor/features/organization/data/data_source/organization_data_source_impl/organization_data_source_impl.dart'
    as _i77;
import 'package:neobis_smart_tailor/features/organization/data/models/current_detail_order_model/current_detail_order_model.dart'
    as _i21;
import 'package:neobis_smart_tailor/features/organization/data/models/current_history_detail_model/current_history_detail_model.dart'
    as _i48;
import 'package:neobis_smart_tailor/features/organization/data/models/current_order_model/current_order_model.dart'
    as _i57;
import 'package:neobis_smart_tailor/features/organization/data/models/employee_detail_model/employee_detail_model.dart'
    as _i27;
import 'package:neobis_smart_tailor/features/organization/data/models/employee_model/employee_model.dart' as _i30;
import 'package:neobis_smart_tailor/features/organization/data/models/organization_info_model/organization_info_model.dart'
    as _i12;
import 'package:neobis_smart_tailor/features/organization/data/models/organization_list_model/organization_list_model.dart'
    as _i73;
import 'package:neobis_smart_tailor/features/organization/data/models/position_list_model/position_model.dart' as _i36;
import 'package:neobis_smart_tailor/features/organization/data/repository/organization_repo_impl.dart' as _i122;
import 'package:neobis_smart_tailor/features/organization/domain/entitys/current_detail_order_entity.dart' as _i22;
import 'package:neobis_smart_tailor/features/organization/domain/entitys/current_history_detail_entity.dart' as _i49;
import 'package:neobis_smart_tailor/features/organization/domain/entitys/current_order_entity.dart' as _i58;
import 'package:neobis_smart_tailor/features/organization/domain/entitys/employee_detail_entity.dart' as _i28;
import 'package:neobis_smart_tailor/features/organization/domain/entitys/employee_entity.dart' as _i31;
import 'package:neobis_smart_tailor/features/organization/domain/entitys/organization_info_entity.dart' as _i13;
import 'package:neobis_smart_tailor/features/organization/domain/entitys/organization_list_entity.dart' as _i74;
import 'package:neobis_smart_tailor/features/organization/domain/entitys/position_entity.dart' as _i37;
import 'package:neobis_smart_tailor/features/organization/domain/repository/organization_repo.dart' as _i121;
import 'package:neobis_smart_tailor/features/organization/domain/use_case/add_position_use_case.dart' as _i140;
import 'package:neobis_smart_tailor/features/organization/domain/use_case/change_order_status_use_case.dart' as _i151;
import 'package:neobis_smart_tailor/features/organization/domain/use_case/complete_order_use_case.dart' as _i152;
import 'package:neobis_smart_tailor/features/organization/domain/use_case/create_organization_use_case.dart' as _i156;
import 'package:neobis_smart_tailor/features/organization/domain/use_case/get_all_employees_use_case.dart' as _i145;
import 'package:neobis_smart_tailor/features/organization/domain/use_case/get_all_orders_use_case.dart' as _i153;
import 'package:neobis_smart_tailor/features/organization/domain/use_case/get_all_positions_use_case.dart' as _i141;
import 'package:neobis_smart_tailor/features/organization/domain/use_case/get_available_access_rights_use_case.dart'
    as _i142;
import 'package:neobis_smart_tailor/features/organization/domain/use_case/get_available_positions_use_case.dart'
    as _i146;
import 'package:neobis_smart_tailor/features/organization/domain/use_case/get_available_weights_use_case.dart' as _i143;
import 'package:neobis_smart_tailor/features/organization/domain/use_case/get_cancel_order_use_case.dart' as _i154;
import 'package:neobis_smart_tailor/features/organization/domain/use_case/get_current_detailed_order_use_case.dart'
    as _i155;
import 'package:neobis_smart_tailor/features/organization/domain/use_case/get_detailed_order_use_case.dart' as _i147;
import 'package:neobis_smart_tailor/features/organization/domain/use_case/get_employee_detail_use_case.dart' as _i148;
import 'package:neobis_smart_tailor/features/organization/domain/use_case/get_orders_history_use_case.dart' as _i149;
import 'package:neobis_smart_tailor/features/organization/domain/use_case/get_profile_use_case.dart' as _i144;
import 'package:neobis_smart_tailor/features/organization/domain/use_case/invite_employee_use_case.dart' as _i150;
import 'package:neobis_smart_tailor/features/organization/pages/create_organization/create_organization_bloc/create_organization_bloc.dart'
    as _i160;
import 'package:neobis_smart_tailor/features/organization/pages/current_order/bloc/current_order_bloc.dart' as _i167;
import 'package:neobis_smart_tailor/features/organization/pages/employee/bloc/employee_bloc.dart' as _i163;
import 'package:neobis_smart_tailor/features/organization/pages/history/bloc/history_bloc.dart' as _i171;
import 'package:neobis_smart_tailor/features/organization/pages/invite_employee/bloc/invite_employee_bloc.dart'
    as _i165;
import 'package:neobis_smart_tailor/features/organization/pages/organization/bloc/organization_bloc.dart' as _i161;
import 'package:neobis_smart_tailor/features/organization/pages/positions/bloc/positions_bloc.dart' as _i166;
import 'package:neobis_smart_tailor/features/profile/data/converter/histoty/history_converter.dart' as _i46;
import 'package:neobis_smart_tailor/features/profile/data/converter/histoty/history_list_converter.dart' as _i62;
import 'package:neobis_smart_tailor/features/profile/data/converter/purchases/purchaese_converter.dart' as _i26;
import 'package:neobis_smart_tailor/features/profile/data/converter/purchases/purchases_list_converter.dart' as _i63;
import 'package:neobis_smart_tailor/features/profile/data/data_source/remote/profile_data_source.dart' as _i60;
import 'package:neobis_smart_tailor/features/profile/data/data_source/remote/profile_data_source_impl/profile_data_source_impl.dart'
    as _i61;
import 'package:neobis_smart_tailor/features/profile/data/model/history_model/my_history_model.dart' as _i44;
import 'package:neobis_smart_tailor/features/profile/data/model/my_purchases/my_purchases_list_model.dart' as _i24;
import 'package:neobis_smart_tailor/features/profile/data/repository/profile_repo_impl.dart' as _i68;
import 'package:neobis_smart_tailor/features/profile/domain/model/my_history_entity.dart' as _i45;
import 'package:neobis_smart_tailor/features/profile/domain/model/my_purchases.dart' as _i25;
import 'package:neobis_smart_tailor/features/profile/domain/repository/profile_repo.dart' as _i67;
import 'package:neobis_smart_tailor/features/profile/domain/use_case/assign_executor_to_order_use_case.dart' as _i99;
import 'package:neobis_smart_tailor/features/profile/domain/use_case/delete_equipment_use_case.dart' as _i100;
import 'package:neobis_smart_tailor/features/profile/domain/use_case/delete_order_use_case.dart' as _i101;
import 'package:neobis_smart_tailor/features/profile/domain/use_case/delete_service_use_case.dart' as _i102;
import 'package:neobis_smart_tailor/features/profile/domain/use_case/edit_profile_info_use_case.dart' as _i103;
import 'package:neobis_smart_tailor/features/profile/domain/use_case/get_equipment_detailed_by_id_use_case.dart'
    as _i104;
import 'package:neobis_smart_tailor/features/profile/domain/use_case/get_my_equipments_use_case.dart' as _i105;
import 'package:neobis_smart_tailor/features/profile/domain/use_case/get_my_orders_use_case.dart' as _i106;
import 'package:neobis_smart_tailor/features/profile/domain/use_case/get_my_purchases_use_case.dart' as _i107;
import 'package:neobis_smart_tailor/features/profile/domain/use_case/get_my_services_use_case.dart' as _i108;
import 'package:neobis_smart_tailor/features/profile/domain/use_case/get_order_detailed_by_id_use_case.dart' as _i109;
import 'package:neobis_smart_tailor/features/profile/domain/use_case/get_order_history_for_user_use_case.dart' as _i110;
import 'package:neobis_smart_tailor/features/profile/domain/use_case/get_profile_info_use_case.dart' as _i111;
import 'package:neobis_smart_tailor/features/profile/domain/use_case/get_service_detailed_by_id_use_case.dart' as _i112;
import 'package:neobis_smart_tailor/features/profile/domain/use_case/hide_equipment_use_case.dart' as _i113;
import 'package:neobis_smart_tailor/features/profile/domain/use_case/hide_order_use_case.dart' as _i114;
import 'package:neobis_smart_tailor/features/profile/domain/use_case/hide_service_use_case.dart' as _i115;
import 'package:neobis_smart_tailor/features/profile/domain/use_case/load_more_purchases_use_case.dart' as _i116;
import 'package:neobis_smart_tailor/features/profile/domain/use_case/search_advertisement_use_case.dart' as _i117;
import 'package:neobis_smart_tailor/features/profile/domain/use_case/send_subscription_use_case.dart' as _i118;
import 'package:neobis_smart_tailor/features/profile/domain/use_case/sign_out_use_case.dart' as _i119;
import 'package:neobis_smart_tailor/features/profile/domain/use_case/upload_image_use_case.dart' as _i120;
import 'package:neobis_smart_tailor/features/profile/presentation/bloc/announcement/announcement_bloc.dart' as _i135;
import 'package:neobis_smart_tailor/features/profile/presentation/bloc/profile/profile_bloc.dart' as _i134;
import 'package:neobis_smart_tailor/features/profile/presentation/pages/notification/presentation/bloc/notification_bloc.dart'
    as _i128;
import 'package:neobis_smart_tailor/features/profile/presentation/pages/order_history/bloc/order_history_bloc.dart'
    as _i127;
import 'package:neobis_smart_tailor/features/profile/presentation/pages/purchases/bloc/purchases_bloc.dart' as _i159;
import 'package:neobis_smart_tailor/injection/injection_module.dart' as _i172;
import 'package:shared_preferences/shared_preferences.dart' as _i5;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final registerModule = _$RegisterModule();
    gh.factory<_i3.Dio>(() => registerModule.dio);
    gh.singleton<_i4.AuthService>(() => _i4.AuthService());
    gh.singletonAsync<_i5.SharedPreferences>(() => registerModule.prefs);
    gh.singleton<_i6.FlutterSecureStorage>(() => registerModule.storage);
    gh.singleton<_i7.Ticker>(() => const _i7.Ticker());
    gh.factory<_i8.Converter<_i9.AdvertisementResponseModel, _i10.AdvertisementResponseEntity>>(
        () => _i11.AdvertisementResponseModelToEntityConverter());
    gh.singleton<_i7.TimerBloc>(() => _i7.TimerBloc(ticker: gh<_i7.Ticker>()));
    gh.factory<_i8.Converter<_i12.OrganizationInfoModel, _i13.OrganizationInfoEntity>>(
        () => _i14.GeneralResponceMapper());
    gh.factory<_i8.Converter<_i15.ServiceDetailModel, _i16.ServiceDetailEntity>>(() => _i17.ServiceDetailMapper());
    gh.factory<_i8.Converter<_i18.GeneralResponceModel, _i19.GeneralResponceEntity>>(
        () => _i20.GeneralResponceMapper());
    gh.factory<_i8.Converter<_i21.Employee, _i22.EmployeeForCurrentEntity>>(
        () => _i23.EmployeeModelToEntityConverter());
    gh.factory<_i8.Converter<_i24.PurchasesModel, _i25.PurchasesEntity>>(() => _i26.GeneralResponseMapper());
    gh.factory<_i8.Converter<_i27.EmployeeDetailModel, _i28.EmployeeDetailEntity>>(() => _i29.GeneralResponceMapper());
    gh.factory<_i8.Converter<_i30.EmployeeModel, _i31.EmployeeEntity>>(() => _i32.GeneralResponceMapper());
    gh.factory<_i8.Converter<_i9.AdvertisementModel, _i10.AdvertisementEntity>>(
        () => _i11.AdvertisementModelToEntityConverter());
    gh.singleton<_i33.HttpClient>(() => _i33.HttpClient(gh<_i3.Dio>()));
    gh.factory<_i34.OrderDetailDataSource>(() => _i35.OrderDetailDataSourceImpl(gh<_i33.HttpClient>()));
    gh.factory<_i8.Converter<List<_i36.PositionModel>, List<_i37.PositionEntity>>>(
        () => _i38.PositionModelListToEntityListConverter());
    gh.factory<_i8.Converter<_i39.OrderDetailModel, _i40.OrderDetailEntity>>(() => _i41.OrderDetailMapper());
    gh.factory<_i8.Converter<_i21.CurrentDetailOrderModel, _i22.CurrentDetailOrderEntity>>(() =>
        _i23.CurrentDetailOrderModelToEntityConverter(
            gh<_i8.Converter<_i21.Employee, _i22.EmployeeForCurrentEntity>>()));
    gh.factory<_i42.MarketplaceDataSource>(() => _i43.MarketplaceDataSourceImpl(gh<_i33.HttpClient>()));
    gh.factory<_i8.Converter<_i44.HistoryModel, _i45.HistoryEntity>>(() => _i46.GeneralResponseMapper());
    gh.singleton<_i47.SecureStorageService>(() => _i47.SecureStorageService(gh<_i6.FlutterSecureStorage>()));
    gh.factory<_i8.Converter<_i48.CurrentHistoryDetailModel, _i49.CurrentHistoryDetailEntity>>(() =>
        _i50.CurrentDetailOrderModelToEntityConverter(
            gh<_i8.Converter<_i21.Employee, _i22.EmployeeForCurrentEntity>>()));
    gh.factory<_i8.Converter<_i51.EquipmentDetailModel, _i52.EquipmentDetailEntity>>(
        () => _i53.EquipmentDetailMapper());
    gh.factory<_i8.Converter<_i54.GeneralOrderModel, _i55.GeneralEntity>>(() => _i56.EquipmentMapper());
    gh.factory<_i8.Converter<_i57.CurrentOrderModel, _i58.CurrentOrderEntity>>(() => _i59.GeneralResponceMapper());
    gh.factory<_i60.ProfileDataSource>(() => _i61.ProfileDataSourceImpl(gh<_i33.HttpClient>()));
    gh.factory<_i8.Converter<_i44.MyHistoryModel, _i45.MyHistoryEntity>>(
        () => _i62.GeneralResponseMapper(gh<_i8.Converter<_i44.HistoryModel, _i45.HistoryEntity>>()));
    gh.factory<_i8.Converter<_i24.PurchasesListModel, _i25.PurchasesListEntity>>(
        () => _i63.GeneralResponseMapper(gh<_i8.Converter<_i24.PurchasesModel, _i25.PurchasesEntity>>()));
    gh.singleton<_i64.AppRouter>(() => _i64.AppRouter(gh<_i4.AuthService>()));
    gh.factory<_i65.OrderPlaceDataSource>(() => _i66.OrderPlaceDataSourceImpl(
          gh<_i33.HttpClient>(),
          gh<_i4.AuthService>(),
        ));
    gh.factory<_i67.ProfileRepo>(() => _i68.ProfileRepoImpl(
          gh<_i60.ProfileDataSource>(),
          gh<_i4.AuthService>(),
          gh<_i8.Converter<_i24.PurchasesListModel, _i25.PurchasesListEntity>>(),
          gh<_i8.Converter<_i44.MyHistoryModel, _i45.MyHistoryEntity>>(),
          gh<_i8.Converter<_i9.AdvertisementResponseModel, _i10.AdvertisementResponseEntity>>(),
        ));
    gh.factory<_i69.OrderDetailRepo>(() => _i70.OrderDetailRepoImpl(
          gh<_i34.OrderDetailDataSource>(),
          gh<_i8.Converter<_i39.OrderDetailModel, _i40.OrderDetailEntity>>(),
        ));
    gh.singleton<_i71.GetOrderByIdUseCase>(() => _i71.GetOrderByIdUseCase(repo: gh<_i69.OrderDetailRepo>()));
    gh.singleton<_i72.RequestToExecuteUseCase>(() => _i72.RequestToExecuteUseCase(repo: gh<_i69.OrderDetailRepo>()));
    gh.factory<_i8.Converter<_i73.OrganizationListModel, _i74.OrganizationListEntity>>(
        () => _i75.GeneralResponseMapper(gh<_i8.Converter<_i57.CurrentOrderModel, _i58.CurrentOrderEntity>>()));
    gh.factory<_i76.OrganizationDataSource>(() => _i77.PositionsSourceImpl(gh<_i33.HttpClient>()));
    gh.factory<_i78.OrderPlaceRepo>(() => _i79.CreateOrderRepoImpl(gh<_i65.OrderPlaceDataSource>()));
    gh.factory<_i80.ServiceDetailDataSource>(() => _i81.ServiceDetailDataSourceImpl(gh<_i33.HttpClient>()));
    gh.factory<_i82.EquipmentDetailDataSource>(() => _i83.EquipmentDetailDataSourceImpl(gh<_i33.HttpClient>()));
    gh.factory<_i84.AuthorizationDataSource>(() => _i85.AuthorizationDataSourceImpl(gh<_i33.HttpClient>()));
    gh.factory<_i86.EquipmentDetailRepo>(() => _i87.EquipmentDetailRepoImpl(
          gh<_i82.EquipmentDetailDataSource>(),
          gh<_i8.Converter<_i51.EquipmentDetailModel, _i52.EquipmentDetailEntity>>(),
        ));
    gh.factory<_i88.MarketplaceRepo>(() => _i89.MarketplaceRepoImpl(
          gh<_i42.MarketplaceDataSource>(),
          gh<_i8.Converter<_i18.GeneralResponceModel, _i19.GeneralResponceEntity>>(),
          gh<_i8.Converter<_i9.AdvertisementResponseModel, _i10.AdvertisementResponseEntity>>(),
        ));
    gh.factory<_i90.OrderDetailBloc>(() => _i90.OrderDetailBloc(
          gh<_i71.GetOrderByIdUseCase>(),
          gh<_i72.RequestToExecuteUseCase>(),
        ));
    gh.singleton<_i91.GetEuipmentsUseCase>(() => _i91.GetEuipmentsUseCase(repo: gh<_i88.MarketplaceRepo>()));
    gh.singleton<_i92.GetOrdersUseCase>(() => _i92.GetOrdersUseCase(repo: gh<_i88.MarketplaceRepo>()));
    gh.singleton<_i93.GetServicesUseCase>(() => _i93.GetServicesUseCase(repo: gh<_i88.MarketplaceRepo>()));
    gh.singleton<_i94.SearchEquipmentUseCase>(() => _i94.SearchEquipmentUseCase(repo: gh<_i88.MarketplaceRepo>()));
    gh.singleton<_i95.SearchOrderUseCase>(() => _i95.SearchOrderUseCase(repo: gh<_i88.MarketplaceRepo>()));
    gh.singleton<_i96.SearchServiceUseCase>(() => _i96.SearchServiceUseCase(repo: gh<_i88.MarketplaceRepo>()));
    gh.factory<_i97.AuthorizationRepo>(() => _i98.AuthorizationRepoImpl(
          gh<_i84.AuthorizationDataSource>(),
          gh<_i4.AuthService>(),
        ));
    gh.singleton<_i99.AssignExecutorToOrderUseCase>(
        () => _i99.AssignExecutorToOrderUseCase(repo: gh<_i67.ProfileRepo>()));
    gh.singleton<_i100.DeleteEquipmentUseCase>(() => _i100.DeleteEquipmentUseCase(repo: gh<_i67.ProfileRepo>()));
    gh.singleton<_i101.DeleteOrderUseCase>(() => _i101.DeleteOrderUseCase(repo: gh<_i67.ProfileRepo>()));
    gh.singleton<_i102.DeleteServiceUseCase>(() => _i102.DeleteServiceUseCase(repo: gh<_i67.ProfileRepo>()));
    gh.singleton<_i103.EditProfileInfoUseCase>(() => _i103.EditProfileInfoUseCase(repo: gh<_i67.ProfileRepo>()));
    gh.singleton<_i104.GetEquipmentDetailedByIdUseCase>(
        () => _i104.GetEquipmentDetailedByIdUseCase(repo: gh<_i67.ProfileRepo>()));
    gh.singleton<_i105.GetMyEquipmentsUseCase>(() => _i105.GetMyEquipmentsUseCase(repo: gh<_i67.ProfileRepo>()));
    gh.singleton<_i106.GetMyOrdersUseCase>(() => _i106.GetMyOrdersUseCase(repo: gh<_i67.ProfileRepo>()));
    gh.singleton<_i107.GetMyPurchasesUseCase>(() => _i107.GetMyPurchasesUseCase(repo: gh<_i67.ProfileRepo>()));
    gh.singleton<_i108.GetMyServicesUseCase>(() => _i108.GetMyServicesUseCase(repo: gh<_i67.ProfileRepo>()));
    gh.singleton<_i109.GetOrderDetailedByIdUseCase>(
        () => _i109.GetOrderDetailedByIdUseCase(repo: gh<_i67.ProfileRepo>()));
    gh.singleton<_i110.GetOrderHistoryForUserUseCase>(
        () => _i110.GetOrderHistoryForUserUseCase(repo: gh<_i67.ProfileRepo>()));
    gh.singleton<_i111.GetProfileInfoUseCase>(() => _i111.GetProfileInfoUseCase(repo: gh<_i67.ProfileRepo>()));
    gh.singleton<_i112.GetServiceDetailedByIdUseCase>(
        () => _i112.GetServiceDetailedByIdUseCase(repo: gh<_i67.ProfileRepo>()));
    gh.singleton<_i113.HideEquipmentUseCase>(() => _i113.HideEquipmentUseCase(repo: gh<_i67.ProfileRepo>()));
    gh.singleton<_i114.HideOrderUseCase>(() => _i114.HideOrderUseCase(repo: gh<_i67.ProfileRepo>()));
    gh.singleton<_i115.HideServiceUseCase>(() => _i115.HideServiceUseCase(repo: gh<_i67.ProfileRepo>()));
    gh.singleton<_i116.LoadMorePurchasesUseCase>(() => _i116.LoadMorePurchasesUseCase(repo: gh<_i67.ProfileRepo>()));
    gh.singleton<_i117.SearchAdvertisementUseCase>(
        () => _i117.SearchAdvertisementUseCase(repo: gh<_i67.ProfileRepo>()));
    gh.singleton<_i118.SendSubscriptionUseCase>(() => _i118.SendSubscriptionUseCase(repo: gh<_i67.ProfileRepo>()));
    gh.singleton<_i119.SignOutUseCase>(() => _i119.SignOutUseCase(repo: gh<_i67.ProfileRepo>()));
    gh.singleton<_i120.UploadImageUseCase>(() => _i120.UploadImageUseCase(repo: gh<_i67.ProfileRepo>()));
    gh.factory<_i121.OrganizationRepo>(() => _i122.OrganizationRepoImpl(
          gh<_i76.OrganizationDataSource>(),
          gh<_i8.Converter<List<_i36.PositionModel>, List<_i37.PositionEntity>>>(),
          gh<_i8.Converter<_i12.OrganizationInfoModel, _i13.OrganizationInfoEntity>>(),
          gh<_i8.Converter<_i44.MyHistoryModel, _i45.MyHistoryEntity>>(),
          gh<_i8.Converter<_i48.CurrentHistoryDetailModel, _i49.CurrentHistoryDetailEntity>>(),
          gh<_i8.Converter<_i30.EmployeeModel, _i31.EmployeeEntity>>(),
          gh<_i8.Converter<_i27.EmployeeDetailModel, _i28.EmployeeDetailEntity>>(),
          gh<_i8.Converter<_i73.OrganizationListModel, _i74.OrganizationListEntity>>(),
          gh<_i8.Converter<_i21.CurrentDetailOrderModel, _i22.CurrentDetailOrderEntity>>(),
        ));
    gh.singleton<_i123.CreateEquipmentUseCase>(() => _i123.CreateEquipmentUseCase(repo: gh<_i78.OrderPlaceRepo>()));
    gh.singleton<_i124.CreateOrderUseCase>(() => _i124.CreateOrderUseCase(repo: gh<_i78.OrderPlaceRepo>()));
    gh.singleton<_i125.CreateServiceUseCase>(() => _i125.CreateServiceUseCase(repo: gh<_i78.OrderPlaceRepo>()));
    gh.factory<_i126.MarketplaceBloc>(() => _i126.MarketplaceBloc(
          gh<_i91.GetEuipmentsUseCase>(),
          gh<_i92.GetOrdersUseCase>(),
          gh<_i93.GetServicesUseCase>(),
          gh<_i94.SearchEquipmentUseCase>(),
          gh<_i95.SearchOrderUseCase>(),
          gh<_i96.SearchServiceUseCase>(),
        ));
    gh.factory<_i127.OrderHistoryBloc>(() => _i127.OrderHistoryBloc(gh<_i110.GetOrderHistoryForUserUseCase>()));
    gh.factory<_i128.NotificationBloc>(() => _i128.NotificationBloc(gh<_i110.GetOrderHistoryForUserUseCase>()));
    gh.singleton<_i129.OrderPlaceBloc>(() => _i129.OrderPlaceBloc(
          gh<_i123.CreateEquipmentUseCase>(),
          gh<_i125.CreateServiceUseCase>(),
          gh<_i124.CreateOrderUseCase>(),
        ));
    gh.factory<_i130.ServiceDetailRepo>(() => _i131.ServiceDetailRepoImpl(
          gh<_i80.ServiceDetailDataSource>(),
          gh<_i8.Converter<_i15.ServiceDetailModel, _i16.ServiceDetailEntity>>(),
        ));
    gh.singleton<_i132.BuyEquipmentIdUseCase>(() => _i132.BuyEquipmentIdUseCase(repo: gh<_i86.EquipmentDetailRepo>()));
    gh.singleton<_i133.GetEuipmentByIdUseCase>(
        () => _i133.GetEuipmentByIdUseCase(repo: gh<_i86.EquipmentDetailRepo>()));
    gh.factory<_i134.ProfileBloc>(() => _i134.ProfileBloc(
          sendSubscriptionUseCase: gh<_i118.SendSubscriptionUseCase>(),
          signOutUseCase: gh<_i119.SignOutUseCase>(),
          getProfileInfoUseCase: gh<_i111.GetProfileInfoUseCase>(),
          editProfileInfoUseCase: gh<_i103.EditProfileInfoUseCase>(),
          uploadImageUseCase: gh<_i120.UploadImageUseCase>(),
        ));
    gh.factory<_i135.AnnouncementBloc>(() => _i135.AnnouncementBloc(
          gh<_i109.GetOrderDetailedByIdUseCase>(),
          gh<_i112.GetServiceDetailedByIdUseCase>(),
          gh<_i104.GetEquipmentDetailedByIdUseCase>(),
          gh<_i106.GetMyOrdersUseCase>(),
          gh<_i105.GetMyEquipmentsUseCase>(),
          gh<_i108.GetMyServicesUseCase>(),
          gh<_i99.AssignExecutorToOrderUseCase>(),
          gh<_i114.HideOrderUseCase>(),
          gh<_i101.DeleteOrderUseCase>(),
          gh<_i113.HideEquipmentUseCase>(),
          gh<_i115.HideServiceUseCase>(),
          gh<_i100.DeleteEquipmentUseCase>(),
          gh<_i102.DeleteServiceUseCase>(),
          gh<_i117.SearchAdvertisementUseCase>(),
        ));
    gh.singleton<_i136.ConfirmationUseCase>(() => _i136.ConfirmationUseCase(repo: gh<_i97.AuthorizationRepo>()));
    gh.singleton<_i137.LoginUseCase>(() => _i137.LoginUseCase(repo: gh<_i97.AuthorizationRepo>()));
    gh.singleton<_i138.RegistrationUseCase>(() => _i138.RegistrationUseCase(repo: gh<_i97.AuthorizationRepo>()));
    gh.singleton<_i139.ResendPinUseCase>(() => _i139.ResendPinUseCase(repo: gh<_i97.AuthorizationRepo>()));
    gh.singleton<_i140.AddPositionUseCase>(() => _i140.AddPositionUseCase(repo: gh<_i121.OrganizationRepo>()));
    gh.singleton<_i141.GetAllPositionsUseCase>(() => _i141.GetAllPositionsUseCase(repo: gh<_i121.OrganizationRepo>()));
    gh.singleton<_i142.GetAvailableAccessRightsUseCase>(
        () => _i142.GetAvailableAccessRightsUseCase(repo: gh<_i121.OrganizationRepo>()));
    gh.singleton<_i143.GetAvailableWeightsUseCase>(
        () => _i143.GetAvailableWeightsUseCase(repo: gh<_i121.OrganizationRepo>()));
    gh.singleton<_i144.GetProfileUseCase>(() => _i144.GetProfileUseCase(repo: gh<_i121.OrganizationRepo>()));
    gh.singleton<_i145.GetAllEmployeesUseCase>(() => _i145.GetAllEmployeesUseCase(repo: gh<_i121.OrganizationRepo>()));
    gh.singleton<_i146.GetAvailablePositionsUseCase>(
        () => _i146.GetAvailablePositionsUseCase(repo: gh<_i121.OrganizationRepo>()));
    gh.singleton<_i147.GetDetailedOrderUseCase>(
        () => _i147.GetDetailedOrderUseCase(repo: gh<_i121.OrganizationRepo>()));
    gh.singleton<_i148.GetEmployeeDetailUseCase>(
        () => _i148.GetEmployeeDetailUseCase(repo: gh<_i121.OrganizationRepo>()));
    gh.singleton<_i149.GetOrdersHistoryUseCase>(
        () => _i149.GetOrdersHistoryUseCase(repo: gh<_i121.OrganizationRepo>()));
    gh.singleton<_i150.InviteEmployeeUseCase>(() => _i150.InviteEmployeeUseCase(repo: gh<_i121.OrganizationRepo>()));
    gh.singleton<_i151.ChangeOrderStatusUseCase>(
        () => _i151.ChangeOrderStatusUseCase(repo: gh<_i121.OrganizationRepo>()));
    gh.singleton<_i152.CompleteOrderUseCase>(() => _i152.CompleteOrderUseCase(repo: gh<_i121.OrganizationRepo>()));
    gh.singleton<_i153.GetAllOrdersUseCase>(() => _i153.GetAllOrdersUseCase(repo: gh<_i121.OrganizationRepo>()));
    gh.singleton<_i154.GetCancelOrderUseCase>(() => _i154.GetCancelOrderUseCase(repo: gh<_i121.OrganizationRepo>()));
    gh.singleton<_i155.GetCurrentDetailOrderUseCase>(
        () => _i155.GetCurrentDetailOrderUseCase(repo: gh<_i121.OrganizationRepo>()));
    gh.singleton<_i156.CreateOrganizationUseCase>(
        () => _i156.CreateOrganizationUseCase(repo: gh<_i121.OrganizationRepo>()));
    gh.singleton<_i157.GetServiceByIdUseCase>(() => _i157.GetServiceByIdUseCase(repo: gh<_i130.ServiceDetailRepo>()));
    gh.singleton<_i158.SendRequestToServiceUseCase>(
        () => _i158.SendRequestToServiceUseCase(repo: gh<_i130.ServiceDetailRepo>()));
    gh.factory<_i159.PurchasesBloc>(() => _i159.PurchasesBloc(
          gh<_i107.GetMyPurchasesUseCase>(),
          gh<_i116.LoadMorePurchasesUseCase>(),
          gh<_i133.GetEuipmentByIdUseCase>(),
          gh<_i71.GetOrderByIdUseCase>(),
          gh<_i157.GetServiceByIdUseCase>(),
        ));
    gh.factory<_i160.CreateOrganizationBloc>(() => _i160.CreateOrganizationBloc(gh<_i156.CreateOrganizationUseCase>()));
    gh.singleton<_i161.OrganizationBloc>(() => _i161.OrganizationBloc(gh<_i144.GetProfileUseCase>()));
    gh.factory<_i162.EquipmentDetailBloc>(() => _i162.EquipmentDetailBloc(
          gh<_i133.GetEuipmentByIdUseCase>(),
          gh<_i132.BuyEquipmentIdUseCase>(),
        ));
    gh.singleton<_i163.EmployeeBloc>(() => _i163.EmployeeBloc(
          gh<_i145.GetAllEmployeesUseCase>(),
          gh<_i148.GetEmployeeDetailUseCase>(),
        ));
    gh.singleton<_i164.ConfirmationBloc>(() => _i164.ConfirmationBloc(
          gh<_i136.ConfirmationUseCase>(),
          gh<_i139.ResendPinUseCase>(),
        ));
    gh.singleton<_i165.InviteEmployeeBloc>(() => _i165.InviteEmployeeBloc(
          gh<_i150.InviteEmployeeUseCase>(),
          gh<_i146.GetAvailablePositionsUseCase>(),
        ));
    gh.singleton<_i166.PositionsBloc>(() => _i166.PositionsBloc(
          gh<_i140.AddPositionUseCase>(),
          gh<_i141.GetAllPositionsUseCase>(),
          gh<_i142.GetAvailableAccessRightsUseCase>(),
          gh<_i143.GetAvailableWeightsUseCase>(),
        ));
    gh.factory<_i167.CurrentOrderBloc>(() => _i167.CurrentOrderBloc(
          gh<_i153.GetAllOrdersUseCase>(),
          gh<_i155.GetCurrentDetailOrderUseCase>(),
          gh<_i151.ChangeOrderStatusUseCase>(),
          gh<_i152.CompleteOrderUseCase>(),
          gh<_i154.GetCancelOrderUseCase>(),
        ));
    gh.factory<_i168.ServiceDetailBloc>(() => _i168.ServiceDetailBloc(
          gh<_i157.GetServiceByIdUseCase>(),
          gh<_i158.SendRequestToServiceUseCase>(),
        ));
    gh.factory<_i169.LoginBloc>(() => _i169.LoginBloc(loginUseCase: gh<_i137.LoginUseCase>()));
    gh.factory<_i170.RegistrationBloc>(
        () => _i170.RegistrationBloc(registrationUseCase: gh<_i138.RegistrationUseCase>()));
    gh.singleton<_i171.HistoryBloc>(() => _i171.HistoryBloc(
          gh<_i149.GetOrdersHistoryUseCase>(),
          gh<_i147.GetDetailedOrderUseCase>(),
        ));
    return this;
  }
}

class _$RegisterModule extends _i172.RegisterModule {}
