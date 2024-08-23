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
import 'package:neobis_smart_tailor/core/app/router/app_routes.dart' as _i76;
import 'package:neobis_smart_tailor/core/network/http_client.dart' as _i33;
import 'package:neobis_smart_tailor/core/services/auth_service.dart' as _i4;
import 'package:neobis_smart_tailor/core/services/secure_storage_service.dart'
    as _i46;
import 'package:neobis_smart_tailor/features/confirmation/data/data_source/confirmation_data_source.dart'
    as _i94;
import 'package:neobis_smart_tailor/features/confirmation/data/data_source/impl/confirmation_data_source_impl.dart'
    as _i95;
import 'package:neobis_smart_tailor/features/confirmation/data/repository/confirmation_repo_impl.dart'
    as _i124;
import 'package:neobis_smart_tailor/features/confirmation/domain/repository/confirmation_repo.dart'
    as _i123;
import 'package:neobis_smart_tailor/features/confirmation/domain/useCase/confirmation_use_case.dart'
    as _i165;
import 'package:neobis_smart_tailor/features/confirmation/domain/useCase/resend_pin_use_case%20copy.dart'
    as _i166;
import 'package:neobis_smart_tailor/features/confirmation/presentation/bloc/confirmation_bloc/confirmation_bloc.dart'
    as _i184;
import 'package:neobis_smart_tailor/features/confirmation/presentation/bloc/timer_bloc/timer_bloc.dart'
    as _i5;
import 'package:neobis_smart_tailor/features/login/data/data_source/impl/login_data_source_impl.dart'
    as _i48;
import 'package:neobis_smart_tailor/features/login/data/data_source/login_data_source.dart'
    as _i47;
import 'package:neobis_smart_tailor/features/login/data/repository/login_repo_impl.dart'
    as _i70;
import 'package:neobis_smart_tailor/features/login/domain/repository/login_repo.dart'
    as _i69;
import 'package:neobis_smart_tailor/features/login/domain/useCase/login_use_case.dart'
    as _i79;
import 'package:neobis_smart_tailor/features/login/presentation/bloc/login_bloc.dart'
    as _i127;
import 'package:neobis_smart_tailor/features/marketplace/data/data_source/marketplace_data_source.dart'
    as _i41;
import 'package:neobis_smart_tailor/features/marketplace/data/data_source/marketplace_data_source_impl/marketplace_data_source_impl.dart'
    as _i42;
import 'package:neobis_smart_tailor/features/marketplace/data/mapper/common_converter.dart'
    as _i57;
import 'package:neobis_smart_tailor/features/marketplace/data/mapper/general_responce_converter.dart'
    as _i20;
import 'package:neobis_smart_tailor/features/marketplace/data/mapper/search_converter.dart'
    as _i14;
import 'package:neobis_smart_tailor/features/marketplace/data/models/general_model/general_model.dart'
    as _i55;
import 'package:neobis_smart_tailor/features/marketplace/data/models/general_responce/general_responce.dart'
    as _i18;
import 'package:neobis_smart_tailor/features/marketplace/data/models/search_model/advertisement_model.dart'
    as _i12;
import 'package:neobis_smart_tailor/features/marketplace/data/repository/marketplace_repo_impl.dart'
    as _i116;
import 'package:neobis_smart_tailor/features/marketplace/domain/entitys/common_entity.dart'
    as _i56;
import 'package:neobis_smart_tailor/features/marketplace/domain/entitys/general_responce_entity.dart'
    as _i19;
import 'package:neobis_smart_tailor/features/marketplace/domain/entitys/search_entity.dart'
    as _i13;
import 'package:neobis_smart_tailor/features/marketplace/domain/repository/marketplace_repo.dart'
    as _i115;
import 'package:neobis_smart_tailor/features/marketplace/domain/use_case/get_equipments_use_case.dart'
    as _i136;
import 'package:neobis_smart_tailor/features/marketplace/domain/use_case/get_orders_use_case.dart'
    as _i137;
import 'package:neobis_smart_tailor/features/marketplace/domain/use_case/get_services_ude_case.dart'
    as _i138;
import 'package:neobis_smart_tailor/features/marketplace/domain/use_case/search_equipment_use_case.dart'
    as _i139;
import 'package:neobis_smart_tailor/features/marketplace/domain/use_case/search_order_use_case.dart'
    as _i140;
import 'package:neobis_smart_tailor/features/marketplace/domain/use_case/search_service_use_case.dart'
    as _i141;
import 'package:neobis_smart_tailor/features/marketplace/presentation/bloc/marketplace_bloc.dart'
    as _i173;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/equipment_detail_screen/data/data_source/equipment_detail_data_source.dart'
    as _i104;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/equipment_detail_screen/data/data_source/equipment_detail_data_source_impl/marketplace_data_source_impl.dart'
    as _i105;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/equipment_detail_screen/data/mapper/equipment_converter.dart'
    as _i51;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/equipment_detail_screen/data/models/equipment_detail_model/equipment_detail_model.dart'
    as _i49;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/equipment_detail_screen/data/repository/equipment_detail_repo_impl.dart'
    as _i114;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/equipment_detail_screen/domain/entitys/equipment_detail_entity.dart'
    as _i50;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/equipment_detail_screen/domain/repository/equipment_detail_repo.dart'
    as _i113;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/equipment_detail_screen/domain/use_case/buy_equipment_use_case%20copy.dart'
    as _i179;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/equipment_detail_screen/domain/use_case/get_equipmentby_id_use_case.dart'
    as _i180;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/equipment_detail_screen/presentation/bloc/equipment_detail_bloc.dart'
    as _i193;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/order_detail_screen/data/data_source/marketplace_detail_data_source_impl/order_data_source_impl.dart'
    as _i35;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/order_detail_screen/data/data_source/order_detail_data_source.dart'
    as _i34;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/order_detail_screen/data/mapper/order_converter.dart'
    as _i40;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/order_detail_screen/data/models/order_detail_model/order_detail_model.dart'
    as _i38;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/order_detail_screen/data/repository/order_detail_repo_impl.dart'
    as _i91;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/order_detail_screen/domain/entitys/order_detail_entity.dart'
    as _i39;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/order_detail_screen/domain/repository/order_detail_repo.dart'
    as _i90;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/order_detail_screen/domain/use_case/get_order_by_id_use_case.dart'
    as _i92;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/order_detail_screen/domain/use_case/request_to_execute_use_case%20copy.dart'
    as _i93;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/order_detail_screen/presentation/bloc/order_detail_bloc.dart'
    as _i132;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/service_detail_screen/data/data_source/marketplace_detail_data_source_impl/service_detail_data_source_impl.dart'
    as _i103;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/service_detail_screen/data/data_source/service_detail_data_source.dart'
    as _i102;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/service_detail_screen/data/mapper/service_converter%20copy.dart'
    as _i17;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/service_detail_screen/data/models/service_detail_model/service_detail_model.dart'
    as _i15;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/service_detail_screen/data/repository/service_detail_repo_impl.dart'
    as _i178;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/service_detail_screen/domain/entitys/service_detail_entity.dart'
    as _i16;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/service_detail_screen/domain/repository/service_detail_repo.dart'
    as _i177;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/service_detail_screen/domain/use_case/get_service_by_id_use_case.dart'
    as _i190;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/service_detail_screen/domain/use_case/send_request_to_service_use_case.dart'
    as _i191;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/service_detail_screen/presentation/bloc/service_detail_bloc.dart'
    as _i196;
