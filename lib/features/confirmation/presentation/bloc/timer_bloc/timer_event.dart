part of 'timer_bloc.dart';

@freezed
class TimerEvent with _$TimerEvent {
  const factory TimerEvent.started() = _Started;
  const factory TimerEvent.ticked(int duration) = _Ticked;
  // const factory TimerEvent.activateButton() = _Activate;
  // const factory TimerEvent.deactivateButton() = _Deactivate;
}
