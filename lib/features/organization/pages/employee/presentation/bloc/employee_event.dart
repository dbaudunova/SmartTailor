part of 'employee_bloc.dart';

@freezed
class EmployeeEvent with _$EmployeeEvent {
  const factory EmployeeEvent.getAllEmployees() = _EmployeeEvent;
  const factory EmployeeEvent.getEmployeeDetails({required int id}) = _GetEmployeeDetail;
}
