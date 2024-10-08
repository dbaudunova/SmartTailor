import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:neobis_smart_tailor/core/app/io_ui.dart';
import 'package:neobis_smart_tailor/core/network/entity/state_status.dart';
import 'package:neobis_smart_tailor/features/authorization/presentation/blocs/login_bloc/login_bloc.dart';
import 'package:neobis_smart_tailor/gen/assets.gen.dart';
import 'package:neobis_smart_tailor/gen/strings.g.dart';

class EmailInputContent extends StatefulWidget {
  const EmailInputContent({super.key});

  @override
  State<EmailInputContent> createState() => EmailInputContentState();
}

class EmailInputContentState extends State<EmailInputContent> {
  final emailController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  String get email => emailController.text;

  @override
  void dispose() {
    emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var statusBarHeight = MediaQuery.of(context).padding.top;
    return BlocBuilder<LoginBloc, LoginState>(
      builder: (context, state) {
        return Scaffold(
          resizeToAvoidBottomInset: true,
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(AppProps.kPageMargin).copyWith(bottom: 96),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(height: 56 + statusBarHeight),
                  Center(
                    child: SvgPicture.asset(Assets.icons.logo),
                  ),
                  const SizedBox(height: 60),
                  Form(
                    key: _formKey,
                    child: TextFormFieldWidget(
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Поле не может быть пустым';
                        }
                        return null;
                      },
                      controller: emailController,
                      hintText: t.emailHintText,
                    ),
                  ),
                ],
              ),
            ),
          ),
          floatingActionButton: _buildButtons(),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        );
      },
    );
  }

  Widget _buildButtons() {
    return BlocBuilder<LoginBloc, LoginState>(
      builder: (context, state) {
        return state.stateStatus != const StateStatus.loading()
            ? _buildEnabledButtons(context)
            : _buildDisablesButtons();
      },
    );
  }

  Column _buildDisablesButtons() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ElevatedButtonWidget(
          text: t.Enter,
          onTap: null,
        ),
        const SizedBox(height: 16),
        ElevatedButtonWidget(
          text: t.register,
          color: AppColors.buttonUnavailableBack,
          onTap: null,
        ),
      ],
    );
  }

  Column _buildEnabledButtons(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ElevatedButtonWidget(
          text: t.Enter,
          onTap: () {
            if (_formKey.currentState!.validate()) {
              context.read<LoginBloc>().add(
                    LoginEvent.sendPinToEmail(
                      email: emailController.text,
                    ),
                  );
            }
          },
        ),
        const SizedBox(height: 16),
        ElevatedButtonWidget(
          text: t.register,
          color: AppColors.buttonUnavailableBack,
          onTap: () {
            AutoRouter.of(context).pushNamed('/registration');
          },
        ),
      ],
    );
  }
}
