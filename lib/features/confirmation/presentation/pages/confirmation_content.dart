import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:neobis_smart_tailor/core/app/io_ui.dart';
import 'package:neobis_smart_tailor/core/network/entity/state_status.dart';
import 'package:neobis_smart_tailor/features/confirmation/presentation/bloc/confirmation_bloc/confirmation_bloc.dart';
import 'package:neobis_smart_tailor/features/confirmation/presentation/bloc/timer_bloc/timer_bloc.dart';
import 'package:neobis_smart_tailor/features/confirmation/presentation/widgets/pin_code_widget.dart';
import 'package:neobis_smart_tailor/features/confirmation/presentation/widgets/timer_content.dart';
import 'package:neobis_smart_tailor/gen/strings.g.dart';
import 'package:neobis_smart_tailor/injection/injection.dart';

class ConfirmationContent extends StatefulWidget {
  final String? email;
  const ConfirmationContent({
    required this.email,
    super.key,
  });

  @override
  State<ConfirmationContent> createState() => _ConfirmationContentState();
}

class _ConfirmationContentState extends State<ConfirmationContent> {
  final _buttonEnabledNotifier = ValueNotifier<bool>(false);
  final pinCodeController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    pinCodeController.addListener(_updateButtonState);
  }

  void _updateButtonState() {
    _buttonEnabledNotifier.value = pinCodeController.text.length == 4;
  }

  @override
  Widget build(BuildContext context) {
    var statusBarHeight = MediaQuery.of(context).padding.top;
    return MultiBlocProvider(
      providers: [
        BlocProvider.value(
          value: getIt<TimerBloc>(),
        ),
        BlocProvider.value(
          value: getIt<ConfirmationBloc>(),
        ),
      ],
      child: BlocBuilder<ConfirmationBloc, ConfirmationState>(
        builder: (context, state) {
          return Scaffold(
            resizeToAvoidBottomInset: true,
            appBar: AppBar(
              automaticallyImplyLeading: false,
              title: Text(t.registration),
              titleTextStyle: AppTextStyle.title24.copyWith(fontSize: 20),
              centerTitle: true,
              backgroundColor: AppColors.background,
            ),
            body: Padding(
              padding: const EdgeInsets.only(
                left: AppProps.kPageMargin,
                right: AppProps.kPageMargin,
              ),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 72 + statusBarHeight),
                    _buildText(),
                    const SizedBox(height: 24),
                    _buildPinCode(),
                    _buildTimer(),
                  ],
                ),
              ),
            ),
            floatingActionButton: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                _buildButton(state),
                const SizedBox(height: AppProps.kPageMargin),
                _buildRepeatCodeButton(),
              ],
            ),
            floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
          );
        },
      ),
    );
  }

  Widget _buildTimer() {
    return BlocBuilder<ConfirmationBloc, ConfirmationState>(
      builder: (context, state) {
        return pinCodeController.text.length != 4
            ? const TimerContent()
            : const SizedBox(
                width: double.infinity,
              );
      },
    );
  }

  Form _buildPinCode() {
    return Form(
      key: _formKey,
      child: PinCodeField(
        controller: pinCodeController,
      ),
    );
  }

  Widget _buildText() {
    return BlocBuilder<ConfirmationBloc, ConfirmationState>(
      builder: (context, state) {
        return state.stateStatus.when(
          initial: () => Text(
            textAlign: TextAlign.center,
            t.sendPinCode,
            style: AppTextStyle.textField16,
          ),
          loading: () => const CircularProgressIndicator(),
          success: (_) => Text(
            textAlign: TextAlign.center,
            t.sendPinCode,
            style: AppTextStyle.textField16,
          ),
          failure: (msg) => Text(
            textAlign: TextAlign.center,
            t.repeatSendCode,
            style: AppTextStyle.textField16,
          ),
        );
      },
    );
  }

  Widget _buildButton(ConfirmationState state) {
    return ValueListenableBuilder<bool>(
      valueListenable: _buttonEnabledNotifier,
      builder: (context, isButtonEnabled, _) {
        return BlocBuilder<ConfirmationBloc, ConfirmationState>(
          builder: (context, state) {
            return state.stateStatus != const StateStatus.loading()
                ? ElevatedButtonWidget(
                    text: t.Enter,
                    onTap: isButtonEnabled
                        ? () {
                            if (_formKey.currentState!.validate()) {
                              context.read<ConfirmationBloc>().add(
                                    ConfirmationEvent.login(
                                      email: widget.email!,
                                      pinCode: pinCodeController.text,
                                    ),
                                  );
                            }
                          }
                        : null,
                  )
                : ElevatedButtonWidget(
                    text: t.Enter,
                    onTap: null,
                  );
          },
        );
      },
    );
  }

  Widget _buildRepeatCodeButton() {
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
            return Column(
              children: [
                ElevatedButtonWidget(
                  color: AppColors.white,
                  text: t.repeatSendCodeButton,
                  onTap: () {
                    context.read<ConfirmationBloc>().add(ConfirmationEvent.resendPin(email: widget.email!));
                    context.read<TimerBloc>().add(const TimerEvent.started());
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
