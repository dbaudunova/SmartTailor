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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(AppProps.kPageMargin),
          child: Column(
            children: [
              const SizedBox(height: 56),
              Center(
                child: SvgPicture.asset(Assets.icons.logo),
              ),
              const SizedBox(height: 60),
              TextFormFieldWidget(
                controller: emailController,
                hintText: t.emailHintText,
              ),
              ElevatedButtonWidget(
                text: t.Enter,
                onTap: () {},
              ),
              const SizedBox(height: 16),
              ElevatedButtonWidget(
                text: t.register,
                color: AppColors.buttonUnavailableBack,
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