import 'package:neobis_smart_tailor/features/order_place/data/data_source/impl/order_place_data_source_impl.dart'
    as _i85;
import 'package:neobis_smart_tailor/features/order_place/data/data_source/order_place_data_source.dart'
    as _i84;
import 'package:neobis_smart_tailor/features/order_place/data/repository/order_place_repo_impl.dart'
    as _i101;
import 'package:neobis_smart_tailor/features/order_place/domain/repository/order_place_repo.dart'
    as _i100;
import 'package:neobis_smart_tailor/features/order_place/domain/useCase/create_equipment_use_case.dart'
    as _i168;
import 'package:neobis_smart_tailor/features/order_place/domain/useCase/create_order_use_case.dart'
    as _i169;
import 'package:neobis_smart_tailor/features/order_place/domain/useCase/create_service_use_case.dart'
    as _i170;
import 'package:neobis_smart_tailor/features/order_place/presentation/bloc/order_place_bloc.dart'
    as _i176;
import 'package:neobis_smart_tailor/features/organization/pages/create_organization/data/data_source/create_organization_data_source.dart'
    as _i80;
import 'package:neobis_smart_tailor/features/organization/pages/create_organization/data/data_source/impl/create_organization_data_source_impl.dart'
    as _i81;
import 'package:neobis_smart_tailor/features/organization/pages/create_organization/data/repository/create_organization_repo_impl.dart'
    as _i97;
import 'package:neobis_smart_tailor/features/organization/pages/create_organization/domain/repository/create_organization_repo.dart'
    as _i96;
import 'package:neobis_smart_tailor/features/organization/pages/create_organization/domain/use_case/create_organization_use_case.dart'
    as _i167;
import 'package:neobis_smart_tailor/features/organization/pages/create_organization/presentation/create_organization_bloc/create_organization_bloc.dart'
    as _i188;
import 'package:neobis_smart_tailor/features/organization/pages/current_order/data/converter/current-detail_order_converter.dart'
    as _i11;
import 'package:neobis_smart_tailor/features/organization/pages/current_order/data/converter/current_order_converter.dart'
    as _i32;
import 'package:neobis_smart_tailor/features/organization/pages/current_order/data/converter/organization_list_converter.dart'
    as _i75;
import 'package:neobis_smart_tailor/features/organization/pages/current_order/data/data_source/current_order_data_source.dart'
    as _i36;
import 'package:neobis_smart_tailor/features/organization/pages/current_order/data/data_source/impl/current_order_data_source_impl.dart'
    as _i37;
import 'package:neobis_smart_tailor/features/organization/pages/current_order/data/models/current_detail_order_model/current_detail_order_model.dart'
    as _i9;
import 'package:neobis_smart_tailor/features/organization/pages/current_order/data/models/current_order_model/current_order_model.dart'
    as _i30;
import 'package:neobis_smart_tailor/features/organization/pages/current_order/data/models/organization_list_model/organization_list_model.dart'
    as _i73;
import 'package:neobis_smart_tailor/features/organization/pages/current_order/data/repository/current_order_repo_impl.dart'
    as _i78;
import 'package:neobis_smart_tailor/features/organization/pages/current_order/domain/entitys/current_detail_order_entity.dart'
    as _i10;
import 'package:neobis_smart_tailor/features/organization/pages/current_order/domain/entitys/current_order_entity.dart'
    as _i31;
import 'package:neobis_smart_tailor/features/organization/pages/current_order/domain/entitys/organization_list_entity.dart'
    as _i74;
import 'package:neobis_smart_tailor/features/organization/pages/current_order/domain/repository/current_orders_repo.dart'
    as _i77;
import 'package:neobis_smart_tailor/features/organization/pages/current_order/domain/use_case/change_order_status_use_case.dart'
    as _i117;
import 'package:neobis_smart_tailor/features/organization/pages/current_order/domain/use_case/complete_order_use_case.dart'
    as _i118;
import 'package:neobis_smart_tailor/features/organization/pages/current_order/domain/use_case/get_all_orders_use_case.dart'
    as _i119;
import 'package:neobis_smart_tailor/features/organization/pages/current_order/domain/use_case/get_detailed_order_use_case.dart'
    as _i120;
import 'package:neobis_smart_tailor/features/organization/pages/current_order/presentation/bloc/current_order_bloc.dart'
    as _i181;
import 'package:neobis_smart_tailor/features/organization/pages/employee/data/converter/employee_detail_converter.dart'
    as _i60;
import 'package:neobis_smart_tailor/features/organization/pages/employee/data/converter/employees_converter.dart'
    as _i54;
import 'package:neobis_smart_tailor/features/organization/pages/employee/data/data_source/employee_data_source.dart'
    as _i107;
import 'package:neobis_smart_tailor/features/organization/pages/employee/data/data_source/impl/employee_data_source_impl.dart'
    as _i108;
import 'package:neobis_smart_tailor/features/organization/pages/employee/data/models/employee_detail_model/employee_detail_model.dart'
    as _i58;
import 'package:neobis_smart_tailor/features/organization/pages/employee/data/models/employee_model/employee_model.dart'
    as _i52;
import 'package:neobis_smart_tailor/features/organization/pages/employee/data/repository/employee_repo_impl.dart'
    as _i126;
