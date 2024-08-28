import 'package:neobis_smart_tailor/features/organization/domain/entitys/current_order_entity.dart';

class OrganizationListEntity {
  final int? totalCount;
  final List<CurrentOrderEntity>? orders;
  final bool? isLast;
  final int? organizationId;
  final String? organizationName;
  final String? organizationDescription;

  OrganizationListEntity({
    required this.totalCount,
    required this.orders,
    required this.isLast,
    required this.organizationDescription,
    required this.organizationId,
    required this.organizationName,
  });

  factory OrganizationListEntity.initial() {
    return OrganizationListEntity(
      totalCount: 0,
      orders: [],
      isLast: null,
      organizationDescription: '',
      organizationId: 0,
      organizationName: '',
    );
  }
}
