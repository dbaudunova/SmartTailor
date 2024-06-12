part of 'confirmation_bloc.dart';

@freezed
class ConfirmationState with _$ConfirmationState {
  // const factory ConfirmationState({
  //   required final StateStatus stateStatus,
  //   required final ConfirmationModel confirmationModel,
  // }) = _ConfirmationState;
  const factory ConfirmationState.buttonActive() = _Active;
  const factory ConfirmationState.buttonInactive() = _Inactive;
}
