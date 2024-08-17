import 'package:freezed_annotation/freezed_annotation.dart';

part 'current_detail_order_model.freezed.dart';
part 'current_detail_order_model.g.dart';

@freezed
class CurrentDetailOrderModel with _$CurrentDetailOrderModel {
  factory CurrentDetailOrderModel({
    required int id,
    required String name,
    required String description,
    required double price,
    required String status,
    required DateTime dateOfExecution,
    required List<String> images,
    required List<Employee> employees,
    required String authorFullName,
    required String authorImage,
    required String authorContactInfo,
  }) = _CurrentDetailOrderModel;

  factory CurrentDetailOrderModel.initial() {
    return CurrentDetailOrderModel(
      id: 0,
      name: '',
      description: '',
      price: 0.0,
      status: '',
      dateOfExecution: DateTime.now(),
      images: [],
      employees: [],
      authorFullName: '',
      authorImage: '',
      authorContactInfo: '',
    );
  }

  factory CurrentDetailOrderModel.fromJson(Map<String, dynamic> json) => _$CurrentDetailOrderModelFromJson(json);
}

@freezed
class Employee with _$Employee {
  factory Employee({
    required int id,
    required String fullName,
    required String image,
    required String position,
  }) = _Employee;

  factory Employee.fromJson(Map<String, dynamic> json) => _$EmployeeFromJson(json);
}
