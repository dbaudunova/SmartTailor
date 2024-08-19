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
import 'package:neobis_smart_tailor/core/app/router/app_routes.dart' as _i74;
import 'package:neobis_smart_tailor/core/network/http_client.dart' as _i31;
import 'package:neobis_smart_tailor/core/services/auth_service.dart' as _i4;
import 'package:neobis_smart_tailor/core/services/secure_storage_service.dart'
    as _i44;
import 'package:neobis_smart_tailor/features/confirmation/data/data_source/confirmation_data_source.dart'
    as _i90;
import 'package:neobis_smart_tailor/features/confirmation/data/data_source/impl/confirmation_data_source_impl.dart'
    as _i91;
import 'package:neobis_smart_tailor/features/confirmation/data/repository/confirmation_repo_impl.dart'
    as _i119;
import 'package:neobis_smart_tailor/features/confirmation/domain/repository/confirmation_repo.dart'
    as _i118;
import 'package:neobis_smart_tailor/features/confirmation/domain/useCase/confirmation_use_case.dart'
    as _i156;
import 'package:neobis_smart_tailor/features/confirmation/domain/useCase/resend_pin_use_case%20copy.dart'
    as _i157;
import 'package:neobis_smart_tailor/features/confirmation/presentation/bloc/confirmation_bloc/confirmation_bloc.dart'
    as _i171;
import 'package:neobis_smart_tailor/features/confirmation/presentation/bloc/timer_bloc/timer_bloc.dart'
    as _i5;
import 'package:neobis_smart_tailor/features/login/data/data_source/impl/login_data_source_impl.dart'
    as _i46;
import 'package:neobis_smart_tailor/features/login/data/data_source/login_data_source.dart'
    as _i45;
import 'package:neobis_smart_tailor/features/login/data/repository/login_repo_impl.dart'
    as _i68;
import 'package:neobis_smart_tailor/features/login/domain/repository/login_repo.dart'
    as _i67;
import 'package:neobis_smart_tailor/features/login/domain/useCase/login_use_case.dart'
    as _i77;
import 'package:neobis_smart_tailor/features/login/presentation/bloc/login_bloc.dart'
    as _i122;
import 'package:neobis_smart_tailor/features/marketplace/data/data_source/marketplace_data_source.dart'
    as _i39;
import 'package:neobis_smart_tailor/features/marketplace/data/data_source/marketplace_data_source_impl/marketplace_data_source_impl.dart'
    as _i40;
import 'package:neobis_smart_tailor/features/marketplace/data/mapper/common_converter.dart'
    as _i55;
import 'package:neobis_smart_tailor/features/marketplace/data/mapper/general_responce_converter.dart'
    as _i18;
import 'package:neobis_smart_tailor/features/marketplace/data/models/general_model/general_model.dart'
    as _i53;
import 'package:neobis_smart_tailor/features/marketplace/data/models/general_responce/general_responce.dart'
    as _i16;
import 'package:neobis_smart_tailor/features/marketplace/data/repository/marketplace_repo_impl.dart'
    as _i102;
import 'package:neobis_smart_tailor/features/marketplace/domain/entitys/common_entity.dart'
    as _i54;
import 'package:neobis_smart_tailor/features/marketplace/domain/entitys/general_responce_entity.dart'
    as _i17;
import 'package:neobis_smart_tailor/features/marketplace/domain/repository/marketplace_repo.dart'
    as _i101;
import 'package:neobis_smart_tailor/features/marketplace/domain/use_case/get_equipments_use_case.dart'
    as _i128;
import 'package:neobis_smart_tailor/features/marketplace/domain/use_case/get_orders_use_case.dart'
    as _i129;
import 'package:neobis_smart_tailor/features/marketplace/domain/use_case/get_services_ude_case.dart'
    as _i130;
import 'package:neobis_smart_tailor/features/marketplace/presentation/bloc/marketplace_bloc.dart'
    as _i159;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/equipment_detail_screen/data/data_source/equipment_detail_data_source.dart'
    as _i98;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/equipment_detail_screen/data/data_source/equipment_detail_data_source_impl/marketplace_data_source_impl.dart'
    as _i99;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/equipment_detail_screen/data/mapper/equipment_converter.dart'
    as _i49;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/equipment_detail_screen/data/models/equipment_detail_model/equipment_detail_model.dart'
    as _i47;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/equipment_detail_screen/data/repository/equipment_detail_repo_impl.dart'
    as _i110;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/equipment_detail_screen/domain/entitys/equipment_detail_entity.dart'
    as _i48;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/equipment_detail_screen/domain/repository/equipment_detail_repo.dart'
    as _i109;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/equipment_detail_screen/domain/use_case/buy_equipment_use_case%20copy.dart'
    as _i167;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/equipment_detail_screen/domain/use_case/get_equipmentby_id_use_case.dart'
    as _i168;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/equipment_detail_screen/presentation/bloc/equipment_detail_bloc.dart'
    as _i180;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/order_detail_screen/data/data_source/marketplace_detail_data_source_impl/order_data_source_impl.dart'
    as _i33;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/order_detail_screen/data/data_source/order_detail_data_source.dart'
    as _i32;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/order_detail_screen/data/mapper/order_converter.dart'
    as _i38;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/order_detail_screen/data/models/order_detail_model/order_detail_model.dart'
    as _i36;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/order_detail_screen/data/repository/order_detail_repo_impl.dart'
    as _i87;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/order_detail_screen/domain/entitys/order_detail_entity.dart'
    as _i37;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/order_detail_screen/domain/repository/order_detail_repo.dart'
    as _i86;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/order_detail_screen/domain/use_case/get_order_by_id_use_case.dart'
    as _i88;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/order_detail_screen/domain/use_case/request_to_execute_use_case%20copy.dart'
    as _i89;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/order_detail_screen/presentation/bloc/order_detail_bloc.dart'
    as _i125;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/service_detail_screen/data/data_source/marketplace_detail_data_source_impl/service_detail_data_source_impl.dart'
    as _i97;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/service_detail_screen/data/data_source/service_detail_data_source.dart'
    as _i96;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/service_detail_screen/data/mapper/service_converter%20copy.dart'
    as _i15;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/service_detail_screen/data/models/service_detail_model/service_detail_model.dart'
    as _i13;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/service_detail_screen/data/repository/service_detail_repo_impl.dart'
    as _i166;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/service_detail_screen/domain/entitys/service_detail_entity.dart'
    as _i14;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/service_detail_screen/domain/repository/service_detail_repo.dart'
    as _i165;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/service_detail_screen/domain/use_case/get_service_by_id_use_case.dart'
    as _i177;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/service_detail_screen/domain/use_case/send_request_to_service_use_case.dart'
    as _i178;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/service_detail_screen/presentation/bloc/service_detail_bloc.dart'
    as _i181;
