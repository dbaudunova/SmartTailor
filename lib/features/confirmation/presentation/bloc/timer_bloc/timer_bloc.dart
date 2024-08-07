import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'timer_event.dart';
part 'timer_state.dart';
part 'timer_bloc.freezed.dart';

@singleton
class TimerBloc extends Bloc<TimerEvent, TimerState> {
  static const int _initialDuration = 3;
  late final Ticker _ticker;
  StreamSubscription<int>? _tickerSubscription;

  TimerBloc({required Ticker ticker})
      : _ticker = ticker,
        super(const TimerState.initial(_initialDuration)) {
    on<_Started>(_onStarted);
    on<_Ticked>(_onTicked);
  }

  void _onStarted(
    _Started event,
    Emitter<TimerState> emit,
  ) {
    final currentDuration = state.maybeWhen(
      orElse: () => _initialDuration,
      initial: (duration) => duration,
      runInProgress: (duration) => duration,
    );
    emit(TimerState.runInProgress(currentDuration));
    _tickerSubscription?.cancel();
    _tickerSubscription = _ticker.tick(ticks: currentDuration).listen(
          (duration) => add(TimerEvent.ticked(duration)),
        );
  }

  void _onTicked(_Ticked event, Emitter<TimerState> emit) {
    emit(event.duration > 0
        ? TimerState.runInProgress(event.duration)
        : const TimerState.runComplete());
  }

  @override
  Future<void> close() {
    _tickerSubscription?.cancel();
    return super.close();
  }
}

@singleton
class Ticker {
  const Ticker();

  Stream<int> tick({required int ticks}) {
    return Stream.periodic(
      const Duration(seconds: 1),
      (x) => ticks - x - 1,
    ).take(ticks);
  }
}