import 'package:neobis_smart_tailor/features/organization/pages/employee/domain/entitys/employee_detail_entity.dart'
    as _i59;
import 'package:neobis_smart_tailor/features/organization/pages/employee/domain/entitys/employee_entity.dart'
    as _i53;
import 'package:neobis_smart_tailor/features/organization/pages/employee/domain/repository/employees_repo.dart'
    as _i125;
import 'package:neobis_smart_tailor/features/organization/pages/employee/domain/use_case/get_all_employees_use_case.dart'
    as _i133;
import 'package:neobis_smart_tailor/features/organization/pages/employee/domain/use_case/get_employee_detail_use_case.dart'
    as _i134;
import 'package:neobis_smart_tailor/features/organization/pages/employee/presentation/bloc/employee_bloc.dart'
    as _i187;
import 'package:neobis_smart_tailor/features/organization/pages/history/data/data_source/impl/orders_history_data_source_impl.dart'
    as _i99;
import 'package:neobis_smart_tailor/features/organization/pages/history/data/data_source/orders_history_data_source.dart'
    as _i98;
import 'package:neobis_smart_tailor/features/organization/pages/history/data/repository/orders_history_repo_impl.dart'
    as _i172;
import 'package:neobis_smart_tailor/features/organization/pages/history/domain/repository/orders_history_repo.dart'
    as _i171;
import 'package:neobis_smart_tailor/features/organization/pages/history/domain/use_case/get_orders_history_use_case.dart'
    as _i175;
import 'package:neobis_smart_tailor/features/organization/pages/history/presentation/bloc/history_bloc.dart'
    as _i189;
import 'package:neobis_smart_tailor/features/organization/pages/invite_employee/data/data_source/impl/invite_employee_data_source_impl.dart'
    as _i122;
import 'package:neobis_smart_tailor/features/organization/pages/invite_employee/data/data_source/invite_employee_data_source.dart'
    as _i121;
import 'package:neobis_smart_tailor/features/organization/pages/invite_employee/data/repository/invite_employee_repo_impl.dart'
    as _i183;
import 'package:neobis_smart_tailor/features/organization/pages/invite_employee/domain/repository/invite_employee_repo.dart'
    as _i182;
import 'package:neobis_smart_tailor/features/organization/pages/invite_employee/domain/use_case/get_available_positions_use_case.dart'
    as _i194;
import 'package:neobis_smart_tailor/features/organization/pages/invite_employee/domain/use_case/invite_employee_use_case.dart'
    as _i195;
import 'package:neobis_smart_tailor/features/organization/pages/invite_employee/presentation/bloc/invite_employee_bloc.dart'
    as _i197;
import 'package:neobis_smart_tailor/features/organization/pages/organization/data/converter/organization_info_converter.dart'
    as _i26;
import 'package:neobis_smart_tailor/features/organization/pages/organization/data/data_source/impl/organization_data_source_impl.dart'
    as _i62;
import 'package:neobis_smart_tailor/features/organization/pages/organization/data/data_source/organization_data_source.dart'
    as _i61;
import 'package:neobis_smart_tailor/features/organization/pages/organization/data/models/organization_info_model/organization_info_model.dart'
    as _i24;
import 'package:neobis_smart_tailor/features/organization/pages/organization/data/repository/organization_repo_impl.dart'
    as _i83;
import 'package:neobis_smart_tailor/features/organization/pages/organization/domain/entitys/organization_info_entity.dart'
    as _i25;
import 'package:neobis_smart_tailor/features/organization/pages/organization/domain/repository/organization_repo.dart'
    as _i82;
import 'package:neobis_smart_tailor/features/organization/pages/organization/domain/use_case/get_profile_use_case.dart'
    as _i106;
import 'package:neobis_smart_tailor/features/organization/pages/organization/presentation/bloc/organization_bloc.dart'
    as _i112;
import 'package:neobis_smart_tailor/features/organization/pages/positions/data/converter/converter.dart'
    as _i29;
import 'package:neobis_smart_tailor/features/organization/pages/positions/data/data_source/impl/positions_data_source_impl.dart'
    as _i66;
import 'package:neobis_smart_tailor/features/organization/pages/positions/data/data_source/positions_data_source.dart'
    as _i65;
import 'package:neobis_smart_tailor/features/organization/pages/positions/data/models/_model/position_model.dart'
    as _i27;
import 'package:neobis_smart_tailor/features/organization/pages/positions/data/repository/position_repo_impl.dart'
    as _i87;
import 'package:neobis_smart_tailor/features/organization/pages/positions/domain/entitys/position_entity.dart'
    as _i28;
import 'package:neobis_smart_tailor/features/organization/pages/positions/domain/repository/positions_repo.dart'
    as _i86;
import 'package:neobis_smart_tailor/features/organization/pages/positions/domain/use_case/add_position_use_case.dart'
    as _i128;
import 'package:neobis_smart_tailor/features/organization/pages/positions/domain/use_case/get_all_positions_use_case.dart'
    as _i129;
import 'package:neobis_smart_tailor/features/organization/pages/positions/domain/use_case/get_available_access_rights_use_case.dart'
    as _i130;
import 'package:neobis_smart_tailor/features/organization/pages/positions/domain/use_case/get_available_weights_use_case.dart'
    as _i131;
import 'package:neobis_smart_tailor/features/organization/pages/positions/presentation/bloc/positions_bloc.dart'
    as _i135;
import 'package:neobis_smart_tailor/features/profile/data/converter/histoty/history_converter.dart'
    as _i45;
import 'package:neobis_smart_tailor/features/profile/data/converter/histoty/history_list_converter.dart'
    as _i71;
import 'package:neobis_smart_tailor/features/profile/data/converter/purchases/purchaese_converter.dart'
    as _i23;
import 'package:neobis_smart_tailor/features/profile/data/converter/purchases/purchases_list_converter.dart'
    as _i72;
import 'package:neobis_smart_tailor/features/profile/data/data_source/remote/profile_data_source.dart'
    as _i67;
import 'package:neobis_smart_tailor/features/profile/data/data_source/remote/profile_data_source_impl/profile_data_source_impl.dart'
    as _i68;
import 'package:neobis_smart_tailor/features/profile/data/model/history_model/my_history_model.dart'
    as _i43;
import 'package:neobis_smart_tailor/features/profile/data/model/my_purchases/my_purchases_list_model.dart'
    as _i21;
