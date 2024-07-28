part of 'registration_bloc.dart';

@freezed
class RegistrationEvent with _$RegistrationEvent {
  const factory RegistrationEvent.registration({required RegistrationModel registrationModel}) = _Registration;
  const factory RegistrationEvent.reset() = _Reset;
  const factory RegistrationEvent.addEmail({required String email}) = _AddEmail;
}
