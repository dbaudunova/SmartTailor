import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:neobis_smart_tailor/features/organization/pages/current_order/data/models/current_order_model/current_order_model.dart';

part 'history_order_list_model.freezed.dart';
part 'history_order_list_model.g.dart';

@freezed
class HistoryOrderListModel with _$HistoryOrderListModel {
  factory HistoryOrderListModel({
    required int? totalCount,
    required List<CurrentOrderModel>? orders,
    required bool? isLast,
    required int? organizationId,
    required String? organizationName,
    required String? organizationDescription,
  }) = _HistoryOrderListModel;

  factory HistoryOrderListModel.initial() {
    return HistoryOrderListModel(
      totalCount: 0,
      orders: [],
      isLast: null,
      organizationDescription: '',
      organizationId: 0,
      organizationName: '',
    );
  }

  factory HistoryOrderListModel.fromJson(Map<String, dynamic> json) => _$HistoryOrderListModelFromJson(json);
}
