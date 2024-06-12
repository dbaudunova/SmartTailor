part of 'confirmation_bloc.dart';

@freezed
class ConfirmationEvent with _$ConfirmationEvent {
  // const factory ConfirmationEvent.repeatCode({required bool repeatCode}) = _RepeatCode;
  const factory ConfirmationEvent.activateButton() = _Activate;
  const factory ConfirmationEvent.deactivateButton() = _Deactivate;
}
