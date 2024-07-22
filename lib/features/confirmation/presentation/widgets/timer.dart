import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:neobis_smart_tailor/core/app/io_ui.dart';
import 'package:neobis_smart_tailor/features/confirmation/presentation/bloc/timer_bloc/timer_bloc.dart';
import 'package:neobis_smart_tailor/gen/strings.g.dart';

class TimerWidget extends StatefulWidget {
  const TimerWidget({super.key});

  @override
  State<TimerWidget> createState() => _TimerWidgetState();
}

class _TimerWidgetState extends State<TimerWidget> {
  @override
  void initState() {
    super.initState();
    context.read<TimerBloc>().add(const TimerEvent.started());
  }

  String getTimerText(int duration) {
    var minutes = duration ~/ 60;
    var seconds = duration % 60;
    var minuteStr = minutes.toString().padLeft(2, '0');
    var secondStr = seconds.toString().padLeft(2, '0');
    return '$minuteStr:$secondStr';
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 24),
      child: BlocBuilder<TimerBloc, TimerState>(
        builder: (context, state) {
          return state.when(
              initial: (duration) => Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        t.repeatSendCodeTime,
                        style: AppTextStyle.text14,
                      ),
                      const SizedBox(height: 16),
                      Text(
                        getTimerText(duration),
                        style: AppTextStyle.timer24regular,
                      ),
                    ],
                  ),
              runInProgress: (duration) => SizedBox(
                    width: double.infinity,
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          t.repeatSendCodeTime,
                          style: AppTextStyle.text14,
                        ),
                        const SizedBox(height: 16),
                        Text(
                          getTimerText(duration),
                          style: AppTextStyle.timer24regular,
                        ),
                      ],
                    ),
                  ),
              runComplete: () => Container());
        },
      ),
    );
  }
}
