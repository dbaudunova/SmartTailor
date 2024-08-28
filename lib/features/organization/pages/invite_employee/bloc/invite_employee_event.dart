part of 'invite_employee_bloc.dart';

@freezed
class InviteEmployeeEvent with _$InviteEmployeeEvent {
  const factory InviteEmployeeEvent.sendInvite({required SendInviteModel model}) = _SendInvite;
  const factory InviteEmployeeEvent.getAvailablePostion() = _GetAvailablePostion;
}
