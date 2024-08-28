import 'dart:convert';
import 'dart:io';

import 'package:injectable/injectable.dart';
import 'package:neobis_smart_tailor/features/organization/data/data_source/organization_data_source.dart';
import 'package:neobis_smart_tailor/features/organization/data/models/create_organization_model/create_organixation_model.dart';
import 'package:neobis_smart_tailor/features/organization/data/models/current_detail_order_model/current_detail_order_model.dart';
import 'package:neobis_smart_tailor/features/organization/data/models/current_history_detail_model/current_history_detail_model.dart';
import 'package:neobis_smart_tailor/features/organization/data/models/employee_detail_model/employee_detail_model.dart';
import 'package:neobis_smart_tailor/features/organization/data/models/employee_model/employee_model.dart';
import 'package:neobis_smart_tailor/features/organization/data/models/organization_info_model/organization_info_model.dart';
import 'package:neobis_smart_tailor/features/organization/data/models/organization_list_model/organization_list_model.dart';
import 'package:neobis_smart_tailor/features/organization/data/models/position_list_model/position_model.dart';
import 'package:neobis_smart_tailor/features/organization/data/models/send_invite_model/send_invite_model.dart';
import 'package:neobis_smart_tailor/features/organization/domain/entitys/current_detail_order_entity.dart';
import 'package:neobis_smart_tailor/features/organization/domain/entitys/current_history_detail_entity.dart';
import 'package:neobis_smart_tailor/features/organization/domain/entitys/employee_detail_entity.dart';
import 'package:neobis_smart_tailor/features/organization/domain/entitys/employee_entity.dart';
import 'package:neobis_smart_tailor/features/organization/domain/entitys/organization_info_entity.dart';
import 'package:neobis_smart_tailor/features/organization/domain/entitys/organization_list_entity.dart';
import 'package:neobis_smart_tailor/features/organization/domain/entitys/position_entity.dart';
import 'package:neobis_smart_tailor/features/organization/domain/repository/organization_repo.dart';
import 'package:neobis_smart_tailor/features/profile/data/model/history_model/my_history_model.dart';
import 'package:neobis_smart_tailor/features/profile/domain/model/my_history_entity.dart';

@Injectable(as: OrganizationRepo)
class OrganizationRepoImpl implements OrganizationRepo {
  final OrganizationDataSource _dataSource;
  final Converter<List<PositionModel>, List<PositionEntity>> _positionListConverter;
  final Converter<OrganizationInfoModel, OrganizationInfoEntity> _organizationInfoConverter;
  final Converter<MyHistoryModel, MyHistoryEntity> _converterHistory;
  final Converter<CurrentHistoryDetailModel, CurrentHistoryDetailEntity> _converterDetailed;
  final Converter<EmployeeModel, EmployeeEntity> _employeeConverter;
  final Converter<EmployeeDetailModel, EmployeeDetailEntity> _employeeDetailConverter;
  final Converter<OrganizationListModel, OrganizationListEntity> organizationOrderListConverter;
  final Converter<CurrentDetailOrderModel, CurrentDetailOrderEntity> currentDetailOrderconverter;

  OrganizationRepoImpl(
    this._dataSource,
    this._positionListConverter,
    this._organizationInfoConverter,
    this._converterHistory,
    this._converterDetailed,
    this._employeeConverter,
    this._employeeDetailConverter,
    this.organizationOrderListConverter,
    this.currentDetailOrderconverter,
  );

  @override
  Future<void> createPosition({required PositionEntity entity}) async {
    var model = PositionModel(
      positionName: entity.positionName,
      weight: int.parse(entity.weight!),
      accessRights: entity.accessRights,
    );
    await _dataSource.createPosition(model: model);
  }

  @override
  Future<List<PositionEntity>> getAllPositions() async {
    var models = await _dataSource.getAllPositions();
    final entitys = _positionListConverter.convert(models);
    return entitys;
  }

  @override
  Future<List<String>> getAvailableAccessRights() async {
    var list = await _dataSource.getAvailableAccessRights();
    return list;
  }

  @override
  Future<List<int>> getAvailableWeights() async {
    var list = await _dataSource.getAvailableWeights();
    return list;
  }

  @override
  Future<OrganizationInfoEntity?> getOrganization() async {
    var model = await _dataSource.getOrganization();
    final entity = _organizationInfoConverter.convert(model!);
    return entity;
  }

  @override
  Future<void> sendInvitation(SendInviteModel model) async {
    await _dataSource.sendInvitation(model);
  }

  @override
  Future<List<PositionEntity>> getAvailablePositions() async {
    var models = await _dataSource.getAvailablePositions();
    final entitys = _positionListConverter.convert(models);
    return entitys;
  }

  @override
  Future<MyHistoryEntity> getAllOrdersHistory() async {
    var model = await _dataSource.getAllOrdersHistory();
    var entity = _converterHistory.convert(model);
    return entity;
  }

  @override
  Future<CurrentHistoryDetailEntity> getDetaileHistoryOrder({required int id}) async {
    var model = await _dataSource.getDetaileHistoryOrder(id: id);
    var entity = _converterDetailed.convert(model);
    return entity;
  }

  @override
  Future<List<EmployeeEntity>> getAllEmployees() async {
    var models = await _dataSource.getAllEmployees();
    final entitys = models.map((model) => _employeeConverter.convert(model)).toList();
    return entitys;
  }

  @override
  Future<EmployeeDetailEntity> getEmployeeDetail({required int id}) async {
    var model = await _dataSource.getEmployeeDetail(id: id);
    final entity = _employeeDetailConverter.convert(model);
    return entity;
  }

  @override
  Future<OrganizationListEntity> getAllOrders() async {
    var model = await _dataSource.gatAllOrders();
    final entitys = organizationOrderListConverter.convert(model);
    return entitys;
  }

  @override
  Future<CurrentDetailOrderEntity> getDetailedOrder({required int id}) async {
    var model = await _dataSource.getDetailOrder(id: id);
    final entity = currentDetailOrderconverter.convert(model);
    return entity;
  }

  @override
  Future<void> changeOrderStatus({required int id, required String value}) async {
    await _dataSource.changeOrderStatus(id: id, value: value);
  }

  @override
  Future<void> completeOrder({required int id}) async {
    await _dataSource.completeOrder(id: id);
  }

  @override
  Future<void> cancelOrder({required int id}) async {
    await _dataSource.cancelOrder(id: id);
  }

  @override
  Future<void> createOrganization({required CreateOrganizationModel model, required File image}) async {
    await _dataSource.createOrganization(image: image, model: model);
  }
}
