part of 'confirmation_bloc.dart';

@freezed
class ConfirmationEvent with _$ConfirmationEvent {
  const factory ConfirmationEvent.sendPin(String pinCode) = _SendPin;
  const factory ConfirmationEvent.addPin(String pinCode) = _AddPin;
  // const factory TimerEvent.ticked(int duration) = _Ticked;
}
