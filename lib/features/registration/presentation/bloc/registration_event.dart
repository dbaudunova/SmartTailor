part of 'registration_bloc.dart';

@freezed
class RegistrationEvent with _$RegistrationEvent {
  const factory RegistrationEvent.registration({required RegistrationModel registrationModel}) = _Registration;
  const factory RegistrationEvent.addName({required String name}) = _AddName;
  const factory RegistrationEvent.addSurname({required String surname}) = _AddSurname;
  const factory RegistrationEvent.addFatherName({required String fatherName}) = _AddFatherName;
  const factory RegistrationEvent.addEmail({required String email}) = _AddEmail;
  const factory RegistrationEvent.addPhone({required String phone}) = _AddPhone;
}
