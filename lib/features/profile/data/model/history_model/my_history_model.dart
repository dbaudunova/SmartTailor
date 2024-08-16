import 'package:freezed_annotation/freezed_annotation.dart';

part 'my_history_model.freezed.dart';
part 'my_history_model.g.dart';

@freezed
class MyHistoryModel with _$MyHistoryModel {
  factory MyHistoryModel({
    required int? totalCount,
    required List<HistoryModel>? advertisement,
    required bool? isLast,
  }) = _MyHistoryModel;

  factory MyHistoryModel.initial() {
    return MyHistoryModel(
      totalCount: 0,
      advertisement: [],
      isLast: null,
    );
  }

  factory MyHistoryModel.fromJson(Map<String, dynamic> json) => _$MyHistoryModelFromJson(json);
}

@freezed
class HistoryModel with _$HistoryModel {
  factory HistoryModel({
    int? id,
    String? name,
    double? price,
    String? status,
    String? date,
  }) = _HistoryModel;

  factory HistoryModel.fromJson(Map<String, dynamic> json) => _$HistoryModelFromJson(json);
}
