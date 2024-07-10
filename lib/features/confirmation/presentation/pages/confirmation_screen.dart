import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:neobis_smart_tailor/core/app/io_ui.dart';
import 'package:neobis_smart_tailor/core/app/router/app_routes.dart';
import 'package:neobis_smart_tailor/features/confirmation/presentation/bloc/confirmation_bloc/confirmation_bloc.dart';
import 'package:neobis_smart_tailor/features/confirmation/presentation/bloc/timer_bloc/timer_bloc.dart';
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
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    double statusBarHeight = MediaQuery.of(context).padding.top;
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        title: Text(t.registration),
        titleTextStyle: AppTextStyle.title24.copyWith(fontSize: 20),
        centerTitle: true,
        backgroundColor: AppColors.background,
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          bottom: 50,
          left: AppProps.kPageMargin,
          right: AppProps.kPageMargin,
        ),
        child: Center(
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
              Form(
                key: _formKey,
                child: PinCodeField(validator: (value) {
                  if (value != '4444') {
                    return 'Ощибка';
                  }
                }),
              ),
              BlocBuilder<ConfirmationBloc, ConfirmationState>(
                builder: (context, state) {
                  return state.pinCode != 4 ? const TimerScreen() : Container();
                },
              ),
              // const Spacer(),
              // ElevatedButtonWidget(
              //   text: t.Enter,
              // ),
              // const SizedBox(height: AppProps.kPageMargin),
              // ElevatedButtonWidget(
              //   text: t.repeatSendCodeButton,
              // ),
            ],
          ),
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          _buildEnterButton(),
          const SizedBox(height: AppProps.kPageMargin),
          _buildRepeatCodeButton(),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  BlocBuilder<ConfirmationBloc, ConfirmationState> _buildEnterButton() {
    return BlocBuilder<ConfirmationBloc, ConfirmationState>(
      builder: (context, state) {
        return state.pinCode == null
            ? ElevatedButtonWidget(
                text: t.Enter,
              )
            : ElevatedButtonWidget(
                onTap: () {
                  if (_formKey.currentState!.validate()) {
                    AutoRouter.of(context).replaceNamed('/main');
                  }
                },
                text: t.Enter,
              );
      },
    );
  }

  BlocBuilder<TimerBloc, TimerState> _buildRepeatCodeButton() {
    return BlocBuilder<TimerBloc, TimerState>(
      builder: (context, state) {
        // print('BlocBuilder state: $state');
        return state.when(
          initial: (_) {
            // print('initial');
            return ElevatedButtonWidget(text: t.repeatSendCodeButton);
          },
          runInProgress: (_) {
            // print('inProgress');
            return ElevatedButtonWidget(text: t.repeatSendCodeButton);
          },
          runComplete: () {
            // print('runComplete');
            return Column(
              children: [
                ElevatedButtonWidget(
                  color: AppColors.white,
                  text: t.repeatSendCodeButton,
                  onTap: () {
                    context.read<TimerBloc>().add(const TimerEvent.started()); // print('ready');
                  },
                ),
              ],
            );
          },
        );
      },
    );
  }
}
