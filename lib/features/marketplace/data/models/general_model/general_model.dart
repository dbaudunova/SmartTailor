import 'package:freezed_annotation/freezed_annotation.dart';

part 'general_model.freezed.dart';
part 'general_model.g.dart';

@freezed
class GeneralOrderModel with _$GeneralOrderModel {
  factory GeneralOrderModel({
    required int id,
    required String name,
    required String description,
    required int price,
    required String imageUrl,
    required String authorFullName,
    required String authorImageUrl,
    // required String dateOfExecution,
    @Default('') String dateOfExecution,
  }) = _GeneralModel;

  factory GeneralOrderModel.initial() {
    return GeneralOrderModel(
      id: 0,
      name: '',
      description: '',
      price: 0,
      imageUrl: '',
      authorFullName: '',
      authorImageUrl: '',
      dateOfExecution: '',
    );
  }

  factory GeneralOrderModel.fromJson(Map<String, dynamic> json) => _$GeneralOrderModelFromJson(json);
}
