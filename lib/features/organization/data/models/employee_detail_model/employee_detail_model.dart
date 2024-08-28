import 'package:freezed_annotation/freezed_annotation.dart';

part 'employee_detail_model.freezed.dart';
part 'employee_detail_model.g.dart';

@freezed
class EmployeeDetailModel with _$EmployeeDetailModel {
  factory EmployeeDetailModel({
    required int? id,
    required String? imagePath,
    required String? email,
    required String? name,
    required String? surname,
    required String? patronymic,
    required String? phoneNumber,
    required String? positionName,
  }) = _EmployeeDetailModel;

  factory EmployeeDetailModel.initial() {
    return EmployeeDetailModel(
      id: 0,
      imagePath: '',
      name: '',
      surname: '',
      email: '',
      patronymic: '',
      phoneNumber: '',
      positionName: '',
    );
  }

  factory EmployeeDetailModel.fromJson(Map<String, dynamic> json) => _$EmployeeDetailModelFromJson(json);
}
