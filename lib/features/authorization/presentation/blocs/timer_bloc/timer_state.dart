part of 'timer_bloc.dart';

@freezed
class TimerState with _$TimerState {
  const factory TimerState.initial(int duration) = _Initial;
  const factory TimerState.runInProgress(int duration) = _RunInProgress;
  const factory TimerState.runComplete() = _RunComplete;
}
