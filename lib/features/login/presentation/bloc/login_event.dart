part of 'login_bloc.dart';

@freezed
class LoginEvent with _$LoginEvent {
  const factory LoginEvent.sendPinToEmail({required String email}) = _SendPinToEmail;
}
