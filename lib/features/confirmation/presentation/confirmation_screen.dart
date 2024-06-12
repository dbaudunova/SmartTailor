import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:neobis_smart_tailor/core/app/io_ui.dart';
import 'package:neobis_smart_tailor/features/confirmation/presentation/bloc/bloc/timer_bloc.dart';
import 'package:neobis_smart_tailor/features/confirmation/presentation/widgets/pin_code_widget.dart';
import 'package:neobis_smart_tailor/features/confirmation/presentation/widgets/timer.dart';
import 'package:neobis_smart_tailor/gen/strings.g.dart';
import 'package:neobis_smart_tailor/injection/injection.dart';

@RoutePage()
class ConfirmationScreen extends StatefulWidget {
  const ConfirmationScreen({super.key});

  @override
  State<ConfirmationScreen> createState() => _ConfirmationScreenState();
}

class _ConfirmationScreenState extends State<ConfirmationScreen> {
  final pinCode = TextEditingController();

  @override
  void dispose() {
    pinCode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double statusBarHeight = MediaQuery.of(context).padding.top;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text(t.registration),
        titleTextStyle: AppTextStyle.title24.copyWith(fontSize: 20),
        centerTitle: true,
        backgroundColor: AppColors.background,
      ),
      body: BlocProvider(
        // create: (context) => TimerBloc(ticker: const Ticker())..add(const TimerEvent.started()),
        create: (context) => getIt<TimerBloc>(),
        child: Padding(
          padding: const EdgeInsets.only(
            bottom: 50,
            left: AppProps.kPageMargin,
            right: AppProps.kPageMargin,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 72 + statusBarHeight),
              Text(
                textAlign: TextAlign.center,
                t.sendPinCode,
                style: AppTextStyle.textField16,
              ),
              const SizedBox(height: 24),
              PinCodeField(pinCode: pinCode),
              const TimerScreen(),
              const Spacer(),
              ElevatedButtonWidget(
                text: t.Enter,
              ),
              const SizedBox(height: AppProps.kPageMargin),
              // ElevatedButtonWidget(
              //   text: t.repeatSendCodeButton,
              // ),
              _buildRepeatCodeButton(),
            ],
          ),
        ),
      ),
    );
  }

  BlocBuilder<TimerBloc, TimerState> _buildRepeatCodeButton() {
    return BlocBuilder<TimerBloc, TimerState>(
      builder: (context, state) {
        return state.when(
          initial: (_) {
            return ElevatedButtonWidget(text: t.repeatSendCodeButton);
          },
          runInProgress: (_) {
            return ElevatedButtonWidget(text: t.repeatSendCodeButton);
          },
          runComplete: () {
            return ElevatedButtonWidget(
              text: t.repeatSendCodeButton,
              onTap: () {},
            );
          },
        );
      },
    );
  }
}
