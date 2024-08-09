part of 'employee_bloc.dart';

@freezed
class EmployeeState with _$EmployeeState {
  const factory EmployeeState({
    required final StateStatus stateStatus,
    required final List<EmployeeEntity> employees,
  }) = _EmployeeState;
}
