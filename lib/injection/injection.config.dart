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
import 'package:neobis_smart_tailor/core/app/router/app_routes.dart' as _i79;
import 'package:neobis_smart_tailor/core/network/http_client.dart' as _i33;
import 'package:neobis_smart_tailor/core/services/auth_service.dart' as _i4;
import 'package:neobis_smart_tailor/core/services/secure_storage_service.dart'
    as _i46;
import 'package:neobis_smart_tailor/features/confirmation/data/data_source/confirmation_data_source.dart'
    as _i97;
import 'package:neobis_smart_tailor/features/confirmation/data/data_source/impl/confirmation_data_source_impl.dart'
    as _i98;
import 'package:neobis_smart_tailor/features/confirmation/data/repository/confirmation_repo_impl.dart'
    as _i130;
import 'package:neobis_smart_tailor/features/confirmation/domain/repository/confirmation_repo.dart'
    as _i129;
import 'package:neobis_smart_tailor/features/confirmation/domain/useCase/confirmation_use_case.dart'
    as _i172;
import 'package:neobis_smart_tailor/features/confirmation/domain/useCase/resend_pin_use_case%20copy.dart'
    as _i173;
import 'package:neobis_smart_tailor/features/confirmation/presentation/bloc/confirmation_bloc/confirmation_bloc.dart'
    as _i190;
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
    as _i82;
import 'package:neobis_smart_tailor/features/login/presentation/bloc/login_bloc.dart'
    as _i133;
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
    as _i121;
import 'package:neobis_smart_tailor/features/marketplace/domain/entitys/common_entity.dart'
    as _i56;
import 'package:neobis_smart_tailor/features/marketplace/domain/entitys/general_responce_entity.dart'
    as _i19;
import 'package:neobis_smart_tailor/features/marketplace/domain/entitys/search_entity.dart'
    as _i13;
import 'package:neobis_smart_tailor/features/marketplace/domain/repository/marketplace_repo.dart'
    as _i120;
import 'package:neobis_smart_tailor/features/marketplace/domain/use_case/get_equipments_use_case.dart'
    as _i142;
import 'package:neobis_smart_tailor/features/marketplace/domain/use_case/get_orders_use_case.dart'
    as _i143;
import 'package:neobis_smart_tailor/features/marketplace/domain/use_case/get_services_ude_case.dart'
    as _i144;
import 'package:neobis_smart_tailor/features/marketplace/domain/use_case/search_equipment_use_case.dart'
    as _i145;
import 'package:neobis_smart_tailor/features/marketplace/domain/use_case/search_order_use_case.dart'
    as _i146;
import 'package:neobis_smart_tailor/features/marketplace/domain/use_case/search_service_use_case.dart'
    as _i147;
import 'package:neobis_smart_tailor/features/marketplace/presentation/bloc/marketplace_bloc.dart'
    as _i178;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/equipment_detail_screen/data/data_source/equipment_detail_data_source.dart'
    as _i109;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/equipment_detail_screen/data/data_source/equipment_detail_data_source_impl/marketplace_data_source_impl.dart'
    as _i110;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/equipment_detail_screen/data/mapper/equipment_converter.dart'
    as _i51;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/equipment_detail_screen/data/models/equipment_detail_model/equipment_detail_model.dart'
    as _i49;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/equipment_detail_screen/data/repository/equipment_detail_repo_impl.dart'
    as _i119;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/equipment_detail_screen/domain/entitys/equipment_detail_entity.dart'
    as _i50;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/equipment_detail_screen/domain/repository/equipment_detail_repo.dart'
    as _i118;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/equipment_detail_screen/domain/use_case/buy_equipment_use_case%20copy.dart'
    as _i186;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/equipment_detail_screen/domain/use_case/get_equipmentby_id_use_case.dart'
    as _i187;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/equipment_detail_screen/presentation/bloc/equipment_detail_bloc.dart'
    as _i199;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/order_detail_screen/data/data_source/marketplace_detail_data_source_impl/order_data_source_impl.dart'
    as _i35;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/order_detail_screen/data/data_source/order_detail_data_source.dart'
    as _i34;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/order_detail_screen/data/mapper/order_converter.dart'
    as _i40;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/order_detail_screen/data/models/order_detail_model/order_detail_model.dart'
    as _i38;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/order_detail_screen/data/repository/order_detail_repo_impl.dart'
    as _i94;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/order_detail_screen/domain/entitys/order_detail_entity.dart'
    as _i39;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/order_detail_screen/domain/repository/order_detail_repo.dart'
    as _i93;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/order_detail_screen/domain/use_case/get_order_by_id_use_case.dart'
    as _i95;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/order_detail_screen/domain/use_case/request_to_execute_use_case%20copy.dart'
    as _i96;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/order_detail_screen/presentation/bloc/order_detail_bloc.dart'
    as _i138;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/service_detail_screen/data/data_source/marketplace_detail_data_source_impl/service_detail_data_source_impl.dart'
    as _i106;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/service_detail_screen/data/data_source/service_detail_data_source.dart'
    as _i105;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/service_detail_screen/data/mapper/service_converter%20copy.dart'
    as _i17;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/service_detail_screen/data/models/service_detail_model/service_detail_model.dart'
    as _i15;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/service_detail_screen/data/repository/service_detail_repo_impl.dart'
    as _i185;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/service_detail_screen/domain/entitys/service_detail_entity.dart'
    as _i16;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/service_detail_screen/domain/repository/service_detail_repo.dart'
    as _i184;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/service_detail_screen/domain/use_case/get_service_by_id_use_case.dart'
    as _i195;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/service_detail_screen/domain/use_case/send_request_to_service_use_case.dart'
    as _i196;
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/service_detail_screen/presentation/bloc/service_detail_bloc.dart'
    as _i202;
