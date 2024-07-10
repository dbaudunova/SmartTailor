import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:neobis_smart_tailor/core/app/io_ui.dart';
import 'package:neobis_smart_tailor/gen/assets.gen.dart';
import 'package:neobis_smart_tailor/gen/strings.g.dart';

@RoutePage()
class EmailInputScreen extends StatefulWidget {
  const EmailInputScreen({super.key});

  @override
  State<EmailInputScreen> createState() => _EmailInputScreenState();
}

class _EmailInputScreenState extends State<EmailInputScreen> {
  final emailController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double statusBarHeight = MediaQuery.of(context).padding.top;
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
  }

  Column _buildButtons() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ElevatedButtonWidget(
          text: t.Enter,
          onTap: () {
            if (_formKey.currentState!.validate()) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Processing Data')),
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
