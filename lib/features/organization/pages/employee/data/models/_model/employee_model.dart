import 'package:freezed_annotation/freezed_annotation.dart';

part 'employee_model.freezed.dart';
part 'employee_model.g.dart';

@freezed
class EmployeeModel with _$EmployeeModel {
  factory EmployeeModel({
    required int? id,
    required String? fullName,
    required String? email,
    required List? orders,
    required String? position,
  }) = _EmployeeModel;

  factory EmployeeModel.initial() {
    return EmployeeModel(
      id: 0,
      fullName: '',
      email: '',
      orders: [],
      position: '',
    );
  }

  factory EmployeeModel.fromJson(Map<String, dynamic> json) => _$EmployeeModelFromJson(json);
}