import 'package:neobis_smart_tailor/features/order_place/data/data_source/impl/order_place_data_source_impl.dart'
    as _i88;
import 'package:neobis_smart_tailor/features/order_place/data/data_source/order_place_data_source.dart'
    as _i87;
import 'package:neobis_smart_tailor/features/order_place/data/repository/order_place_repo_impl.dart'
    as _i104;
import 'package:neobis_smart_tailor/features/order_place/domain/repository/order_place_repo.dart'
    as _i103;
import 'package:neobis_smart_tailor/features/order_place/domain/useCase/create_equipment_use_case.dart'
    as _i175;
import 'package:neobis_smart_tailor/features/order_place/domain/useCase/create_order_use_case.dart'
    as _i176;
import 'package:neobis_smart_tailor/features/order_place/domain/useCase/create_service_use_case.dart'
    as _i177;
import 'package:neobis_smart_tailor/features/order_place/presentation/bloc/order_place_bloc.dart'
    as _i183;
import 'package:neobis_smart_tailor/features/organization/pages/create_organization/data/data_source/create_organization_data_source.dart'
    as _i83;
import 'package:neobis_smart_tailor/features/organization/pages/create_organization/data/data_source/impl/create_organization_data_source_impl.dart'
    as _i84;
import 'package:neobis_smart_tailor/features/organization/pages/create_organization/data/repository/create_organization_repo_impl.dart'
    as _i100;
import 'package:neobis_smart_tailor/features/organization/pages/create_organization/domain/repository/create_organization_repo.dart'
    as _i99;
import 'package:neobis_smart_tailor/features/organization/pages/create_organization/domain/use_case/create_organization_use_case.dart'
    as _i174;
import 'package:neobis_smart_tailor/features/organization/pages/create_organization/presentation/create_organization_bloc/create_organization_bloc.dart'
    as _i194;
import 'package:neobis_smart_tailor/features/organization/pages/current_order/data/converter/current-detail_order_converter.dart'
    as _i11;
import 'package:neobis_smart_tailor/features/organization/pages/current_order/data/converter/current_order_converter.dart'
    as _i32;
import 'package:neobis_smart_tailor/features/organization/pages/current_order/data/converter/organization_list_converter.dart'
    as _i78;
import 'package:neobis_smart_tailor/features/organization/pages/current_order/data/data_source/current_order_data_source.dart'
    as _i36;
import 'package:neobis_smart_tailor/features/organization/pages/current_order/data/data_source/impl/current_order_data_source_impl.dart'
    as _i37;
import 'package:neobis_smart_tailor/features/organization/pages/current_order/data/models/current_detail_order_model/current_detail_order_model.dart'
    as _i9;
import 'package:neobis_smart_tailor/features/organization/pages/current_order/data/models/current_order_model/current_order_model.dart'
    as _i30;
import 'package:neobis_smart_tailor/features/organization/pages/current_order/data/models/organization_list_model/organization_list_model.dart'
    as _i76;
import 'package:neobis_smart_tailor/features/organization/pages/current_order/data/repository/current_order_repo_impl.dart'
    as _i81;
import 'package:neobis_smart_tailor/features/organization/pages/current_order/domain/entitys/current_detail_order_entity.dart'
    as _i10;
import 'package:neobis_smart_tailor/features/organization/pages/current_order/domain/entitys/current_order_entity.dart'
    as _i31;
import 'package:neobis_smart_tailor/features/organization/pages/current_order/domain/entitys/organization_list_entity.dart'
    as _i77;
import 'package:neobis_smart_tailor/features/organization/pages/current_order/domain/repository/current_orders_repo.dart'
    as _i80;
import 'package:neobis_smart_tailor/features/organization/pages/current_order/domain/use_case/change_order_status_use_case.dart'
    as _i122;
import 'package:neobis_smart_tailor/features/organization/pages/current_order/domain/use_case/complete_order_use_case.dart'
    as _i123;
import 'package:neobis_smart_tailor/features/organization/pages/current_order/domain/use_case/get_all_orders_use_case.dart'
    as _i124;
import 'package:neobis_smart_tailor/features/organization/pages/current_order/domain/use_case/get_cancel_order_use_case.dart'
    as _i126;
import 'package:neobis_smart_tailor/features/organization/pages/current_order/domain/use_case/get_detailed_order_use_case.dart'
    as _i125;
import 'package:neobis_smart_tailor/features/organization/pages/current_order/presentation/bloc/current_order_bloc.dart'
    as _i170;
import 'package:neobis_smart_tailor/features/organization/pages/employee/data/converter/employee_detail_converter.dart'
    as _i60;
import 'package:neobis_smart_tailor/features/organization/pages/employee/data/converter/employees_converter.dart'
    as _i54;
import 'package:neobis_smart_tailor/features/organization/pages/employee/data/data_source/employee_data_source.dart'
    as _i112;
import 'package:neobis_smart_tailor/features/organization/pages/employee/data/data_source/impl/employee_data_source_impl.dart'
    as _i113;
import 'package:neobis_smart_tailor/features/organization/pages/employee/data/models/employee_detail_model/employee_detail_model.dart'
    as _i58;
import 'package:neobis_smart_tailor/features/organization/pages/employee/data/models/employee_model/employee_model.dart'
    as _i52;
import 'package:neobis_smart_tailor/features/organization/pages/employee/data/repository/employee_repo_impl.dart'
    as _i132;
import 'package:neobis_smart_tailor/features/organization/pages/employee/domain/entitys/employee_detail_entity.dart'
    as _i59;
import 'package:neobis_smart_tailor/features/organization/pages/employee/domain/entitys/employee_entity.dart'
    as _i53;
import 'package:neobis_smart_tailor/features/organization/pages/employee/domain/repository/employees_repo.dart'
    as _i131;