import 'package:neobis_smart_tailor/features/profile/data/repository/profile_repo_impl.dart'
    as _i89;
import 'package:neobis_smart_tailor/features/profile/domain/model/my_history_entity.dart'
    as _i44;
import 'package:neobis_smart_tailor/features/profile/domain/model/my_purchases.dart'
    as _i22;
import 'package:neobis_smart_tailor/features/profile/domain/repository/profile_repo.dart'
    as _i88;
import 'package:neobis_smart_tailor/features/profile/domain/use_case/assign_executor_to_order_use_case.dart'
    as _i142;
import 'package:neobis_smart_tailor/features/profile/domain/use_case/delete_equipment_use_case.dart'
    as _i143;
import 'package:neobis_smart_tailor/features/profile/domain/use_case/delete_order_use_case.dart'
    as _i144;
import 'package:neobis_smart_tailor/features/profile/domain/use_case/delete_service_use_case.dart'
    as _i145;
import 'package:neobis_smart_tailor/features/profile/domain/use_case/edit_profile_info_use_case.dart'
    as _i146;
import 'package:neobis_smart_tailor/features/profile/domain/use_case/get_equipment_detailed_by_id_use_case.dart'
    as _i147;
import 'package:neobis_smart_tailor/features/profile/domain/use_case/get_my_equipments_use_case.dart'
    as _i148;
import 'package:neobis_smart_tailor/features/profile/domain/use_case/get_my_orders_use_case.dart'
    as _i149;
import 'package:neobis_smart_tailor/features/profile/domain/use_case/get_my_purchases_use_case.dart'
    as _i150;
import 'package:neobis_smart_tailor/features/profile/domain/use_case/get_my_services_use_case.dart'
    as _i151;
import 'package:neobis_smart_tailor/features/profile/domain/use_case/get_order_detailed_by_id_use_case.dart'
    as _i152;
import 'package:neobis_smart_tailor/features/profile/domain/use_case/get_order_history_for_user_use_case.dart'
    as _i153;
import 'package:neobis_smart_tailor/features/profile/domain/use_case/get_profile_info_use_case.dart'
    as _i154;
import 'package:neobis_smart_tailor/features/profile/domain/use_case/get_service_detailed_by_id_use_case.dart'
    as _i155;
import 'package:neobis_smart_tailor/features/profile/domain/use_case/hide_equipment_use_case.dart'
    as _i156;
import 'package:neobis_smart_tailor/features/profile/domain/use_case/hide_order_use_case.dart'
    as _i157;
import 'package:neobis_smart_tailor/features/profile/domain/use_case/hide_service_use_case.dart'
    as _i158;
import 'package:neobis_smart_tailor/features/profile/domain/use_case/load_more_purchases_use_case.dart'
    as _i159;
import 'package:neobis_smart_tailor/features/profile/domain/use_case/search_advertisement_use_case.dart'
    as _i160;
import 'package:neobis_smart_tailor/features/profile/domain/use_case/send_subscription_use_case.dart'
    as _i161;
import 'package:neobis_smart_tailor/features/profile/domain/use_case/sign_out_use_case.dart'
    as _i162;
import 'package:neobis_smart_tailor/features/profile/domain/use_case/upload_image_use_case.dart'
    as _i163;
import 'package:neobis_smart_tailor/features/profile/presentation/bloc/announcement/announcement_bloc.dart'
    as _i186;
import 'package:neobis_smart_tailor/features/profile/presentation/bloc/profile/profile_bloc.dart'
    as _i185;
import 'package:neobis_smart_tailor/features/profile/presentation/pages/order_history/bloc/order_history_bloc.dart'
    as _i174;
import 'package:neobis_smart_tailor/features/profile/presentation/pages/purchases/bloc/purchases_bloc.dart'
    as _i192;
import 'package:neobis_smart_tailor/features/registration/data/data_source/impl/registration_data_source_impl.dart'
    as _i64;
import 'package:neobis_smart_tailor/features/registration/data/data_source/registration_data_source.dart'
    as _i63;
import 'package:neobis_smart_tailor/features/registration/data/repository/registration_repo_impl.dart'
    as _i110;
import 'package:neobis_smart_tailor/features/registration/domain/repository/registration_repo.dart'
    as _i109;
import 'package:neobis_smart_tailor/features/registration/domain/useCase/registration_use_case.dart'
    as _i111;
import 'package:neobis_smart_tailor/features/registration/presentation/bloc/registration_bloc.dart'
    as _i164;
