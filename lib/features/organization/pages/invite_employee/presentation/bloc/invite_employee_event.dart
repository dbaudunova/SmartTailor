part of 'invite_employee_bloc.dart';

@freezed
class InviteEmployeeEvent with _$InviteEmployeeEvent {
  const factory InviteEmployeeEvent.sendInvite() = _SendInvite;
}