import 'package:neobis_smart_tailor/features/order_place/data/data_source/impl/order_place_data_source_impl.dart'
    as _i83;
import 'package:neobis_smart_tailor/features/order_place/data/data_source/order_place_data_source.dart'
    as _i82;
import 'package:neobis_smart_tailor/features/order_place/data/repository/order_place_repo_impl.dart'
    as _i95;
import 'package:neobis_smart_tailor/features/order_place/domain/repository/order_place_repo.dart'
    as _i94;
import 'package:neobis_smart_tailor/features/order_place/domain/useCase/create_equipment_use_case.dart'
    as _i160;
import 'package:neobis_smart_tailor/features/order_place/domain/useCase/create_order_use_case.dart'
    as _i161;
import 'package:neobis_smart_tailor/features/order_place/domain/useCase/create_service_use_case.dart'
    as _i162;
import 'package:neobis_smart_tailor/features/order_place/presentation/bloc/order_place_bloc.dart'
    as _i164;
import 'package:neobis_smart_tailor/features/organization/pages/create_organization/data/data_source/create_organization_data_source.dart'
    as _i78;
import 'package:neobis_smart_tailor/features/organization/pages/create_organization/data/data_source/impl/create_organization_data_source_impl.dart'
    as _i79;
import 'package:neobis_smart_tailor/features/organization/pages/create_organization/data/repository/create_organization_repo_impl.dart'
    as _i93;
import 'package:neobis_smart_tailor/features/organization/pages/create_organization/domain/repository/create_organization_repo.dart'
    as _i92;
import 'package:neobis_smart_tailor/features/organization/pages/create_organization/domain/use_case/create_organization_use_case.dart'
    as _i158;
import 'package:neobis_smart_tailor/features/organization/pages/create_organization/presentation/create_organization_bloc/create_organization_bloc.dart'
    as _i175;
import 'package:neobis_smart_tailor/features/organization/pages/current_order/data/converter/current-detail_order_converter.dart'
    as _i12;
import 'package:neobis_smart_tailor/features/organization/pages/current_order/data/converter/current_order_converter.dart'
    as _i30;
import 'package:neobis_smart_tailor/features/organization/pages/current_order/data/converter/organization_list_converter.dart'
    as _i73;
import 'package:neobis_smart_tailor/features/organization/pages/current_order/data/data_source/current_order_data_source.dart'
    as _i34;
import 'package:neobis_smart_tailor/features/organization/pages/current_order/data/data_source/impl/current_order_data_source_impl.dart'
    as _i35;
import 'package:neobis_smart_tailor/features/organization/pages/current_order/data/models/current_detail_order_model/current_detail_order_model.dart'
    as _i10;
import 'package:neobis_smart_tailor/features/organization/pages/current_order/data/models/current_order_model/current_order_model.dart'
    as _i28;
import 'package:neobis_smart_tailor/features/organization/pages/current_order/data/models/organization_list_model/organization_list_model.dart'
    as _i71;
import 'package:neobis_smart_tailor/features/organization/pages/current_order/data/repository/current_order_repo_impl.dart'
    as _i76;
import 'package:neobis_smart_tailor/features/organization/pages/current_order/domain/entitys/current_detail_order_entity.dart'
    as _i11;
import 'package:neobis_smart_tailor/features/organization/pages/current_order/domain/entitys/current_order_entity.dart'
    as _i29;
import 'package:neobis_smart_tailor/features/organization/pages/current_order/domain/entitys/organization_list_entity.dart'
    as _i72;
import 'package:neobis_smart_tailor/features/organization/pages/current_order/domain/repository/current_orders_repo.dart'
    as _i75;
import 'package:neobis_smart_tailor/features/organization/pages/current_order/domain/use_case/change_order_status_use_case.dart'
    as _i111;
import 'package:neobis_smart_tailor/features/organization/pages/current_order/domain/use_case/get_all_orders_use_case.dart'
    as _i112;
import 'package:neobis_smart_tailor/features/organization/pages/current_order/domain/use_case/get_detailed_order_use_case.dart'
    as _i113;
import 'package:neobis_smart_tailor/features/organization/pages/current_order/presentation/bloc/current_order_bloc.dart'
    as _i172;
import 'package:neobis_smart_tailor/features/organization/pages/employee/data/converter/employee_detail_converter.dart'
    as _i58;
import 'package:neobis_smart_tailor/features/organization/pages/employee/data/converter/employees_converter.dart'
    as _i52;
import 'package:neobis_smart_tailor/features/organization/pages/employee/data/data_source/employee_data_source.dart'
    as _i103;
