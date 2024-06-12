import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:neobis_smart_tailor/core/app/io_ui.dart';
import 'package:neobis_smart_tailor/features/confirmation/presentation/bloc/bloc/timer_bloc.dart';
import 'package:neobis_smart_tailor/gen/strings.g.dart';

class TimerScreen extends StatelessWidget {
  const TimerScreen({super.key});

  String getTimerText(int duration) {
    int minutes = duration ~/ 60;
    int seconds = duration % 60;
    String minuteStr = minutes.toString().padLeft(2, '0');
    String secondStr = seconds.toString().padLeft(2, '0');
    return '$minuteStr:$secondStr';
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TimerBloc(ticker: const Ticker())..add(const TimerEvent.started()),
      child: Padding(
        padding: const EdgeInsets.only(top: 24),
        child: Column(
          children: [
            Text(
              t.repeatSendCodeTime,
              style: AppTextStyle.text14,
            ),
            const SizedBox(height: 16),
            BlocBuilder<TimerBloc, TimerState>(
              builder: (context, state) {
                return state.when(
                  initial: (duration) => Text(
                    getTimerText(duration),
                    style: AppTextStyle.timer24regular,
                  ),
                  runInProgress: (duration) => Text(
                    getTimerText(duration),
                    style: AppTextStyle.timer24regular,
                  ),
                  runComplete: () => const Text(
                    '00:00',
                    style: AppTextStyle.timer24regular,
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