import 'package:neobis_smart_tailor/injection/injection_module.dart' as _i198;
import 'package:shared_preferences/shared_preferences.dart' as _i6;

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
    gh.singletonAsync<_i6.SharedPreferences>(() => registerModule.prefs);
    gh.singleton<_i7.FlutterSecureStorage>(() => registerModule.storage);
    gh.factory<_i8.Converter<_i9.Employee, _i10.EmployeeEntity>>(
        () => _i11.EmployeeModelToEntityConverter());
    gh.factory<
            _i8.Converter<_i12.AdvertisementResponseModel,
                _i13.AdvertisementResponseEntity>>(
        () => _i14.AdvertisementResponseModelToEntityConverter());
    gh.factory<
            _i8.Converter<_i15.ServiceDetailModel, _i16.ServiceDetailEntity>>(
        () => _i17.ServiceDetailMapper());
    gh.factory<
        _i8.Converter<_i18.GeneralResponceModel,
            _i19.GeneralResponceEntity>>(() => _i20.GeneralResponceMapper());
    gh.factory<_i8.Converter<_i21.PurchasesModel, _i22.PurchasesEntity>>(
        () => _i23.GeneralResponseMapper());
    gh.factory<
        _i8.Converter<_i24.OrganizationInfoModel,
            _i25.OrganizationInfoEntity>>(() => _i26.GeneralResponceMapper());
    gh.factory<
            _i8.Converter<List<_i27.PositionModel>, List<_i28.PositionEntity>>>(
        () => _i29.PositionModelListToEntityListConverter());
    gh.factory<_i8.Converter<_i30.CurrentOrderModel, _i31.CurrentOrderEntity>>(
        () => _i32.GeneralResponceMapper());
    gh.factory<
            _i8.Converter<_i12.AdvertisementModel, _i13.AdvertisementEntity>>(
        () => _i14.AdvertisementModelToEntityConverter());
    gh.singleton<_i33.HttpClient>(() => _i33.HttpClient(gh<_i3.Dio>()));
    gh.factory<_i34.OrderDetailDataSource>(
        () => _i35.OrderDetailDataSourceImpl(gh<_i33.HttpClient>()));
    gh.factory<_i36.CurrentOrderDataSource>(
        () => _i37.CurrentOrderDataSourceImpl(gh<_i33.HttpClient>()));
    gh.factory<_i8.Converter<_i38.OrderDetailModel, _i39.OrderDetailEntity>>(
        () => _i40.OrderDetailMapper());
    gh.factory<_i41.MarketplaceDataSource>(
        () => _i42.MarketplaceDataSourceImpl(gh<_i33.HttpClient>()));
    gh.singleton<_i5.TimerBloc>(() => _i5.TimerBloc(ticker: gh<_i5.Ticker>()));
    gh.factory<_i8.Converter<_i43.HistoryModel, _i44.HistoryEntity>>(
        () => _i45.GeneralResponseMapper());
    gh.singleton<_i46.SecureStorageService>(
        () => _i46.SecureStorageService(gh<_i7.FlutterSecureStorage>()));
    gh.factory<_i47.LoginDataSource>(
        () => _i48.LoginDataSourceImpl(gh<_i33.HttpClient>()));
    gh.factory<
        _i8.Converter<_i49.EquipmentDetailModel,
            _i50.EquipmentDetailEntity>>(() => _i51.EquipmentDetailMapper());
    gh.factory<_i8.Converter<_i52.EmployeeModel, _i53.EmployeeEntity>>(
        () => _i54.GeneralResponceMapper());
    gh.factory<_i8.Converter<_i55.GeneralOrderModel, _i56.GeneralEntity>>(
        () => _i57.EquipmentMapper());
    gh.factory<
            _i8.Converter<_i58.EmployeeDetailModel, _i59.EmployeeDetailEntity>>(
        () => _i60.GeneralResponceMapper());
    gh.factory<_i61.OrganizationDataSource>(
        () => _i62.OrganizationDataSourceImpl(gh<_i33.HttpClient>()));
    gh.factory<_i63.RegistrationDataSource>(
        () => _i64.RegistrationDataSourceImpl(gh<_i33.HttpClient>()));
    gh.factory<_i65.PositionsDataSource>(
        () => _i66.PositionsSourceImpl(gh<_i33.HttpClient>()));
    gh.factory<_i67.ProfileDataSource>(
        () => _i68.ProfileDataSourceImpl(gh<_i33.HttpClient>()));
    gh.factory<_i69.LoginRepo>(
        () => _i70.LoginRepoImpl(gh<_i47.LoginDataSource>()));
    gh.factory<_i8.Converter<_i43.MyHistoryModel, _i44.MyHistoryEntity>>(() =>
        _i71.GeneralResponseMapper(
            gh<_i8.Converter<_i43.HistoryModel, _i44.HistoryEntity>>()));
    gh.factory<
            _i8.Converter<_i21.PurchasesListModel, _i22.PurchasesListEntity>>(
        () => _i72.GeneralResponseMapper(
            gh<_i8.Converter<_i21.PurchasesModel, _i22.PurchasesEntity>>()));
    gh.factory<
        _i8.Converter<_i9.CurrentDetailOrderModel,
            _i10.CurrentDetailOrderEntity>>(() =>
        _i11.CurrentDetailOrderModelToEntityConverter(
            gh<_i8.Converter<_i9.Employee, _i10.EmployeeEntity>>()));
    gh.factory<
        _i8.Converter<_i73.OrganizationListModel,
            _i74.OrganizationListEntity>>(() => _i75.GeneralResponseMapper(
        gh<_i8.Converter<_i30.CurrentOrderModel, _i31.CurrentOrderEntity>>()));
    gh.singleton<_i76.AppRouter>(() => _i76.AppRouter(gh<_i4.AuthService>()));
    gh.factory<_i77.CurrentOrdersRepo>(() => _i78.CurrentOrderRepoImpl(
          gh<_i36.CurrentOrderDataSource>(),
          gh<
              _i8.Converter<_i73.OrganizationListModel,
                  _i74.OrganizationListEntity>>(),
          gh<
              _i8.Converter<_i9.CurrentDetailOrderModel,
                  _i10.CurrentDetailOrderEntity>>(),
        ));
    gh.singleton<_i79.LoginUseCase>(
        () => _i79.LoginUseCase(repo: gh<_i69.LoginRepo>()));
    gh.factory<_i80.CreateOrganizationDataSource>(
        () => _i81.CreateOrganizationDataSourceImpl(
              gh<_i33.HttpClient>(),
              gh<_i4.AuthService>(),
            ));
    gh.factory<_i82.OrganizationRepo>(() => _i83.OrganizationRepoImpl(
          gh<_i61.OrganizationDataSource>(),
          gh<
              _i8.Converter<_i24.OrganizationInfoModel,
                  _i25.OrganizationInfoEntity>>(),
        ));
    gh.factory<_i84.OrderPlaceDataSource>(() => _i85.OrderPlaceDataSourceImpl(
          gh<_i33.HttpClient>(),
          gh<_i4.AuthService>(),
        ));
    gh.factory<_i86.PositionsRepo>(() => _i87.PositionRepoImpl(
          gh<_i65.PositionsDataSource>(),
          gh<
              _i8.Converter<List<_i27.PositionModel>,
                  List<_i28.PositionEntity>>>(),
        ));
    gh.factory<_i88.ProfileRepo>(() => _i89.ProfileRepoImpl(
          gh<_i67.ProfileDataSource>(),
          gh<_i4.AuthService>(),
          gh<
              _i8
              .Converter<_i21.PurchasesListModel, _i22.PurchasesListEntity>>(),
          gh<_i8.Converter<_i43.MyHistoryModel, _i44.MyHistoryEntity>>(),
          gh<
              _i8.Converter<_i12.AdvertisementResponseModel,
                  _i13.AdvertisementResponseEntity>>(),
        ));
    gh.factory<_i90.OrderDetailRepo>(() => _i91.OrderDetailRepoImpl(
          gh<_i34.OrderDetailDataSource>(),
          gh<_i8.Converter<_i38.OrderDetailModel, _i39.OrderDetailEntity>>(),
        ));
    gh.singleton<_i92.GetOrderByIdUseCase>(
        () => _i92.GetOrderByIdUseCase(repo: gh<_i90.OrderDetailRepo>()));
    gh.singleton<_i93.RequestToExecuteUseCase>(
        () => _i93.RequestToExecuteUseCase(repo: gh<_i90.OrderDetailRepo>()));
    gh.factory<_i94.ConfirmationDataSource>(
        () => _i95.ConfirmationDataSourceImpl(gh<_i33.HttpClient>()));
    gh.factory<_i96.CreateOrganizationRepo>(() =>
        _i97.CreateOrganizationRepoImpl(
            gh<_i80.CreateOrganizationDataSource>()));
    gh.factory<_i98.OrdersHistoryDataSource>(
        () => _i99.OrdersHistoryDataSourceImpl(gh<_i33.HttpClient>()));
    gh.factory<_i100.OrderPlaceRepo>(
        () => _i101.CreateOrderRepoImpl(gh<_i84.OrderPlaceDataSource>()));
    gh.factory<_i102.ServiceDetailDataSource>(
        () => _i103.ServiceDetailDataSourceImpl(gh<_i33.HttpClient>()));
    gh.factory<_i104.EquipmentDetailDataSource>(
        () => _i105.EquipmentDetailDataSourceImpl(gh<_i33.HttpClient>()));
    gh.singleton<_i106.GetProfileUseCase>(
        () => _i106.GetProfileUseCase(repo: gh<_i82.OrganizationRepo>()));
    gh.factory<_i107.EmployeeDataSource>(
        () => _i108.OrganizationDataSourceImpl(gh<_i33.HttpClient>()));
    gh.factory<_i109.RegistrationRepo>(
        () => _i110.RegistrationRepoImpl(gh<_i63.RegistrationDataSource>()));
    gh.singleton<_i111.RegistrationUseCase>(
        () => _i111.RegistrationUseCase(repo: gh<_i109.RegistrationRepo>()));
    gh.singleton<_i112.OrganizationBloc>(
        () => _i112.OrganizationBloc(gh<_i106.GetProfileUseCase>()));
    gh.factory<_i113.EquipmentDetailRepo>(() => _i114.EquipmentDetailRepoImpl(
          gh<_i104.EquipmentDetailDataSource>(),
          gh<
              _i8.Converter<_i49.EquipmentDetailModel,
                  _i50.EquipmentDetailEntity>>(),
        ));
    gh.factory<_i115.MarketplaceRepo>(() => _i116.MarketplaceRepoImpl(
          gh<_i41.MarketplaceDataSource>(),
          gh<
              _i8.Converter<_i18.GeneralResponceModel,
                  _i19.GeneralResponceEntity>>(),
          gh<
              _i8.Converter<_i12.AdvertisementResponseModel,
                  _i13.AdvertisementResponseEntity>>(),
        ));
    gh.singleton<_i117.ChangeOrderStatusUseCase>(() =>
        _i117.ChangeOrderStatusUseCase(repo: gh<_i77.CurrentOrdersRepo>()));
    gh.singleton<_i118.CompleteOrderUseCase>(
        () => _i118.CompleteOrderUseCase(repo: gh<_i77.CurrentOrdersRepo>()));
    gh.singleton<_i119.GetAllOrdersUseCase>(
        () => _i119.GetAllOrdersUseCase(repo: gh<_i77.CurrentOrdersRepo>()));
    gh.singleton<_i120.GetCurrentDetailOrderUseCase>(() =>
        _i120.GetCurrentDetailOrderUseCase(repo: gh<_i77.CurrentOrdersRepo>()));
    gh.factory<_i121.InviteEmployeeDataSource>(
        () => _i122.InviteEmployeeDataSourceImpl(gh<_i33.HttpClient>()));
    gh.factory<_i123.ConfirmationRepo>(() => _i124.ConfirmationRepoImpl(
          gh<_i94.ConfirmationDataSource>(),
          gh<_i4.AuthService>(),
        ));
    gh.factory<_i125.EmployeeRepo>(() => _i126.EmployeeRepoImpl(
          gh<_i107.EmployeeDataSource>(),
          gh<_i8.Converter<_i52.EmployeeModel, _i53.EmployeeEntity>>(),
          gh<
              _i8.Converter<_i58.EmployeeDetailModel,
                  _i59.EmployeeDetailEntity>>(),
        ));
    gh.factory<_i127.LoginBloc>(
        () => _i127.LoginBloc(loginUseCase: gh<_i79.LoginUseCase>()));
    gh.singleton<_i128.AddPositionUseCase>(
        () => _i128.AddPositionUseCase(repo: gh<_i86.PositionsRepo>()));
    gh.singleton<_i129.GetAllPositionsUseCase>(
        () => _i129.GetAllPositionsUseCase(repo: gh<_i86.PositionsRepo>()));
    gh.singleton<_i130.GetAvailableAccessRightsUseCase>(() =>
        _i130.GetAvailableAccessRightsUseCase(repo: gh<_i86.PositionsRepo>()));
    gh.singleton<_i131.GetAvailableWeightsUseCase>(
        () => _i131.GetAvailableWeightsUseCase(repo: gh<_i86.PositionsRepo>()));
    gh.factory<_i132.OrderDetailBloc>(() => _i132.OrderDetailBloc(
          gh<_i92.GetOrderByIdUseCase>(),
          gh<_i93.RequestToExecuteUseCase>(),
        ));
    gh.singleton<_i133.GetAllEmployeesUseCase>(
        () => _i133.GetAllEmployeesUseCase(repo: gh<_i125.EmployeeRepo>()));
    gh.singleton<_i134.GetEmployeeDetailUseCase>(
        () => _i134.GetEmployeeDetailUseCase(repo: gh<_i125.EmployeeRepo>()));
    gh.singleton<_i135.PositionsBloc>(() => _i135.PositionsBloc(
          gh<_i128.AddPositionUseCase>(),
          gh<_i129.GetAllPositionsUseCase>(),
          gh<_i130.GetAvailableAccessRightsUseCase>(),
          gh<_i131.GetAvailableWeightsUseCase>(),
        ));
    gh.singleton<_i136.GetEuipmentsUseCase>(
        () => _i136.GetEuipmentsUseCase(repo: gh<_i115.MarketplaceRepo>()));
    gh.singleton<_i137.GetOrdersUseCase>(
        () => _i137.GetOrdersUseCase(repo: gh<_i115.MarketplaceRepo>()));
    gh.singleton<_i138.GetServicesUseCase>(
        () => _i138.GetServicesUseCase(repo: gh<_i115.MarketplaceRepo>()));
    gh.singleton<_i139.SearchEquipmentUseCase>(
        () => _i139.SearchEquipmentUseCase(repo: gh<_i115.MarketplaceRepo>()));
    gh.singleton<_i140.SearchOrderUseCase>(
        () => _i140.SearchOrderUseCase(repo: gh<_i115.MarketplaceRepo>()));
    gh.singleton<_i141.SearchServiceUseCase>(
        () => _i141.SearchServiceUseCase(repo: gh<_i115.MarketplaceRepo>()));
    gh.singleton<_i142.AssignExecutorToOrderUseCase>(
        () => _i142.AssignExecutorToOrderUseCase(repo: gh<_i88.ProfileRepo>()));
    gh.singleton<_i143.DeleteEquipmentUseCase>(
        () => _i143.DeleteEquipmentUseCase(repo: gh<_i88.ProfileRepo>()));
    gh.singleton<_i144.DeleteOrderUseCase>(
        () => _i144.DeleteOrderUseCase(repo: gh<_i88.ProfileRepo>()));
    gh.singleton<_i145.DeleteServiceUseCase>(
        () => _i145.DeleteServiceUseCase(repo: gh<_i88.ProfileRepo>()));
    gh.singleton<_i146.EditProfileInfoUseCase>(
        () => _i146.EditProfileInfoUseCase(repo: gh<_i88.ProfileRepo>()));
    gh.singleton<_i147.GetEquipmentDetailedByIdUseCase>(() =>
        _i147.GetEquipmentDetailedByIdUseCase(repo: gh<_i88.ProfileRepo>()));
    gh.singleton<_i148.GetMyEquipmentsUseCase>(
        () => _i148.GetMyEquipmentsUseCase(repo: gh<_i88.ProfileRepo>()));
    gh.singleton<_i149.GetMyOrdersUseCase>(
        () => _i149.GetMyOrdersUseCase(repo: gh<_i88.ProfileRepo>()));
    gh.singleton<_i150.GetMyPurchasesUseCase>(
        () => _i150.GetMyPurchasesUseCase(repo: gh<_i88.ProfileRepo>()));
    gh.singleton<_i151.GetMyServicesUseCase>(
        () => _i151.GetMyServicesUseCase(repo: gh<_i88.ProfileRepo>()));
    gh.singleton<_i152.GetOrderDetailedByIdUseCase>(
        () => _i152.GetOrderDetailedByIdUseCase(repo: gh<_i88.ProfileRepo>()));
    gh.singleton<_i153.GetOrderHistoryForUserUseCase>(() =>
        _i153.GetOrderHistoryForUserUseCase(repo: gh<_i88.ProfileRepo>()));
    gh.singleton<_i154.GetProfileInfoUseCase>(
        () => _i154.GetProfileInfoUseCase(repo: gh<_i88.ProfileRepo>()));
    gh.singleton<_i155.GetServiceDetailedByIdUseCase>(() =>
        _i155.GetServiceDetailedByIdUseCase(repo: gh<_i88.ProfileRepo>()));
    gh.singleton<_i156.HideEquipmentUseCase>(
        () => _i156.HideEquipmentUseCase(repo: gh<_i88.ProfileRepo>()));
    gh.singleton<_i157.HideOrderUseCase>(
        () => _i157.HideOrderUseCase(repo: gh<_i88.ProfileRepo>()));
    gh.singleton<_i158.HideServiceUseCase>(
        () => _i158.HideServiceUseCase(repo: gh<_i88.ProfileRepo>()));
    gh.singleton<_i159.LoadMorePurchasesUseCase>(
        () => _i159.LoadMorePurchasesUseCase(repo: gh<_i88.ProfileRepo>()));
    gh.singleton<_i160.SearchAdvertisementUseCase>(
        () => _i160.SearchAdvertisementUseCase(repo: gh<_i88.ProfileRepo>()));
    gh.singleton<_i161.SendSubscriptionUseCase>(
        () => _i161.SendSubscriptionUseCase(repo: gh<_i88.ProfileRepo>()));
    gh.singleton<_i162.SignOutUseCase>(
        () => _i162.SignOutUseCase(repo: gh<_i88.ProfileRepo>()));
    gh.singleton<_i163.UploadImageUseCase>(
        () => _i163.UploadImageUseCase(repo: gh<_i88.ProfileRepo>()));
    gh.factory<_i164.RegistrationBloc>(() => _i164.RegistrationBloc(
        registrationUseCase: gh<_i111.RegistrationUseCase>()));
    gh.singleton<_i165.ConfirmationUseCase>(
        () => _i165.ConfirmationUseCase(repo: gh<_i123.ConfirmationRepo>()));
    gh.singleton<_i166.ResendPinUseCase>(
        () => _i166.ResendPinUseCase(repo: gh<_i123.ConfirmationRepo>()));
    gh.singleton<_i167.CreateOrganizationUseCase>(() =>
        _i167.CreateOrganizationUseCase(
            repo: gh<_i96.CreateOrganizationRepo>()));
    gh.singleton<_i168.CreateEquipmentUseCase>(
        () => _i168.CreateEquipmentUseCase(repo: gh<_i100.OrderPlaceRepo>()));
    gh.singleton<_i169.CreateOrderUseCase>(
        () => _i169.CreateOrderUseCase(repo: gh<_i100.OrderPlaceRepo>()));
    gh.singleton<_i170.CreateServiceUseCase>(
        () => _i170.CreateServiceUseCase(repo: gh<_i100.OrderPlaceRepo>()));
    gh.factory<_i171.OrdersHistoryRepo>(() => _i172.OrdersHistoryRepoImpl(
          gh<_i98.OrdersHistoryDataSource>(),
          gh<_i8.Converter<_i43.MyHistoryModel, _i44.MyHistoryEntity>>(),
        ));
    gh.factory<_i173.MarketplaceBloc>(() => _i173.MarketplaceBloc(
          gh<_i136.GetEuipmentsUseCase>(),
          gh<_i137.GetOrdersUseCase>(),
          gh<_i138.GetServicesUseCase>(),
          gh<_i139.SearchEquipmentUseCase>(),
          gh<_i140.SearchOrderUseCase>(),
          gh<_i141.SearchServiceUseCase>(),
        ));
    gh.factory<_i174.OrderHistoryBloc>(() =>
        _i174.OrderHistoryBloc(gh<_i153.GetOrderHistoryForUserUseCase>()));
    gh.singleton<_i175.GetOrdersHistoryUseCase>(() =>
        _i175.GetOrdersHistoryUseCase(repo: gh<_i171.OrdersHistoryRepo>()));
    gh.singleton<_i176.OrderPlaceBloc>(() => _i176.OrderPlaceBloc(
          gh<_i168.CreateEquipmentUseCase>(),
          gh<_i170.CreateServiceUseCase>(),
          gh<_i169.CreateOrderUseCase>(),
        ));
    gh.factory<_i177.ServiceDetailRepo>(() => _i178.ServiceDetailRepoImpl(
          gh<_i102.ServiceDetailDataSource>(),
          gh<
              _i8
              .Converter<_i15.ServiceDetailModel, _i16.ServiceDetailEntity>>(),
        ));
    gh.singleton<_i179.BuyEquipmentIdUseCase>(() =>
        _i179.BuyEquipmentIdUseCase(repo: gh<_i113.EquipmentDetailRepo>()));
    gh.singleton<_i180.GetEuipmentByIdUseCase>(() =>
        _i180.GetEuipmentByIdUseCase(repo: gh<_i113.EquipmentDetailRepo>()));
    gh.factory<_i181.CurrentOrderBloc>(() => _i181.CurrentOrderBloc(
          gh<_i119.GetAllOrdersUseCase>(),
          gh<_i120.GetCurrentDetailOrderUseCase>(),
          gh<_i117.ChangeOrderStatusUseCase>(),
          gh<_i118.CompleteOrderUseCase>(),
        ));
    gh.factory<_i182.InviteEmployeeRepo>(() => _i183.InviteEmployeeRepoImpl(
          gh<_i121.InviteEmployeeDataSource>(),
          gh<
              _i8.Converter<List<_i27.PositionModel>,
                  List<_i28.PositionEntity>>>(),
        ));
    gh.singleton<_i184.ConfirmationBloc>(() => _i184.ConfirmationBloc(
          gh<_i165.ConfirmationUseCase>(),
          gh<_i166.ResendPinUseCase>(),
        ));
    gh.factory<_i185.ProfileBloc>(() => _i185.ProfileBloc(
          sendSubscriptionUseCase: gh<_i161.SendSubscriptionUseCase>(),
          signOutUseCase: gh<_i162.SignOutUseCase>(),
          getProfileInfoUseCase: gh<_i154.GetProfileInfoUseCase>(),
          editProfileInfoUseCase: gh<_i146.EditProfileInfoUseCase>(),
          uploadImageUseCase: gh<_i163.UploadImageUseCase>(),
        ));
    gh.factory<_i186.AnnouncementBloc>(() => _i186.AnnouncementBloc(
          gh<_i152.GetOrderDetailedByIdUseCase>(),
          gh<_i155.GetServiceDetailedByIdUseCase>(),
          gh<_i147.GetEquipmentDetailedByIdUseCase>(),
          gh<_i149.GetMyOrdersUseCase>(),
          gh<_i148.GetMyEquipmentsUseCase>(),
          gh<_i151.GetMyServicesUseCase>(),
          gh<_i142.AssignExecutorToOrderUseCase>(),
          gh<_i157.HideOrderUseCase>(),
          gh<_i144.DeleteOrderUseCase>(),
          gh<_i156.HideEquipmentUseCase>(),
          gh<_i158.HideServiceUseCase>(),
          gh<_i143.DeleteEquipmentUseCase>(),
          gh<_i145.DeleteServiceUseCase>(),
          gh<_i160.SearchAdvertisementUseCase>(),
        ));
    gh.singleton<_i187.EmployeeBloc>(() => _i187.EmployeeBloc(
          gh<_i133.GetAllEmployeesUseCase>(),
          gh<_i134.GetEmployeeDetailUseCase>(),
        ));
    gh.factory<_i188.CreateOrganizationBloc>(() =>
        _i188.CreateOrganizationBloc(gh<_i167.CreateOrganizationUseCase>()));
    gh.singleton<_i189.HistoryBloc>(
        () => _i189.HistoryBloc(gh<_i175.GetOrdersHistoryUseCase>()));
    gh.singleton<_i190.GetServiceByIdUseCase>(
        () => _i190.GetServiceByIdUseCase(repo: gh<_i177.ServiceDetailRepo>()));
    gh.singleton<_i191.SendRequestToServiceUseCase>(() =>
        _i191.SendRequestToServiceUseCase(repo: gh<_i177.ServiceDetailRepo>()));
    gh.factory<_i192.PurchasesBloc>(() => _i192.PurchasesBloc(
          gh<_i150.GetMyPurchasesUseCase>(),
          gh<_i159.LoadMorePurchasesUseCase>(),
          gh<_i180.GetEuipmentByIdUseCase>(),
          gh<_i92.GetOrderByIdUseCase>(),
          gh<_i190.GetServiceByIdUseCase>(),
        ));
    gh.factory<_i193.EquipmentDetailBloc>(() => _i193.EquipmentDetailBloc(
          gh<_i180.GetEuipmentByIdUseCase>(),
          gh<_i179.BuyEquipmentIdUseCase>(),
        ));
    gh.singleton<_i194.GetAvailablePositionsUseCase>(() =>
        _i194.GetAvailablePositionsUseCase(
            repo: gh<_i182.InviteEmployeeRepo>()));
    gh.singleton<_i195.InviteEmployeeUseCase>(() =>
        _i195.InviteEmployeeUseCase(repo: gh<_i182.InviteEmployeeRepo>()));
    gh.factory<_i196.ServiceDetailBloc>(() => _i196.ServiceDetailBloc(
          gh<_i190.GetServiceByIdUseCase>(),
          gh<_i191.SendRequestToServiceUseCase>(),
        ));
    gh.singleton<_i197.InviteEmployeeBloc>(() => _i197.InviteEmployeeBloc(
          gh<_i195.InviteEmployeeUseCase>(),
          gh<_i194.GetAvailablePositionsUseCase>(),
        ));
    return this;
  }
}

class _$RegisterModule extends _i198.RegisterModule {}
