part of 'registration_bloc.dart';

@freezed
class RegistrationState with _$RegistrationState {
  const factory RegistrationState({
    required final StateStatus stateStatus,
    // required final String email,
    // required final RegistrationModel registrationModel,
  }) = _RegistrationState;
}
