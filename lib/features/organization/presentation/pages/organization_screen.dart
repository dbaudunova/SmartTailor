import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:neobis_smart_tailor/core/app/io_ui.dart';
import 'package:neobis_smart_tailor/core/app/router/app_routes.dart';
import 'package:neobis_smart_tailor/core/app/widgets/app_bar_style.dart';

@RoutePage()
class OrganizationScreen extends StatefulWidget {
  const OrganizationScreen({super.key});

  @override
  State<OrganizationScreen> createState() => _OrganizationScreenState();
}

class _OrganizationScreenState extends State<OrganizationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarStyle(
        title: 'Организация',
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Stack(
          children: [
            Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Тут еще нет организаций',
                    style: AppTextStyle.s20w400Orange.copyWith(
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    textAlign: TextAlign.center,
                    'Создайте свою организацию\nи добавьте своих сотрудников',
                    style: AppTextStyle.textField16.copyWith(
                      color: AppColors.greyText,
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 16,
              left: 0,
              right: 0,
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: ElevatedButtonWidget(
                  text: 'Создать',
                  onTap: () {
                    AutoRouter.of(context)
                        .push(const CreateOrganizationRoute());
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
