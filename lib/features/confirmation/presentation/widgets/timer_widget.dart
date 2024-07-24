import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:neobis_smart_tailor/features/confirmation/presentation/bloc/timer_bloc/timer_bloc.dart';
import 'package:neobis_smart_tailor/features/confirmation/presentation/widgets/timer_content.dart';
import 'package:neobis_smart_tailor/injection/injection.dart';

class TimerWidget extends StatelessWidget {
  const TimerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: getIt<TimerBloc>(),
      child: const TimerContent(),
    );
  }
}