import 'package:neobis_smart_tailor/features/organization/pages/employee/data/data_source/impl/employee_data_source_impl.dart'
    as _i104;
import 'package:neobis_smart_tailor/features/organization/pages/employee/data/models/employee_detail_model/employee_detail_model.dart'
    as _i56;
import 'package:neobis_smart_tailor/features/organization/pages/employee/data/models/employee_model/employee_model.dart'
    as _i50;
import 'package:neobis_smart_tailor/features/organization/pages/employee/data/repository/employee_repo_impl.dart'
    as _i121;
import 'package:neobis_smart_tailor/features/organization/pages/employee/domain/entitys/employee_detail_entity.dart'
    as _i57;
import 'package:neobis_smart_tailor/features/organization/pages/employee/domain/entitys/employee_entity.dart'
    as _i51;
import 'package:neobis_smart_tailor/features/organization/pages/employee/domain/repository/employees_repo.dart'
    as _i120;
import 'package:neobis_smart_tailor/features/organization/pages/employee/domain/use_case/get_all_employees_use_case.dart'
    as _i126;
import 'package:neobis_smart_tailor/features/organization/pages/employee/domain/use_case/get_employee_detail_use_case.dart'
    as _i127;
import 'package:neobis_smart_tailor/features/organization/pages/employee/presentation/bloc/employee_bloc.dart'
    as _i174;
import 'package:neobis_smart_tailor/features/organization/pages/history/presentation/bloc/history_bloc.dart'
    as _i6;
import 'package:neobis_smart_tailor/features/organization/pages/invite_employee/data/data_source/impl/invite_employee_data_source_impl.dart'
    as _i115;
import 'package:neobis_smart_tailor/features/organization/pages/invite_employee/data/data_source/invite_employee_data_source.dart'
    as _i114;
import 'package:neobis_smart_tailor/features/organization/pages/invite_employee/data/repository/invite_employee_repo_impl.dart'
    as _i154;
import 'package:neobis_smart_tailor/features/organization/pages/invite_employee/domain/repository/invite_employee_repo.dart'
    as _i153;
import 'package:neobis_smart_tailor/features/organization/pages/invite_employee/domain/use_case/invite_employee_use_case.dart'
    as _i170;
import 'package:neobis_smart_tailor/features/organization/pages/invite_employee/presentation/bloc/invite_employee_bloc.dart'
    as _i176;
import 'package:neobis_smart_tailor/features/organization/pages/organization/data/converter/organization_info_converter.dart'
    as _i24;
import 'package:neobis_smart_tailor/features/organization/pages/organization/data/data_source/impl/organization_data_source_impl.dart'
    as _i60;
import 'package:neobis_smart_tailor/features/organization/pages/organization/data/data_source/organization_data_source.dart'
    as _i59;
import 'package:neobis_smart_tailor/features/organization/pages/organization/data/models/organization_info_model/organization_info_model.dart'
    as _i22;
import 'package:neobis_smart_tailor/features/organization/pages/organization/data/repository/organization_repo_impl.dart'
    as _i81;
import 'package:neobis_smart_tailor/features/organization/pages/organization/domain/entitys/organization_info_entity.dart'
    as _i23;
import 'package:neobis_smart_tailor/features/organization/pages/organization/domain/repository/organization_repo.dart'
    as _i80;
import 'package:neobis_smart_tailor/features/organization/pages/organization/domain/use_case/get_profile_use_case.dart'
    as _i100;
import 'package:neobis_smart_tailor/features/organization/pages/organization/presentation/bloc/organization_bloc.dart'
    as _i108;
import 'package:neobis_smart_tailor/features/organization/pages/positions/data/converter/converter.dart'
    as _i27;
import 'package:neobis_smart_tailor/features/organization/pages/positions/data/data_source/impl/positions_data_source_impl.dart'
    as _i64;
import 'package:neobis_smart_tailor/features/organization/pages/positions/data/data_source/positions_data_source.dart'
    as _i63;
import 'package:neobis_smart_tailor/features/organization/pages/positions/data/models/_model/position_model.dart'
    as _i25;
import 'package:neobis_smart_tailor/features/organization/pages/positions/data/repository/position_repo_impl.dart'
    as _i85;
import 'package:neobis_smart_tailor/features/organization/pages/positions/domain/entitys/position_entity.dart'
    as _i26;
import 'package:neobis_smart_tailor/features/organization/pages/positions/domain/repository/positions_repo.dart'
    as _i84;
import 'package:neobis_smart_tailor/features/organization/pages/positions/domain/use_case/add_position_use_case.dart'
    as _i123;
import 'package:neobis_smart_tailor/features/organization/pages/positions/domain/use_case/get_all_positions_use_case.dart'
    as _i124;
import 'package:neobis_smart_tailor/features/organization/pages/positions/presentation/bloc/positions_bloc.dart'
    as _i152;
import 'package:neobis_smart_tailor/features/profile/data/converter/histoty/history_converter.dart'
    as _i43;
import 'package:neobis_smart_tailor/features/profile/data/converter/histoty/history_list_converter.dart'
    as _i69;
import 'package:neobis_smart_tailor/features/profile/data/converter/purchases/purchaese_converter.dart'
    as _i21;
import 'package:neobis_smart_tailor/features/profile/data/converter/purchases/purchases_list_converter.dart'
    as _i70;
import 'package:neobis_smart_tailor/features/profile/data/data_source/remote/profile_data_source.dart'
    as _i65;
import 'package:neobis_smart_tailor/features/profile/data/data_source/remote/profile_data_source_impl/profile_data_source_impl.dart'
    as _i66;
import 'package:neobis_smart_tailor/features/profile/data/model/history_model/my_history_model.dart'
    as _i41;
