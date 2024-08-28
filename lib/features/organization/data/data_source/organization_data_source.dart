import 'dart:io';

import 'package:neobis_smart_tailor/features/organization/data/models/create_organization_model/create_organixation_model.dart';
import 'package:neobis_smart_tailor/features/organization/data/models/current_detail_order_model/current_detail_order_model.dart';
import 'package:neobis_smart_tailor/features/organization/data/models/current_history_detail_model/current_history_detail_model.dart';
import 'package:neobis_smart_tailor/features/organization/data/models/employee_detail_model/employee_detail_model.dart';
import 'package:neobis_smart_tailor/features/organization/data/models/employee_model/employee_model.dart';
import 'package:neobis_smart_tailor/features/organization/data/models/organization_info_model/organization_info_model.dart';
import 'package:neobis_smart_tailor/features/organization/data/models/organization_list_model/organization_list_model.dart';
import 'package:neobis_smart_tailor/features/organization/data/models/position_list_model/position_model.dart';
import 'package:neobis_smart_tailor/features/organization/data/models/send_invite_model/send_invite_model.dart';
import 'package:neobis_smart_tailor/features/profile/data/model/history_model/my_history_model.dart';

abstract class OrganizationDataSource {
  Future<List<PositionModel>> getAllPositions();
  Future<void> createPosition({required PositionModel model});
  Future<List<String>> getAvailableAccessRights();
  Future<List<int>> getAvailableWeights();
  Future<OrganizationInfoModel?> getOrganization();
  Future<void> sendInvitation(SendInviteModel model);
  Future<List<PositionModel>> getAvailablePositions();
  Future<MyHistoryModel> getAllOrdersHistory();
  Future<CurrentHistoryDetailModel> getDetaileHistoryOrder({required int id});
  Future<List<EmployeeModel>> getAllEmployees();
  Future<EmployeeDetailModel> getEmployeeDetail({required int id});
  Future<OrganizationListModel> gatAllOrders();
  Future<CurrentDetailOrderModel> getDetailOrder({required int id});
  Future<void> changeOrderStatus({required int id, required String value});
  Future<void> completeOrder({required int id});
  Future<void> cancelOrder({required int id});
  Future<void> createOrganization({required CreateOrganizationModel model, required File image});
}
