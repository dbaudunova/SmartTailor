part of 'invite_employee_bloc.dart';

@freezed
class InviteEmployeeState with _$InviteEmployeeState {
  const factory InviteEmployeeState({
    required final StateStatus stateStatus,
  }) = _InviteEmployeeState;
}