import 'package:neobis_smart_tailor/features/profile/data/model/my_purchases/my_purchases_list_model.dart'
    as _i19;
import 'package:neobis_smart_tailor/features/profile/data/repository/profile_repo_impl.dart'
    as _i117;
import 'package:neobis_smart_tailor/features/profile/domain/model/my_history_entity.dart'
    as _i42;
import 'package:neobis_smart_tailor/features/profile/domain/model/my_purchases.dart'
    as _i20;
import 'package:neobis_smart_tailor/features/profile/domain/repository/profile_repo.dart'
    as _i116;
import 'package:neobis_smart_tailor/features/profile/domain/use_case/assign_executor_to_order_use_case.dart'
    as _i144;
import 'package:neobis_smart_tailor/features/profile/domain/use_case/delete_equipment_use_case.dart'
    as _i147;
import 'package:neobis_smart_tailor/features/profile/domain/use_case/delete_order_use_case.dart'
    as _i145;
import 'package:neobis_smart_tailor/features/profile/domain/use_case/delete_service_use_case.dart'
    as _i148;
import 'package:neobis_smart_tailor/features/profile/domain/use_case/edit_profile_info_use_case.dart'
    as _i131;
import 'package:neobis_smart_tailor/features/profile/domain/use_case/get_equipment_detailed_by_id_use_case.dart'
    as _i132;
import 'package:neobis_smart_tailor/features/profile/domain/use_case/get_my_equipments_use_case.dart'
    as _i133;
import 'package:neobis_smart_tailor/features/profile/domain/use_case/get_my_orders_use_case.dart'
    as _i134;
import 'package:neobis_smart_tailor/features/profile/domain/use_case/get_my_purchases_use_case.dart'
    as _i151;
import 'package:neobis_smart_tailor/features/profile/domain/use_case/get_my_services_use_case.dart'
    as _i135;
import 'package:neobis_smart_tailor/features/profile/domain/use_case/get_order_detailed_by_id_use_case.dart'
    as _i136;
import 'package:neobis_smart_tailor/features/profile/domain/use_case/get_order_history_for_user_use_case.dart'
    as _i137;
import 'package:neobis_smart_tailor/features/profile/domain/use_case/get_profile_info_use_case.dart'
    as _i138;
import 'package:neobis_smart_tailor/features/profile/domain/use_case/get_service_detailed_by_id_use_case.dart'
    as _i139;
import 'package:neobis_smart_tailor/features/profile/domain/use_case/hide_equipment_use_case.dart'
    as _i149;
import 'package:neobis_smart_tailor/features/profile/domain/use_case/hide_order_use_case.dart'
    as _i146;
import 'package:neobis_smart_tailor/features/profile/domain/use_case/hide_service_use_case.dart'
    as _i150;
import 'package:neobis_smart_tailor/features/profile/domain/use_case/load_more_purchases_use_case.dart'
    as _i140;
import 'package:neobis_smart_tailor/features/profile/domain/use_case/send_subscription_use_case.dart'
    as _i141;
import 'package:neobis_smart_tailor/features/profile/domain/use_case/sign_out_use_case.dart'
    as _i142;
import 'package:neobis_smart_tailor/features/profile/domain/use_case/upload_image_use_case.dart'
    as _i143;
import 'package:neobis_smart_tailor/features/profile/presentation/bloc/announcement/announcement_bloc.dart'
    as _i169;
import 'package:neobis_smart_tailor/features/profile/presentation/bloc/profile/profile_bloc.dart'
    as _i173;
import 'package:neobis_smart_tailor/features/profile/presentation/pages/order_history/bloc/order_history_bloc.dart'
    as _i163;
import 'package:neobis_smart_tailor/features/profile/presentation/pages/purchases/bloc/purchases_bloc.dart'
    as _i179;
import 'package:neobis_smart_tailor/features/registration/data/data_source/impl/registration_data_source_impl.dart'
    as _i62;
import 'package:neobis_smart_tailor/features/registration/data/data_source/registration_data_source.dart'
    as _i61;
import 'package:neobis_smart_tailor/features/registration/data/repository/registration_repo_impl.dart'
    as _i106;
import 'package:neobis_smart_tailor/features/registration/domain/repository/registration_repo.dart'
    as _i105;
import 'package:neobis_smart_tailor/features/registration/domain/useCase/registration_use_case.dart'
    as _i107;
import 'package:neobis_smart_tailor/features/registration/presentation/bloc/registration_bloc.dart'
    as _i155;
