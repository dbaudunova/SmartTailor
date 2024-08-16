import 'package:freezed_annotation/freezed_annotation.dart';

part 'history_order_model.freezed.dart';
part 'history_order_model.g.dart';

@freezed
class HistoryModel with _$HistoryModel {
  factory HistoryModel({
    required int? id,
    required String? imageUrl,
    required String? name,
    required String? description,
    required double? price,
    required String? status,
  }) = _HistoryModel;

  factory HistoryModel.initial() {
    return HistoryModel(
      id: 0,
      imageUrl: '',
      name: '',
      description: '',
      price: 0.0,
      status: '',
    );
  }

  factory HistoryModel.fromJson(Map<String, dynamic> json) => _$HistoryModelFromJson(json);
}