import 'package:neobis_smart_tailor/features/organization/pages/employee/domain/use_case/get_all_employees_use_case.dart'
    as _i139;
import 'package:neobis_smart_tailor/features/organization/pages/employee/domain/use_case/get_employee_detail_use_case.dart'
    as _i140;
import 'package:neobis_smart_tailor/features/organization/pages/employee/presentation/bloc/employee_bloc.dart'
    as _i193;
import 'package:neobis_smart_tailor/features/organization/pages/history/data/converter/current_history_detail_converter.dart'
    as _i73;
import 'package:neobis_smart_tailor/features/organization/pages/history/data/data_source/impl/orders_history_data_source_impl.dart'
    as _i102;
import 'package:neobis_smart_tailor/features/organization/pages/history/data/data_source/orders_history_data_source.dart'
    as _i101;
import 'package:neobis_smart_tailor/features/organization/pages/history/data/models/current_history_detail_model/current_history_detail_model.dart'
    as _i71;
import 'package:neobis_smart_tailor/features/organization/pages/history/data/repository/orders_history_repo_impl.dart'
    as _i108;
import 'package:neobis_smart_tailor/features/organization/pages/history/domain/entitys/current_history_detail_entity.dart'
    as _i72;
import 'package:neobis_smart_tailor/features/organization/pages/history/domain/repository/orders_history_repo.dart'
    as _i107;
import 'package:neobis_smart_tailor/features/organization/pages/history/domain/use_case/get_detailed_order_use_case.dart'
    as _i181;
import 'package:neobis_smart_tailor/features/organization/pages/history/domain/use_case/get_orders_history_use_case.dart'
    as _i182;
import 'package:neobis_smart_tailor/features/organization/pages/history/presentation/bloc/history_bloc.dart'
    as _i197;
import 'package:neobis_smart_tailor/features/organization/pages/invite_employee/data/data_source/impl/invite_employee_data_source_impl.dart'
    as _i128;
import 'package:neobis_smart_tailor/features/organization/pages/invite_employee/data/data_source/invite_employee_data_source.dart'
    as _i127;
import 'package:neobis_smart_tailor/features/organization/pages/invite_employee/data/repository/invite_employee_repo_impl.dart'
    as _i189;
import 'package:neobis_smart_tailor/features/organization/pages/invite_employee/domain/repository/invite_employee_repo.dart'
    as _i188;
import 'package:neobis_smart_tailor/features/organization/pages/invite_employee/domain/use_case/get_available_positions_use_case.dart'
    as _i200;
import 'package:neobis_smart_tailor/features/organization/pages/invite_employee/domain/use_case/invite_employee_use_case.dart'
    as _i201;
import 'package:neobis_smart_tailor/features/organization/pages/invite_employee/presentation/bloc/invite_employee_bloc.dart'
    as _i203;
import 'package:neobis_smart_tailor/features/organization/pages/organization/data/converter/organization_info_converter.dart'
    as _i26;
import 'package:neobis_smart_tailor/features/organization/pages/organization/data/data_source/impl/organization_data_source_impl.dart'
    as _i62;
import 'package:neobis_smart_tailor/features/organization/pages/organization/data/data_source/organization_data_source.dart'
    as _i61;
import 'package:neobis_smart_tailor/features/organization/pages/organization/data/models/organization_info_model/organization_info_model.dart'
    as _i24;
import 'package:neobis_smart_tailor/features/organization/pages/organization/data/repository/organization_repo_impl.dart'
    as _i86;
import 'package:neobis_smart_tailor/features/organization/pages/organization/domain/entitys/organization_info_entity.dart'
    as _i25;
import 'package:neobis_smart_tailor/features/organization/pages/organization/domain/repository/organization_repo.dart'
    as _i85;
import 'package:neobis_smart_tailor/features/organization/pages/organization/domain/use_case/get_profile_use_case.dart'
    as _i111;
import 'package:neobis_smart_tailor/features/organization/pages/organization/presentation/bloc/organization_bloc.dart'
    as _i117;
import 'package:neobis_smart_tailor/features/organization/pages/positions/data/converter/converter.dart'
    as _i29;
import 'package:neobis_smart_tailor/features/organization/pages/positions/data/data_source/impl/positions_data_source_impl.dart'
    as _i66;
import 'package:neobis_smart_tailor/features/organization/pages/positions/data/data_source/positions_data_source.dart'
    as _i65;
import 'package:neobis_smart_tailor/features/organization/pages/positions/data/models/_model/position_model.dart'
    as _i27;
import 'package:neobis_smart_tailor/features/organization/pages/positions/data/repository/position_repo_impl.dart'
    as _i90;
import 'package:neobis_smart_tailor/features/organization/pages/positions/domain/entitys/position_entity.dart'
    as _i28;
import 'package:neobis_smart_tailor/features/organization/pages/positions/domain/repository/positions_repo.dart'
    as _i89;
import 'package:neobis_smart_tailor/features/organization/pages/positions/domain/use_case/add_position_use_case.dart'
    as _i134;
import 'package:neobis_smart_tailor/features/organization/pages/positions/domain/use_case/get_all_positions_use_case.dart'
    as _i135;
import 'package:neobis_smart_tailor/features/organization/pages/positions/domain/use_case/get_available_access_rights_use_case.dart'
    as _i136;
import 'package:neobis_smart_tailor/features/organization/pages/positions/domain/use_case/get_available_weights_use_case.dart'
    as _i137;
import 'package:neobis_smart_tailor/features/organization/pages/positions/presentation/bloc/positions_bloc.dart'
    as _i141;
import 'package:neobis_smart_tailor/features/profile/data/converter/histoty/history_converter.dart'
    as _i45;
import 'package:neobis_smart_tailor/features/profile/data/converter/histoty/history_list_converter.dart'
    as _i74;
