import 'dart:io';

import 'package:neobis_smart_tailor/features/organization/data/models/create_organization_model/create_organixation_model.dart';
import 'package:neobis_smart_tailor/features/organization/data/models/send_invite_model/send_invite_model.dart';
import 'package:neobis_smart_tailor/features/organization/domain/entitys/current_detail_order_entity.dart';
import 'package:neobis_smart_tailor/features/organization/domain/entitys/current_history_detail_entity.dart';
import 'package:neobis_smart_tailor/features/organization/domain/entitys/employee_detail_entity.dart';
import 'package:neobis_smart_tailor/features/organization/domain/entitys/employee_entity.dart';
import 'package:neobis_smart_tailor/features/organization/domain/entitys/organization_info_entity.dart';
import 'package:neobis_smart_tailor/features/organization/domain/entitys/organization_list_entity.dart';
import 'package:neobis_smart_tailor/features/organization/domain/entitys/position_entity.dart';
import 'package:neobis_smart_tailor/features/profile/domain/entitys/my_history_entity.dart';

abstract class OrganizationRepo {
  Future<List<PositionEntity>> getAllPositions();
  Future<void> createPosition({required PositionEntity entity});
  Future<List<String>> getAvailableAccessRights();
  Future<List<int>> getAvailableWeights();
  Future<OrganizationInfoEntity?> getOrganization();
  Future<void> sendInvitation(SendInviteModel model);
  Future<List<PositionEntity>> getAvailablePositions();
  Future<MyHistoryEntity> getAllOrdersHistory();
  Future<CurrentHistoryDetailEntity> getDetaileHistoryOrder({required int id});
  Future<List<EmployeeEntity>> getAllEmployees();
  Future<EmployeeDetailEntity> getEmployeeDetail({required int id});
  Future<OrganizationListEntity> getAllOrders();
  Future<CurrentDetailOrderEntity> getDetailedOrder({required int id});
  Future<void> changeOrderStatus({required int id, required String value});
  Future<void> completeOrder({required int id});
  Future<void> cancelOrder({required int id});
  Future<void> createOrganization({required CreateOrganizationModel model, required File image});
}