import 'package:neobis_smart_tailor/injection/injection_module.dart' as _i182;
import 'package:shared_preferences/shared_preferences.dart' as _i7;

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
    gh.singleton<_i5.Ticker>(() => const _i5.Ticker());
    gh.singleton<_i6.HistoryBloc>(() => _i6.HistoryBloc());
    gh.singletonAsync<_i7.SharedPreferences>(() => registerModule.prefs);
    gh.singleton<_i8.FlutterSecureStorage>(() => registerModule.storage);
    gh.factory<_i9.Converter<_i10.Employee, _i11.EmployeeEntity>>(
        () => _i12.EmployeeModelToEntityConverter());
    gh.factory<
            _i9.Converter<_i13.ServiceDetailModel, _i14.ServiceDetailEntity>>(
        () => _i15.ServiceDetailMapper());
    gh.factory<
        _i9.Converter<_i16.GeneralResponceModel,
            _i17.GeneralResponceEntity>>(() => _i18.GeneralResponceMapper());
    gh.factory<_i9.Converter<_i19.PurchasesModel, _i20.PurchasesEntity>>(
        () => _i21.GeneralResponseMapper());
    gh.factory<
        _i9.Converter<_i22.OrganizationInfoModel,
            _i23.OrganizationInfoEntity>>(() => _i24.GeneralResponceMapper());
    gh.factory<
            _i9.Converter<List<_i25.PositionModel>, List<_i26.PositionEntity>>>(
        () => _i27.PositionModelListToEntityListConverter());
    gh.factory<_i9.Converter<_i28.CurrentOrderModel, _i29.CurrentOrderEntity>>(
        () => _i30.GeneralResponceMapper());
    gh.singleton<_i31.HttpClient>(() => _i31.HttpClient(gh<_i3.Dio>()));
    gh.factory<_i32.OrderDetailDataSource>(
        () => _i33.OrderDetailDataSourceImpl(gh<_i31.HttpClient>()));
    gh.factory<_i34.CurrentOrderDataSource>(
        () => _i35.CurrentOrderDataSourceImpl(gh<_i31.HttpClient>()));
    gh.factory<_i9.Converter<_i36.OrderDetailModel, _i37.OrderDetailEntity>>(
        () => _i38.OrderDetailMapper());
    gh.factory<_i39.MarketplaceDataSource>(
        () => _i40.MarketplaceDataSourceImpl(gh<_i31.HttpClient>()));
    gh.singleton<_i5.TimerBloc>(() => _i5.TimerBloc(ticker: gh<_i5.Ticker>()));
    gh.factory<_i9.Converter<_i41.HistoryModel, _i42.HistoryEntity>>(
        () => _i43.GeneralResponseMapper());
    gh.singleton<_i44.SecureStorageService>(
        () => _i44.SecureStorageService(gh<_i8.FlutterSecureStorage>()));
    gh.factory<_i45.LoginDataSource>(
        () => _i46.LoginDataSourceImpl(gh<_i31.HttpClient>()));
    gh.factory<
        _i9.Converter<_i47.EquipmentDetailModel,
            _i48.EquipmentDetailEntity>>(() => _i49.EquipmentDetailMapper());
    gh.factory<_i9.Converter<_i50.EmployeeModel, _i51.EmployeeEntity>>(
        () => _i52.GeneralResponceMapper());
    gh.factory<_i9.Converter<_i53.GeneralOrderModel, _i54.GeneralEntity>>(
        () => _i55.EquipmentMapper());
    gh.factory<
            _i9.Converter<_i56.EmployeeDetailModel, _i57.EmployeeDetailEntity>>(
        () => _i58.GeneralResponceMapper());
    gh.factory<_i59.OrganizationDataSource>(
        () => _i60.OrganizationDataSourceImpl(gh<_i31.HttpClient>()));
    gh.factory<_i61.RegistrationDataSource>(
        () => _i62.RegistrationDataSourceImpl(gh<_i31.HttpClient>()));
    gh.factory<_i63.PositionsDataSource>(
        () => _i64.PositionsSourceImpl(gh<_i31.HttpClient>()));
    gh.factory<_i65.ProfileDataSource>(
        () => _i66.ProfileDataSourceImpl(gh<_i31.HttpClient>()));
    gh.factory<_i67.LoginRepo>(
        () => _i68.LoginRepoImpl(gh<_i45.LoginDataSource>()));
    gh.factory<_i9.Converter<_i41.MyHistoryModel, _i42.MyHistoryEntity>>(() =>
        _i69.GeneralResponseMapper(
            gh<_i9.Converter<_i41.HistoryModel, _i42.HistoryEntity>>()));
    gh.factory<
            _i9.Converter<_i19.PurchasesListModel, _i20.PurchasesListEntity>>(
        () => _i70.GeneralResponseMapper(
            gh<_i9.Converter<_i19.PurchasesModel, _i20.PurchasesEntity>>()));
    gh.factory<
        _i9.Converter<_i10.CurrentDetailOrderModel,
            _i11.CurrentDetailOrderEntity>>(() =>
        _i12.CurrentDetailOrderModelToEntityConverter(
            gh<_i9.Converter<_i10.Employee, _i11.EmployeeEntity>>()));
    gh.factory<
        _i9.Converter<_i71.OrganizationListModel,
            _i72.OrganizationListEntity>>(() => _i73.GeneralResponseMapper(
        gh<_i9.Converter<_i28.CurrentOrderModel, _i29.CurrentOrderEntity>>()));
    gh.singleton<_i74.AppRouter>(() => _i74.AppRouter(gh<_i4.AuthService>()));
    gh.factory<_i75.CurrentOrdersRepo>(() => _i76.CurrentOrderRepoImpl(
          gh<_i34.CurrentOrderDataSource>(),
          gh<
              _i9.Converter<_i71.OrganizationListModel,
                  _i72.OrganizationListEntity>>(),
          gh<
              _i9.Converter<_i10.CurrentDetailOrderModel,
                  _i11.CurrentDetailOrderEntity>>(),
        ));
    gh.singleton<_i77.LoginUseCase>(
        () => _i77.LoginUseCase(repo: gh<_i67.LoginRepo>()));
    gh.factory<_i78.CreateOrganizationDataSource>(
        () => _i79.CreateOrganizationDataSourceImpl(
              gh<_i31.HttpClient>(),
              gh<_i4.AuthService>(),
            ));
    gh.factory<_i80.OrganizationRepo>(() => _i81.OrganizationRepoImpl(
          gh<_i59.OrganizationDataSource>(),
          gh<
              _i9.Converter<_i22.OrganizationInfoModel,
                  _i23.OrganizationInfoEntity>>(),
        ));
    gh.factory<_i82.OrderPlaceDataSource>(() => _i83.OrderPlaceDataSourceImpl(
          gh<_i31.HttpClient>(),
          gh<_i4.AuthService>(),
        ));
    gh.factory<_i84.PositionsRepo>(() => _i85.PositionRepoImpl(
          gh<_i63.PositionsDataSource>(),
          gh<
              _i9.Converter<List<_i25.PositionModel>,
                  List<_i26.PositionEntity>>>(),
        ));
    gh.factory<_i86.OrderDetailRepo>(() => _i87.OrderDetailRepoImpl(
          gh<_i32.OrderDetailDataSource>(),
          gh<_i9.Converter<_i36.OrderDetailModel, _i37.OrderDetailEntity>>(),
        ));
    gh.singleton<_i88.GetOrderByIdUseCase>(
        () => _i88.GetOrderByIdUseCase(repo: gh<_i86.OrderDetailRepo>()));
    gh.singleton<_i89.RequestToExecuteUseCase>(
        () => _i89.RequestToExecuteUseCase(repo: gh<_i86.OrderDetailRepo>()));
    gh.factory<_i90.ConfirmationDataSource>(
        () => _i91.ConfirmationDataSourceImpl(gh<_i31.HttpClient>()));
    gh.factory<_i92.CreateOrganizationRepo>(() =>
        _i93.CreateOrganizationRepoImpl(
            gh<_i78.CreateOrganizationDataSource>()));
    gh.factory<_i94.OrderPlaceRepo>(
        () => _i95.CreateOrderRepoImpl(gh<_i82.OrderPlaceDataSource>()));
    gh.factory<_i96.ServiceDetailDataSource>(
        () => _i97.ServiceDetailDataSourceImpl(gh<_i31.HttpClient>()));
    gh.factory<_i98.EquipmentDetailDataSource>(
        () => _i99.EquipmentDetailDataSourceImpl(gh<_i31.HttpClient>()));
    gh.singleton<_i100.GetProfileUseCase>(
        () => _i100.GetProfileUseCase(repo: gh<_i80.OrganizationRepo>()));
    gh.factory<_i101.MarketplaceRepo>(() => _i102.MarketplaceRepoImpl(
          gh<_i39.MarketplaceDataSource>(),
          gh<
              _i9.Converter<_i16.GeneralResponceModel,
                  _i17.GeneralResponceEntity>>(),
        ));
    gh.factory<_i103.EmployeeDataSource>(
        () => _i104.OrganizationDataSourceImpl(gh<_i31.HttpClient>()));
    gh.factory<_i105.RegistrationRepo>(
        () => _i106.RegistrationRepoImpl(gh<_i61.RegistrationDataSource>()));
    gh.singleton<_i107.RegistrationUseCase>(
        () => _i107.RegistrationUseCase(repo: gh<_i105.RegistrationRepo>()));
    gh.singleton<_i108.OrganizationBloc>(
        () => _i108.OrganizationBloc(gh<_i100.GetProfileUseCase>()));
    gh.factory<_i109.EquipmentDetailRepo>(() => _i110.EquipmentDetailRepoImpl(
          gh<_i98.EquipmentDetailDataSource>(),
          gh<
              _i9.Converter<_i47.EquipmentDetailModel,
                  _i48.EquipmentDetailEntity>>(),
        ));
    gh.singleton<_i111.ChangeOrderStatusUseCase>(() =>
        _i111.ChangeOrderStatusUseCase(repo: gh<_i75.CurrentOrdersRepo>()));
    gh.singleton<_i112.GetAllOrdersUseCase>(
        () => _i112.GetAllOrdersUseCase(repo: gh<_i75.CurrentOrdersRepo>()));
    gh.singleton<_i113.GetCurrentDetailOrderUseCase>(() =>
        _i113.GetCurrentDetailOrderUseCase(repo: gh<_i75.CurrentOrdersRepo>()));
    gh.factory<_i114.InviteEmployeeDataSource>(
        () => _i115.InviteEmployeeDataSourceImpl(gh<_i31.HttpClient>()));
    gh.factory<_i116.ProfileRepo>(() => _i117.ProfileRepoImpl(
          gh<_i65.ProfileDataSource>(),
          gh<_i4.AuthService>(),
          gh<
              _i9
              .Converter<_i19.PurchasesListModel, _i20.PurchasesListEntity>>(),
          gh<_i9.Converter<_i41.MyHistoryModel, _i42.MyHistoryEntity>>(),
        ));
    gh.factory<_i118.ConfirmationRepo>(() => _i119.ConfirmationRepoImpl(
          gh<_i90.ConfirmationDataSource>(),
          gh<_i4.AuthService>(),
        ));
    gh.factory<_i120.EmployeeRepo>(() => _i121.EmployeeRepoImpl(
          gh<_i103.EmployeeDataSource>(),
          gh<_i9.Converter<_i50.EmployeeModel, _i51.EmployeeEntity>>(),
          gh<
              _i9.Converter<_i56.EmployeeDetailModel,
                  _i57.EmployeeDetailEntity>>(),
        ));
    gh.factory<_i122.LoginBloc>(
        () => _i122.LoginBloc(loginUseCase: gh<_i77.LoginUseCase>()));
    gh.singleton<_i123.AddPositionUseCase>(
        () => _i123.AddPositionUseCase(repo: gh<_i84.PositionsRepo>()));
    gh.singleton<_i124.GetAllPositionsUseCase>(
        () => _i124.GetAllPositionsUseCase(repo: gh<_i84.PositionsRepo>()));
    gh.factory<_i125.OrderDetailBloc>(() => _i125.OrderDetailBloc(
          gh<_i88.GetOrderByIdUseCase>(),
          gh<_i89.RequestToExecuteUseCase>(),
        ));
    gh.singleton<_i126.GetAllEmployeesUseCase>(
        () => _i126.GetAllEmployeesUseCase(repo: gh<_i120.EmployeeRepo>()));
    gh.singleton<_i127.GetEmployeeDetailUseCase>(
        () => _i127.GetEmployeeDetailUseCase(repo: gh<_i120.EmployeeRepo>()));
    gh.singleton<_i128.GetEuipmentsUseCase>(
        () => _i128.GetEuipmentsUseCase(repo: gh<_i101.MarketplaceRepo>()));
    gh.singleton<_i129.GetOrdersUseCase>(
        () => _i129.GetOrdersUseCase(repo: gh<_i101.MarketplaceRepo>()));
    gh.singleton<_i130.GetServicesUseCase>(
        () => _i130.GetServicesUseCase(repo: gh<_i101.MarketplaceRepo>()));
    gh.singleton<_i131.EditProfileInfoUseCase>(
        () => _i131.EditProfileInfoUseCase(repo: gh<_i116.ProfileRepo>()));
    gh.singleton<_i132.GetEquipmentDetailedByIdUseCase>(() =>
        _i132.GetEquipmentDetailedByIdUseCase(repo: gh<_i116.ProfileRepo>()));
    gh.singleton<_i133.GetMyEquipmentsUseCase>(
        () => _i133.GetMyEquipmentsUseCase(repo: gh<_i116.ProfileRepo>()));
    gh.singleton<_i134.GetMyOrdersUseCase>(
        () => _i134.GetMyOrdersUseCase(repo: gh<_i116.ProfileRepo>()));
    gh.singleton<_i135.GetMyServicesUseCase>(
        () => _i135.GetMyServicesUseCase(repo: gh<_i116.ProfileRepo>()));
    gh.singleton<_i136.GetOrderDetailedByIdUseCase>(
        () => _i136.GetOrderDetailedByIdUseCase(repo: gh<_i116.ProfileRepo>()));
    gh.singleton<_i137.GetOrderHistoryForUserUseCase>(() =>
        _i137.GetOrderHistoryForUserUseCase(repo: gh<_i116.ProfileRepo>()));
    gh.singleton<_i138.GetProfileInfoUseCase>(
        () => _i138.GetProfileInfoUseCase(repo: gh<_i116.ProfileRepo>()));
    gh.singleton<_i139.GetServiceDetailedByIdUseCase>(() =>
        _i139.GetServiceDetailedByIdUseCase(repo: gh<_i116.ProfileRepo>()));
    gh.singleton<_i140.LoadMorePurchasesUseCase>(
        () => _i140.LoadMorePurchasesUseCase(repo: gh<_i116.ProfileRepo>()));
    gh.singleton<_i141.SendSubscriptionUseCase>(
        () => _i141.SendSubscriptionUseCase(repo: gh<_i116.ProfileRepo>()));
    gh.singleton<_i142.SignOutUseCase>(
        () => _i142.SignOutUseCase(repo: gh<_i116.ProfileRepo>()));
    gh.singleton<_i143.UploadImageUseCase>(
        () => _i143.UploadImageUseCase(repo: gh<_i116.ProfileRepo>()));
    gh.singleton<_i144.AssignExecutorToOrderUseCase>(() =>
        _i144.AssignExecutorToOrderUseCase(repo: gh<_i116.ProfileRepo>()));
    gh.singleton<_i145.DeleteOrderUseCase>(
        () => _i145.DeleteOrderUseCase(repo: gh<_i116.ProfileRepo>()));
    gh.singleton<_i146.HideOrderUseCase>(
        () => _i146.HideOrderUseCase(repo: gh<_i116.ProfileRepo>()));
    gh.singleton<_i147.DeleteEquipmentUseCase>(
        () => _i147.DeleteEquipmentUseCase(repo: gh<_i116.ProfileRepo>()));
    gh.singleton<_i148.DeleteServiceUseCase>(
        () => _i148.DeleteServiceUseCase(repo: gh<_i116.ProfileRepo>()));
    gh.singleton<_i149.HideEquipmentUseCase>(
        () => _i149.HideEquipmentUseCase(repo: gh<_i116.ProfileRepo>()));
    gh.singleton<_i150.HideServiceUseCase>(
        () => _i150.HideServiceUseCase(repo: gh<_i116.ProfileRepo>()));
    gh.singleton<_i151.GetMyPurchasesUseCase>(
        () => _i151.GetMyPurchasesUseCase(repo: gh<_i116.ProfileRepo>()));
    gh.singleton<_i152.PositionsBloc>(() => _i152.PositionsBloc(
          gh<_i123.AddPositionUseCase>(),
          gh<_i124.GetAllPositionsUseCase>(),
        ));
    gh.factory<_i153.InviteEmployeeRepo>(() =>
        _i154.InviteEmployeeRepoImpl(gh<_i114.InviteEmployeeDataSource>()));
    gh.factory<_i155.RegistrationBloc>(() => _i155.RegistrationBloc(
        registrationUseCase: gh<_i107.RegistrationUseCase>()));
    gh.singleton<_i156.ConfirmationUseCase>(
        () => _i156.ConfirmationUseCase(repo: gh<_i118.ConfirmationRepo>()));
    gh.singleton<_i157.ResendPinUseCase>(
        () => _i157.ResendPinUseCase(repo: gh<_i118.ConfirmationRepo>()));
    gh.singleton<_i158.CreateOrganizationUseCase>(() =>
        _i158.CreateOrganizationUseCase(
            repo: gh<_i92.CreateOrganizationRepo>()));
    gh.singleton<_i159.MarketplaceBloc>(() => _i159.MarketplaceBloc(
          gh<_i128.GetEuipmentsUseCase>(),
          gh<_i129.GetOrdersUseCase>(),
          gh<_i130.GetServicesUseCase>(),
        ));
    gh.singleton<_i160.CreateEquipmentUseCase>(
        () => _i160.CreateEquipmentUseCase(repo: gh<_i94.OrderPlaceRepo>()));
    gh.singleton<_i161.CreateOrderUseCase>(
        () => _i161.CreateOrderUseCase(repo: gh<_i94.OrderPlaceRepo>()));
    gh.singleton<_i162.CreateServiceUseCase>(
        () => _i162.CreateServiceUseCase(repo: gh<_i94.OrderPlaceRepo>()));
    gh.factory<_i163.OrderHistoryBloc>(() =>
        _i163.OrderHistoryBloc(gh<_i137.GetOrderHistoryForUserUseCase>()));
    gh.singleton<_i164.OrderPlaceBloc>(() => _i164.OrderPlaceBloc(
          gh<_i160.CreateEquipmentUseCase>(),
          gh<_i162.CreateServiceUseCase>(),
          gh<_i161.CreateOrderUseCase>(),
        ));
    gh.factory<_i165.ServiceDetailRepo>(() => _i166.ServiceDetailRepoImpl(
          gh<_i96.ServiceDetailDataSource>(),
          gh<
              _i9
              .Converter<_i13.ServiceDetailModel, _i14.ServiceDetailEntity>>(),
        ));
    gh.singleton<_i167.BuyEquipmentIdUseCase>(() =>
        _i167.BuyEquipmentIdUseCase(repo: gh<_i109.EquipmentDetailRepo>()));
    gh.singleton<_i168.GetEuipmentByIdUseCase>(() =>
        _i168.GetEuipmentByIdUseCase(repo: gh<_i109.EquipmentDetailRepo>()));
    gh.factory<_i169.AnnouncementBloc>(() => _i169.AnnouncementBloc(
          gh<_i136.GetOrderDetailedByIdUseCase>(),
          gh<_i139.GetServiceDetailedByIdUseCase>(),
          gh<_i132.GetEquipmentDetailedByIdUseCase>(),
          gh<_i134.GetMyOrdersUseCase>(),
          gh<_i133.GetMyEquipmentsUseCase>(),
          gh<_i135.GetMyServicesUseCase>(),
          gh<_i144.AssignExecutorToOrderUseCase>(),
          gh<_i146.HideOrderUseCase>(),
          gh<_i145.DeleteOrderUseCase>(),
          gh<_i149.HideEquipmentUseCase>(),
          gh<_i150.HideServiceUseCase>(),
          gh<_i147.DeleteEquipmentUseCase>(),
          gh<_i148.DeleteServiceUseCase>(),
        ));
    gh.singleton<_i170.InviteEmployeeUseCase>(() =>
        _i170.InviteEmployeeUseCase(repo: gh<_i153.InviteEmployeeRepo>()));
    gh.singleton<_i171.ConfirmationBloc>(() => _i171.ConfirmationBloc(
          gh<_i156.ConfirmationUseCase>(),
          gh<_i157.ResendPinUseCase>(),
        ));
    gh.singleton<_i172.CurrentOrderBloc>(() => _i172.CurrentOrderBloc(
          gh<_i112.GetAllOrdersUseCase>(),
          gh<_i113.GetCurrentDetailOrderUseCase>(),
        ));
    gh.factory<_i173.ProfileBloc>(() => _i173.ProfileBloc(
          sendSubscriptionUseCase: gh<_i141.SendSubscriptionUseCase>(),
          signOutUseCase: gh<_i142.SignOutUseCase>(),
          getProfileInfoUseCase: gh<_i138.GetProfileInfoUseCase>(),
          editProfileInfoUseCase: gh<_i131.EditProfileInfoUseCase>(),
          uploadImageUseCase: gh<_i143.UploadImageUseCase>(),
        ));
    gh.singleton<_i174.EmployeeBloc>(() => _i174.EmployeeBloc(
          gh<_i126.GetAllEmployeesUseCase>(),
          gh<_i127.GetEmployeeDetailUseCase>(),
        ));
    gh.factory<_i175.CreateOrganizationBloc>(() =>
        _i175.CreateOrganizationBloc(gh<_i158.CreateOrganizationUseCase>()));
    gh.singleton<_i176.InviteEmployeeBloc>(
        () => _i176.InviteEmployeeBloc(gh<_i170.InviteEmployeeUseCase>()));
    gh.singleton<_i177.GetServiceByIdUseCase>(
        () => _i177.GetServiceByIdUseCase(repo: gh<_i165.ServiceDetailRepo>()));
    gh.singleton<_i178.SendRequestToServiceUseCase>(() =>
        _i178.SendRequestToServiceUseCase(repo: gh<_i165.ServiceDetailRepo>()));
    gh.factory<_i179.PurchasesBloc>(() => _i179.PurchasesBloc(
          gh<_i151.GetMyPurchasesUseCase>(),
          gh<_i140.LoadMorePurchasesUseCase>(),
          gh<_i168.GetEuipmentByIdUseCase>(),
          gh<_i88.GetOrderByIdUseCase>(),
          gh<_i177.GetServiceByIdUseCase>(),
        ));
    gh.factory<_i180.EquipmentDetailBloc>(() => _i180.EquipmentDetailBloc(
          gh<_i168.GetEuipmentByIdUseCase>(),
          gh<_i167.BuyEquipmentIdUseCase>(),
        ));
    gh.factory<_i181.ServiceDetailBloc>(() => _i181.ServiceDetailBloc(
          gh<_i177.GetServiceByIdUseCase>(),
          gh<_i178.SendRequestToServiceUseCase>(),
        ));
    return this;
  }
}

class _$RegisterModule extends _i182.RegisterModule {}