import 'package:neobis_smart_tailor/features/profile/data/converter/purchases/purchaese_converter.dart'
    as _i23;
import 'package:neobis_smart_tailor/features/profile/data/converter/purchases/purchases_list_converter.dart'
    as _i75;
import 'package:neobis_smart_tailor/features/profile/data/data_source/remote/profile_data_source.dart'
    as _i67;
import 'package:neobis_smart_tailor/features/profile/data/data_source/remote/profile_data_source_impl/profile_data_source_impl.dart'
    as _i68;
import 'package:neobis_smart_tailor/features/profile/data/model/history_model/my_history_model.dart'
    as _i43;
import 'package:neobis_smart_tailor/features/profile/data/model/my_purchases/my_purchases_list_model.dart'
    as _i21;
import 'package:neobis_smart_tailor/features/profile/data/repository/profile_repo_impl.dart'
    as _i92;
import 'package:neobis_smart_tailor/features/profile/domain/model/my_history_entity.dart'
    as _i44;
import 'package:neobis_smart_tailor/features/profile/domain/model/my_purchases.dart'
    as _i22;
import 'package:neobis_smart_tailor/features/profile/domain/repository/profile_repo.dart'
    as _i91;
import 'package:neobis_smart_tailor/features/profile/domain/use_case/assign_executor_to_order_use_case.dart'
    as _i148;
import 'package:neobis_smart_tailor/features/profile/domain/use_case/delete_equipment_use_case.dart'
    as _i149;
import 'package:neobis_smart_tailor/features/profile/domain/use_case/delete_order_use_case.dart'
    as _i150;
import 'package:neobis_smart_tailor/features/profile/domain/use_case/delete_service_use_case.dart'
    as _i151;
import 'package:neobis_smart_tailor/features/profile/domain/use_case/edit_profile_info_use_case.dart'
    as _i152;
import 'package:neobis_smart_tailor/features/profile/domain/use_case/get_equipment_detailed_by_id_use_case.dart'
    as _i153;
import 'package:neobis_smart_tailor/features/profile/domain/use_case/get_my_equipments_use_case.dart'
    as _i154;
import 'package:neobis_smart_tailor/features/profile/domain/use_case/get_my_orders_use_case.dart'
    as _i155;
import 'package:neobis_smart_tailor/features/profile/domain/use_case/get_my_purchases_use_case.dart'
    as _i156;
import 'package:neobis_smart_tailor/features/profile/domain/use_case/get_my_services_use_case.dart'
    as _i157;
import 'package:neobis_smart_tailor/features/profile/domain/use_case/get_order_detailed_by_id_use_case.dart'
    as _i158;
import 'package:neobis_smart_tailor/features/profile/domain/use_case/get_order_history_for_user_use_case.dart'
    as _i159;
import 'package:neobis_smart_tailor/features/profile/domain/use_case/get_profile_info_use_case.dart'
    as _i160;
import 'package:neobis_smart_tailor/features/profile/domain/use_case/get_service_detailed_by_id_use_case.dart'
    as _i161;
import 'package:neobis_smart_tailor/features/profile/domain/use_case/hide_equipment_use_case.dart'
    as _i162;
import 'package:neobis_smart_tailor/features/profile/domain/use_case/hide_order_use_case.dart'
    as _i163;
import 'package:neobis_smart_tailor/features/profile/domain/use_case/hide_service_use_case.dart'
    as _i164;
import 'package:neobis_smart_tailor/features/profile/domain/use_case/load_more_purchases_use_case.dart'
    as _i165;
import 'package:neobis_smart_tailor/features/profile/domain/use_case/search_advertisement_use_case.dart'
    as _i166;
import 'package:neobis_smart_tailor/features/profile/domain/use_case/send_subscription_use_case.dart'
    as _i167;
import 'package:neobis_smart_tailor/features/profile/domain/use_case/sign_out_use_case.dart'
    as _i168;
import 'package:neobis_smart_tailor/features/profile/domain/use_case/upload_image_use_case.dart'
    as _i169;
import 'package:neobis_smart_tailor/features/profile/presentation/bloc/announcement/announcement_bloc.dart'
    as _i192;
import 'package:neobis_smart_tailor/features/profile/presentation/bloc/profile/profile_bloc.dart'
    as _i191;
import 'package:neobis_smart_tailor/features/profile/presentation/pages/notification/presentation/bloc/notification_bloc.dart'
    as _i180;
import 'package:neobis_smart_tailor/features/profile/presentation/pages/order_history/bloc/order_history_bloc.dart'
    as _i179;
import 'package:neobis_smart_tailor/features/profile/presentation/pages/purchases/bloc/purchases_bloc.dart'
    as _i198;
import 'package:neobis_smart_tailor/features/registration/data/data_source/impl/registration_data_source_impl.dart'
    as _i64;
import 'package:neobis_smart_tailor/features/registration/data/data_source/registration_data_source.dart'
    as _i63;
import 'package:neobis_smart_tailor/features/registration/data/repository/registration_repo_impl.dart'
    as _i115;
import 'package:neobis_smart_tailor/features/registration/domain/repository/registration_repo.dart'
    as _i114;
import 'package:neobis_smart_tailor/features/registration/domain/useCase/registration_use_case.dart'
    as _i116;
import 'package:neobis_smart_tailor/features/registration/presentation/bloc/registration_bloc.dart'
    as _i171;
