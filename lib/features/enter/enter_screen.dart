import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:neobis_smart_tailor/core/app/io_ui.dart';
import 'package:neobis_smart_tailor/core/app/router/app_routes.dart';
import 'package:neobis_smart_tailor/gen/assets.gen.dart';
import 'package:neobis_smart_tailor/gen/strings.g.dart';

@RoutePage()
class EnterScreen extends StatelessWidget {
  const EnterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(Assets.images.background.path),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            const Spacer(),
            _buildText(),
            const Spacer(),
            _buildButtons(context),
          ],
        ),
      ),
    );
  }

  Align _buildText() {
    return Align(
      alignment: Alignment.center,
      child: Expanded(
        child: Column(
          children: [
            Container(
              height: 110,
              width: 110,
              decoration: const BoxDecoration(
                color: AppColors.yellow,
                borderRadius: BorderRadius.all(
                  Radius.circular(16.57),
                ),
              ),
              child: const Center(child: Text('ST', style: AppTextStyle.bold40)),
            ),
            const SizedBox(height: 36),
            Text(
              t.SmartTailor,
              style: AppTextStyle.bold40.copyWith(
                color: AppColors.white,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              textAlign: TextAlign.center,
              t.enterText,
              style: AppTextStyle.title24.copyWith(
                fontWeight: FontWeight.w300,
                color: AppColors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Align _buildButtons(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 32.0),
        child: Column(
          children: [
            ElevatedButtonWidget(
              text: t.Enter,
              onTap: () {
                AutoRouter.of(context).push(const ConfirmationRoute());
              },
            ),
            const SizedBox(height: 16),
            ElevatedButtonWidget(
                color: AppColors.white,
                text: t.registration,
                onTap: () {
                  AutoRouter.of(context).push(const RegistrationRoute());
                }),
          ],
        ),
      ),
    );
  }
}
