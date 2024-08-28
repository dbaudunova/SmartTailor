import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:neobis_smart_tailor/features/organization/data/models/current_detail_order_model/current_detail_order_model.dart';

part 'current_history_detail_model.freezed.dart';
part 'current_history_detail_model.g.dart';

@freezed
class CurrentHistoryDetailModel with _$CurrentHistoryDetailModel {
  factory CurrentHistoryDetailModel({
    required int id,
    required String name,
    required String description,
    required double price,
    required DateTime dateOfCompletion,
    required List<Employee> employees,
    required String authorFullName,
    required String authorContactInfo,
  }) = _CurrentHistoryDetailModel;

  factory CurrentHistoryDetailModel.initial() {
    return CurrentHistoryDetailModel(
      dateOfCompletion: DateTime.now(),
      id: 0,
      name: '',
      description: '',
      price: 0.0,
      employees: [],
      authorFullName: '',
      authorContactInfo: '',
    );
  }

  factory CurrentHistoryDetailModel.fromJson(Map<String, dynamic> json) => _$CurrentHistoryDetailModelFromJson(json);
}