import 'package:neobis_smart_tailor/injection/injection_module.dart' as _i204;
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
    gh.factory<
        _i8.Converter<_i71.CurrentHistoryDetailModel,
            _i72.CurrentHistoryDetailEntity>>(() =>
        _i73.CurrentDetailOrderModelToEntityConverter(
            gh<_i8.Converter<_i9.Employee, _i10.EmployeeEntity>>()));
    gh.factory<_i8.Converter<_i43.MyHistoryModel, _i44.MyHistoryEntity>>(() =>
        _i74.GeneralResponseMapper(
            gh<_i8.Converter<_i43.HistoryModel, _i44.HistoryEntity>>()));
    gh.factory<
            _i8.Converter<_i21.PurchasesListModel, _i22.PurchasesListEntity>>(
        () => _i75.GeneralResponseMapper(
            gh<_i8.Converter<_i21.PurchasesModel, _i22.PurchasesEntity>>()));
    gh.factory<
        _i8.Converter<_i9.CurrentDetailOrderModel,
            _i10.CurrentDetailOrderEntity>>(() =>
        _i11.CurrentDetailOrderModelToEntityConverter(
            gh<_i8.Converter<_i9.Employee, _i10.EmployeeEntity>>()));
    gh.factory<
        _i8.Converter<_i76.OrganizationListModel,
            _i77.OrganizationListEntity>>(() => _i78.GeneralResponseMapper(
        gh<_i8.Converter<_i30.CurrentOrderModel, _i31.CurrentOrderEntity>>()));
    gh.singleton<_i79.AppRouter>(() => _i79.AppRouter(gh<_i4.AuthService>()));
    gh.factory<_i80.CurrentOrdersRepo>(() => _i81.CurrentOrderRepoImpl(
          gh<_i36.CurrentOrderDataSource>(),
          gh<
              _i8.Converter<_i76.OrganizationListModel,
                  _i77.OrganizationListEntity>>(),
          gh<
              _i8.Converter<_i9.CurrentDetailOrderModel,
                  _i10.CurrentDetailOrderEntity>>(),
        ));
    gh.singleton<_i82.LoginUseCase>(
        () => _i82.LoginUseCase(repo: gh<_i69.LoginRepo>()));
    gh.factory<_i83.CreateOrganizationDataSource>(
        () => _i84.CreateOrganizationDataSourceImpl(
              gh<_i33.HttpClient>(),
              gh<_i4.AuthService>(),
            ));
    gh.factory<_i85.OrganizationRepo>(() => _i86.OrganizationRepoImpl(
          gh<_i61.OrganizationDataSource>(),
          gh<
              _i8.Converter<_i24.OrganizationInfoModel,
                  _i25.OrganizationInfoEntity>>(),
        ));
    gh.factory<_i87.OrderPlaceDataSource>(() => _i88.OrderPlaceDataSourceImpl(
          gh<_i33.HttpClient>(),
          gh<_i4.AuthService>(),
        ));
    gh.factory<_i89.PositionsRepo>(() => _i90.PositionRepoImpl(
          gh<_i65.PositionsDataSource>(),
          gh<
              _i8.Converter<List<_i27.PositionModel>,
                  List<_i28.PositionEntity>>>(),
        ));
    gh.factory<_i91.ProfileRepo>(() => _i92.ProfileRepoImpl(
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
    gh.factory<_i93.OrderDetailRepo>(() => _i94.OrderDetailRepoImpl(
          gh<_i34.OrderDetailDataSource>(),
          gh<_i8.Converter<_i38.OrderDetailModel, _i39.OrderDetailEntity>>(),
        ));
    gh.singleton<_i95.GetOrderByIdUseCase>(
        () => _i95.GetOrderByIdUseCase(repo: gh<_i93.OrderDetailRepo>()));
    gh.singleton<_i96.RequestToExecuteUseCase>(
        () => _i96.RequestToExecuteUseCase(repo: gh<_i93.OrderDetailRepo>()));
    gh.factory<_i97.ConfirmationDataSource>(
        () => _i98.ConfirmationDataSourceImpl(gh<_i33.HttpClient>()));
    gh.factory<_i99.CreateOrganizationRepo>(() =>
        _i100.CreateOrganizationRepoImpl(
            gh<_i83.CreateOrganizationDataSource>()));
    gh.factory<_i101.OrdersHistoryDataSource>(
        () => _i102.OrdersHistoryDataSourceImpl(gh<_i33.HttpClient>()));
    gh.factory<_i103.OrderPlaceRepo>(
        () => _i104.CreateOrderRepoImpl(gh<_i87.OrderPlaceDataSource>()));
    gh.factory<_i105.ServiceDetailDataSource>(
        () => _i106.ServiceDetailDataSourceImpl(gh<_i33.HttpClient>()));
    gh.factory<_i107.OrdersHistoryRepo>(() => _i108.OrdersHistoryRepoImpl(
          gh<_i101.OrdersHistoryDataSource>(),
          gh<_i8.Converter<_i43.MyHistoryModel, _i44.MyHistoryEntity>>(),
          gh<
              _i8.Converter<_i71.CurrentHistoryDetailModel,
                  _i72.CurrentHistoryDetailEntity>>(),
        ));
    gh.factory<_i109.EquipmentDetailDataSource>(
        () => _i110.EquipmentDetailDataSourceImpl(gh<_i33.HttpClient>()));
    gh.singleton<_i111.GetProfileUseCase>(
        () => _i111.GetProfileUseCase(repo: gh<_i85.OrganizationRepo>()));
    gh.factory<_i112.EmployeeDataSource>(
        () => _i113.OrganizationDataSourceImpl(gh<_i33.HttpClient>()));
    gh.factory<_i114.RegistrationRepo>(
        () => _i115.RegistrationRepoImpl(gh<_i63.RegistrationDataSource>()));
    gh.singleton<_i116.RegistrationUseCase>(
        () => _i116.RegistrationUseCase(repo: gh<_i114.RegistrationRepo>()));
    gh.singleton<_i117.OrganizationBloc>(
        () => _i117.OrganizationBloc(gh<_i111.GetProfileUseCase>()));
    gh.factory<_i118.EquipmentDetailRepo>(() => _i119.EquipmentDetailRepoImpl(
          gh<_i109.EquipmentDetailDataSource>(),
          gh<
              _i8.Converter<_i49.EquipmentDetailModel,
                  _i50.EquipmentDetailEntity>>(),
        ));
    gh.factory<_i120.MarketplaceRepo>(() => _i121.MarketplaceRepoImpl(
          gh<_i41.MarketplaceDataSource>(),
          gh<
              _i8.Converter<_i18.GeneralResponceModel,
                  _i19.GeneralResponceEntity>>(),
          gh<
              _i8.Converter<_i12.AdvertisementResponseModel,
                  _i13.AdvertisementResponseEntity>>(),
        ));
    gh.singleton<_i122.ChangeOrderStatusUseCase>(() =>
        _i122.ChangeOrderStatusUseCase(repo: gh<_i80.CurrentOrdersRepo>()));
    gh.singleton<_i123.CompleteOrderUseCase>(
        () => _i123.CompleteOrderUseCase(repo: gh<_i80.CurrentOrdersRepo>()));
    gh.singleton<_i124.GetAllOrdersUseCase>(
        () => _i124.GetAllOrdersUseCase(repo: gh<_i80.CurrentOrdersRepo>()));
    gh.singleton<_i125.GetCurrentDetailOrderUseCase>(() =>
        _i125.GetCurrentDetailOrderUseCase(repo: gh<_i80.CurrentOrdersRepo>()));
    gh.singleton<_i126.GetCancelOrderUseCase>(
        () => _i126.GetCancelOrderUseCase(repo: gh<_i80.CurrentOrdersRepo>()));
    gh.factory<_i127.InviteEmployeeDataSource>(
        () => _i128.InviteEmployeeDataSourceImpl(gh<_i33.HttpClient>()));
    gh.factory<_i129.ConfirmationRepo>(() => _i130.ConfirmationRepoImpl(
          gh<_i97.ConfirmationDataSource>(),
          gh<_i4.AuthService>(),
        ));
    gh.factory<_i131.EmployeeRepo>(() => _i132.EmployeeRepoImpl(
          gh<_i112.EmployeeDataSource>(),
          gh<_i8.Converter<_i52.EmployeeModel, _i53.EmployeeEntity>>(),
          gh<
              _i8.Converter<_i58.EmployeeDetailModel,
                  _i59.EmployeeDetailEntity>>(),
        ));
    gh.factory<_i133.LoginBloc>(
        () => _i133.LoginBloc(loginUseCase: gh<_i82.LoginUseCase>()));
    gh.singleton<_i134.AddPositionUseCase>(
        () => _i134.AddPositionUseCase(repo: gh<_i89.PositionsRepo>()));
    gh.singleton<_i135.GetAllPositionsUseCase>(
        () => _i135.GetAllPositionsUseCase(repo: gh<_i89.PositionsRepo>()));
    gh.singleton<_i136.GetAvailableAccessRightsUseCase>(() =>
        _i136.GetAvailableAccessRightsUseCase(repo: gh<_i89.PositionsRepo>()));
    gh.singleton<_i137.GetAvailableWeightsUseCase>(
        () => _i137.GetAvailableWeightsUseCase(repo: gh<_i89.PositionsRepo>()));
    gh.factory<_i138.OrderDetailBloc>(() => _i138.OrderDetailBloc(
          gh<_i95.GetOrderByIdUseCase>(),
          gh<_i96.RequestToExecuteUseCase>(),
        ));
    gh.singleton<_i139.GetAllEmployeesUseCase>(
        () => _i139.GetAllEmployeesUseCase(repo: gh<_i131.EmployeeRepo>()));
    gh.singleton<_i140.GetEmployeeDetailUseCase>(
        () => _i140.GetEmployeeDetailUseCase(repo: gh<_i131.EmployeeRepo>()));
    gh.singleton<_i141.PositionsBloc>(() => _i141.PositionsBloc(
          gh<_i134.AddPositionUseCase>(),
          gh<_i135.GetAllPositionsUseCase>(),
          gh<_i136.GetAvailableAccessRightsUseCase>(),
          gh<_i137.GetAvailableWeightsUseCase>(),
        ));
    gh.singleton<_i142.GetEuipmentsUseCase>(
        () => _i142.GetEuipmentsUseCase(repo: gh<_i120.MarketplaceRepo>()));
    gh.singleton<_i143.GetOrdersUseCase>(
        () => _i143.GetOrdersUseCase(repo: gh<_i120.MarketplaceRepo>()));
    gh.singleton<_i144.GetServicesUseCase>(
        () => _i144.GetServicesUseCase(repo: gh<_i120.MarketplaceRepo>()));
    gh.singleton<_i145.SearchEquipmentUseCase>(
        () => _i145.SearchEquipmentUseCase(repo: gh<_i120.MarketplaceRepo>()));
    gh.singleton<_i146.SearchOrderUseCase>(
        () => _i146.SearchOrderUseCase(repo: gh<_i120.MarketplaceRepo>()));
    gh.singleton<_i147.SearchServiceUseCase>(
        () => _i147.SearchServiceUseCase(repo: gh<_i120.MarketplaceRepo>()));
    gh.singleton<_i148.AssignExecutorToOrderUseCase>(
        () => _i148.AssignExecutorToOrderUseCase(repo: gh<_i91.ProfileRepo>()));
    gh.singleton<_i149.DeleteEquipmentUseCase>(
        () => _i149.DeleteEquipmentUseCase(repo: gh<_i91.ProfileRepo>()));
    gh.singleton<_i150.DeleteOrderUseCase>(
        () => _i150.DeleteOrderUseCase(repo: gh<_i91.ProfileRepo>()));
    gh.singleton<_i151.DeleteServiceUseCase>(
        () => _i151.DeleteServiceUseCase(repo: gh<_i91.ProfileRepo>()));
    gh.singleton<_i152.EditProfileInfoUseCase>(
        () => _i152.EditProfileInfoUseCase(repo: gh<_i91.ProfileRepo>()));
    gh.singleton<_i153.GetEquipmentDetailedByIdUseCase>(() =>
        _i153.GetEquipmentDetailedByIdUseCase(repo: gh<_i91.ProfileRepo>()));
    gh.singleton<_i154.GetMyEquipmentsUseCase>(
        () => _i154.GetMyEquipmentsUseCase(repo: gh<_i91.ProfileRepo>()));
    gh.singleton<_i155.GetMyOrdersUseCase>(
        () => _i155.GetMyOrdersUseCase(repo: gh<_i91.ProfileRepo>()));
    gh.singleton<_i156.GetMyPurchasesUseCase>(
        () => _i156.GetMyPurchasesUseCase(repo: gh<_i91.ProfileRepo>()));
    gh.singleton<_i157.GetMyServicesUseCase>(
        () => _i157.GetMyServicesUseCase(repo: gh<_i91.ProfileRepo>()));
    gh.singleton<_i158.GetOrderDetailedByIdUseCase>(
        () => _i158.GetOrderDetailedByIdUseCase(repo: gh<_i91.ProfileRepo>()));
    gh.singleton<_i159.GetOrderHistoryForUserUseCase>(() =>
        _i159.GetOrderHistoryForUserUseCase(repo: gh<_i91.ProfileRepo>()));
    gh.singleton<_i160.GetProfileInfoUseCase>(
        () => _i160.GetProfileInfoUseCase(repo: gh<_i91.ProfileRepo>()));
    gh.singleton<_i161.GetServiceDetailedByIdUseCase>(() =>
        _i161.GetServiceDetailedByIdUseCase(repo: gh<_i91.ProfileRepo>()));
    gh.singleton<_i162.HideEquipmentUseCase>(
        () => _i162.HideEquipmentUseCase(repo: gh<_i91.ProfileRepo>()));
    gh.singleton<_i163.HideOrderUseCase>(
        () => _i163.HideOrderUseCase(repo: gh<_i91.ProfileRepo>()));
    gh.singleton<_i164.HideServiceUseCase>(
        () => _i164.HideServiceUseCase(repo: gh<_i91.ProfileRepo>()));
    gh.singleton<_i165.LoadMorePurchasesUseCase>(
        () => _i165.LoadMorePurchasesUseCase(repo: gh<_i91.ProfileRepo>()));
    gh.singleton<_i166.SearchAdvertisementUseCase>(
        () => _i166.SearchAdvertisementUseCase(repo: gh<_i91.ProfileRepo>()));
    gh.singleton<_i167.SendSubscriptionUseCase>(
        () => _i167.SendSubscriptionUseCase(repo: gh<_i91.ProfileRepo>()));
    gh.singleton<_i168.SignOutUseCase>(
        () => _i168.SignOutUseCase(repo: gh<_i91.ProfileRepo>()));
    gh.singleton<_i169.UploadImageUseCase>(
        () => _i169.UploadImageUseCase(repo: gh<_i91.ProfileRepo>()));
    gh.factory<_i170.CurrentOrderBloc>(() => _i170.CurrentOrderBloc(
          gh<_i124.GetAllOrdersUseCase>(),
          gh<_i125.GetCurrentDetailOrderUseCase>(),
          gh<_i122.ChangeOrderStatusUseCase>(),
          gh<_i123.CompleteOrderUseCase>(),
          gh<_i126.GetCancelOrderUseCase>(),
        ));
    gh.factory<_i171.RegistrationBloc>(() => _i171.RegistrationBloc(
        registrationUseCase: gh<_i116.RegistrationUseCase>()));
    gh.singleton<_i172.ConfirmationUseCase>(
        () => _i172.ConfirmationUseCase(repo: gh<_i129.ConfirmationRepo>()));
    gh.singleton<_i173.ResendPinUseCase>(
        () => _i173.ResendPinUseCase(repo: gh<_i129.ConfirmationRepo>()));
    gh.singleton<_i174.CreateOrganizationUseCase>(() =>
        _i174.CreateOrganizationUseCase(
            repo: gh<_i99.CreateOrganizationRepo>()));
    gh.singleton<_i175.CreateEquipmentUseCase>(
        () => _i175.CreateEquipmentUseCase(repo: gh<_i103.OrderPlaceRepo>()));
    gh.singleton<_i176.CreateOrderUseCase>(
        () => _i176.CreateOrderUseCase(repo: gh<_i103.OrderPlaceRepo>()));
    gh.singleton<_i177.CreateServiceUseCase>(
        () => _i177.CreateServiceUseCase(repo: gh<_i103.OrderPlaceRepo>()));
    gh.factory<_i178.MarketplaceBloc>(() => _i178.MarketplaceBloc(
          gh<_i142.GetEuipmentsUseCase>(),
          gh<_i143.GetOrdersUseCase>(),
          gh<_i144.GetServicesUseCase>(),
          gh<_i145.SearchEquipmentUseCase>(),
          gh<_i146.SearchOrderUseCase>(),
          gh<_i147.SearchServiceUseCase>(),
        ));
    gh.factory<_i179.OrderHistoryBloc>(() =>
        _i179.OrderHistoryBloc(gh<_i159.GetOrderHistoryForUserUseCase>()));
    gh.factory<_i180.NotificationBloc>(() =>
        _i180.NotificationBloc(gh<_i159.GetOrderHistoryForUserUseCase>()));
    gh.singleton<_i181.GetDetailedOrderUseCase>(() =>
        _i181.GetDetailedOrderUseCase(repo: gh<_i107.OrdersHistoryRepo>()));
    gh.singleton<_i182.GetOrdersHistoryUseCase>(() =>
        _i182.GetOrdersHistoryUseCase(repo: gh<_i107.OrdersHistoryRepo>()));
    gh.singleton<_i183.OrderPlaceBloc>(() => _i183.OrderPlaceBloc(
          gh<_i175.CreateEquipmentUseCase>(),
          gh<_i177.CreateServiceUseCase>(),
          gh<_i176.CreateOrderUseCase>(),
        ));
    gh.factory<_i184.ServiceDetailRepo>(() => _i185.ServiceDetailRepoImpl(
          gh<_i105.ServiceDetailDataSource>(),
          gh<
              _i8
              .Converter<_i15.ServiceDetailModel, _i16.ServiceDetailEntity>>(),
        ));
    gh.singleton<_i186.BuyEquipmentIdUseCase>(() =>
        _i186.BuyEquipmentIdUseCase(repo: gh<_i118.EquipmentDetailRepo>()));
    gh.singleton<_i187.GetEuipmentByIdUseCase>(() =>
        _i187.GetEuipmentByIdUseCase(repo: gh<_i118.EquipmentDetailRepo>()));
    gh.factory<_i188.InviteEmployeeRepo>(() => _i189.InviteEmployeeRepoImpl(
          gh<_i127.InviteEmployeeDataSource>(),
          gh<
              _i8.Converter<List<_i27.PositionModel>,
                  List<_i28.PositionEntity>>>(),
        ));
    gh.singleton<_i190.ConfirmationBloc>(() => _i190.ConfirmationBloc(
          gh<_i172.ConfirmationUseCase>(),
          gh<_i173.ResendPinUseCase>(),
        ));
    gh.factory<_i191.ProfileBloc>(() => _i191.ProfileBloc(
          sendSubscriptionUseCase: gh<_i167.SendSubscriptionUseCase>(),
          signOutUseCase: gh<_i168.SignOutUseCase>(),
          getProfileInfoUseCase: gh<_i160.GetProfileInfoUseCase>(),
          editProfileInfoUseCase: gh<_i152.EditProfileInfoUseCase>(),
          uploadImageUseCase: gh<_i169.UploadImageUseCase>(),
        ));
    gh.factory<_i192.AnnouncementBloc>(() => _i192.AnnouncementBloc(
          gh<_i158.GetOrderDetailedByIdUseCase>(),
          gh<_i161.GetServiceDetailedByIdUseCase>(),
          gh<_i153.GetEquipmentDetailedByIdUseCase>(),
          gh<_i155.GetMyOrdersUseCase>(),
          gh<_i154.GetMyEquipmentsUseCase>(),
          gh<_i157.GetMyServicesUseCase>(),
          gh<_i148.AssignExecutorToOrderUseCase>(),
          gh<_i163.HideOrderUseCase>(),
          gh<_i150.DeleteOrderUseCase>(),
          gh<_i162.HideEquipmentUseCase>(),
          gh<_i164.HideServiceUseCase>(),
          gh<_i149.DeleteEquipmentUseCase>(),
          gh<_i151.DeleteServiceUseCase>(),
          gh<_i166.SearchAdvertisementUseCase>(),
        ));
    gh.singleton<_i193.EmployeeBloc>(() => _i193.EmployeeBloc(
          gh<_i139.GetAllEmployeesUseCase>(),
          gh<_i140.GetEmployeeDetailUseCase>(),
        ));
    gh.factory<_i194.CreateOrganizationBloc>(() =>
        _i194.CreateOrganizationBloc(gh<_i174.CreateOrganizationUseCase>()));
    gh.singleton<_i195.GetServiceByIdUseCase>(
        () => _i195.GetServiceByIdUseCase(repo: gh<_i184.ServiceDetailRepo>()));
    gh.singleton<_i196.SendRequestToServiceUseCase>(() =>
        _i196.SendRequestToServiceUseCase(repo: gh<_i184.ServiceDetailRepo>()));
    gh.singleton<_i197.HistoryBloc>(() => _i197.HistoryBloc(
          gh<_i182.GetOrdersHistoryUseCase>(),
          gh<_i181.GetDetailedOrderUseCase>(),
        ));
    gh.factory<_i198.PurchasesBloc>(() => _i198.PurchasesBloc(
          gh<_i156.GetMyPurchasesUseCase>(),
          gh<_i165.LoadMorePurchasesUseCase>(),
          gh<_i187.GetEuipmentByIdUseCase>(),
          gh<_i95.GetOrderByIdUseCase>(),
          gh<_i195.GetServiceByIdUseCase>(),
        ));
    gh.factory<_i199.EquipmentDetailBloc>(() => _i199.EquipmentDetailBloc(
          gh<_i187.GetEuipmentByIdUseCase>(),
          gh<_i186.BuyEquipmentIdUseCase>(),
        ));
    gh.singleton<_i200.GetAvailablePositionsUseCase>(() =>
        _i200.GetAvailablePositionsUseCase(
            repo: gh<_i188.InviteEmployeeRepo>()));
    gh.singleton<_i201.InviteEmployeeUseCase>(() =>
        _i201.InviteEmployeeUseCase(repo: gh<_i188.InviteEmployeeRepo>()));
    gh.factory<_i202.ServiceDetailBloc>(() => _i202.ServiceDetailBloc(
          gh<_i195.GetServiceByIdUseCase>(),
          gh<_i196.SendRequestToServiceUseCase>(),
        ));
    gh.singleton<_i203.InviteEmployeeBloc>(() => _i203.InviteEmployeeBloc(
          gh<_i201.InviteEmployeeUseCase>(),
          gh<_i200.GetAvailablePositionsUseCase>(),
        ));
    return this;
  }
}

class _$RegisterModule extends _i204.RegisterModule {}
