import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:neobis_smart_tailor/features/organization/data/models/current_order_model/current_order_model.dart';

part 'organization_list_model.freezed.dart';
part 'organization_list_model.g.dart';

@freezed
class OrganizationListModel with _$OrganizationListModel {
  factory OrganizationListModel({
    required int? totalCount,
    required List<CurrentOrderModel>? orders,
    required bool? isLast,
    required int? organizationId,
    required String? organizationName,
    required String? organizationDescription,
  }) = _OrganizationListModel;

  factory OrganizationListModel.initial() {
    return OrganizationListModel(
      totalCount: 0,
      orders: [],
      isLast: null,
      organizationDescription: '',
      organizationId: 0,
      organizationName: '',
    );
  }

  factory OrganizationListModel.fromJson(Map<String, dynamic> json) => _$OrganizationListModelFromJson(json);
}
