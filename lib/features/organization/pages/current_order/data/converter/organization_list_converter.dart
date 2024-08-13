import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:neobis_smart_tailor/features/organization/pages/current_order/data/models/_model/current_order_model.dart';
import 'package:neobis_smart_tailor/features/organization/pages/current_order/data/models/organization_list_model/organization_list_model.dart';
import 'package:neobis_smart_tailor/features/organization/pages/current_order/domain/entitys/current_order_entity.dart';
import 'package:neobis_smart_tailor/features/organization/pages/current_order/domain/entitys/organization_list_entity.dart';

@Injectable(as: Converter<OrganizationListModel, OrganizationListEntity>)
class GeneralResponseMapper extends Converter<OrganizationListModel, OrganizationListEntity> {
  final Converter<CurrentOrderModel, CurrentOrderEntity> _organizationInfoConverter;

  GeneralResponseMapper(this._organizationInfoConverter);

  @override
  OrganizationListEntity convert(OrganizationListModel input) {
    return OrganizationListEntity(
        isLast: input.isLast,
        orders: input.orders?.map((order) => _organizationInfoConverter.convert(order)).toList() ?? [],
        totalCount: input.totalCount,
        organizationDescription: input.organizationDescription,
        organizationId: input.organizationId,
        organizationName: input.organizationName);
  }
}
