part of 'confirmation_bloc.dart';

@freezed
class ConfirmationEvent with _$ConfirmationEvent {
  const factory ConfirmationEvent.login({
    required String pinCode,
    required String email,
  }) = _SendPin;
  const factory ConfirmationEvent.addEmail({required String email}) = _AddEmail;
  const factory ConfirmationEvent.resendPin() = _ResendPinToEmail;
}
