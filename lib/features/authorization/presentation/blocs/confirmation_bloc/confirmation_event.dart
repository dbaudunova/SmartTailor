part of 'confirmation_bloc.dart';

@freezed
class ConfirmationEvent with _$ConfirmationEvent {
  const factory ConfirmationEvent.login({
    required String pinCode,
    required String email,
  }) = _SendPin;
  const factory ConfirmationEvent.resendPin({
    required String email,
  }) = _ResendPinToEmail;
}
