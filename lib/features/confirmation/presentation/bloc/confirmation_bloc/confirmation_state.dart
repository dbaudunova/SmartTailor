part of 'confirmation_bloc.dart';

@freezed
class ConfirmationState with _$ConfirmationState {
  const factory ConfirmationState({
    required final StateStatus stateStatus,
    required final String email,
    // final int? pinCode,
  }) = _ConfirmationState;
}

// @freezed
// class RegistrationState with _$RegistrationState {
//   const factory RegistrationState({
//     required final StateStatus stateStatus,
//     required final RegistrationModel registrationModel,
//     required final bool isButtonAvailable,
//   }) = _RegistrationState;
// }
