import 'package:neobis_smart_tailor/features/organization/pages/current_order/domain/entitys/current_order_entity.dart';

class HistoryOrderListEntity {
  final int? totalCount;
  final List<CurrentOrderEntity>? orders;
  final bool? isLast;
  final int? organizationId;
  final String? organizationName;
  final String? organizationDescription;

  HistoryOrderListEntity({
    required this.totalCount,
    required this.orders,
    required this.isLast,
    required this.organizationDescription,
    required this.organizationId,
    required this.organizationName,
  });

  factory HistoryOrderListEntity.initial() {
    return HistoryOrderListEntity(
      totalCount: 0,
      orders: [],
      isLast: null,
      organizationDescription: '',
      organizationId: 0,
      organizationName: '',
    );
  }
}
