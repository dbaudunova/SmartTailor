import 'package:freezed_annotation/freezed_annotation.dart';

part 'my_purchases_list_model.freezed.dart';
part 'my_purchases_list_model.g.dart';

@freezed
class PurchasesListModel with _$PurchasesListModel {
  factory PurchasesListModel({
    required int? totalCount,
    required List<PurchasesModel>? advertisement,
    required bool? isLast,
  }) = _PurchasesListModel;

  factory PurchasesListModel.initial() {
    return PurchasesListModel(
      totalCount: 0,
      advertisement: [],
      isLast: null,
    );
  }

  factory PurchasesListModel.fromJson(Map<String, dynamic> json) => _$PurchasesListModelFromJson(json);
}

@freezed
class PurchasesModel with _$PurchasesModel {
  factory PurchasesModel({
    int? id,
    String? name,
    String? description,
    double? price,
    String? dateOfExecution,
    String? imageUrl,
    String? authorFullName,
    String? authorImageUrl,
    String? type,
  }) = _PurchasesModel;

  factory PurchasesModel.fromJson(Map<String, dynamic> json) => _$PurchasesModelFromJson(json);
}
