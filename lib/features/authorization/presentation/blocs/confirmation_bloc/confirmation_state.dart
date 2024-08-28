part of 'confirmation_bloc.dart';

@freezed
class ConfirmationState with _$ConfirmationState {
  const factory ConfirmationState({
    required final StateStatus stateStatus,
  }) = _ConfirmationState;
}
