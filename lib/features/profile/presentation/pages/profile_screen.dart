import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:neobis_smart_tailor/core/app/io_ui.dart';
import 'package:neobis_smart_tailor/core/app/router/app_routes.dart';
import 'package:neobis_smart_tailor/core/app/widgets/alert_dialog_style.dart';
import 'package:neobis_smart_tailor/core/app/widgets/app_bar_style.dart';
import 'package:neobis_smart_tailor/features/profile/presentation/widgets/exit_alert.dart';
import 'package:neobis_smart_tailor/features/profile/presentation/widgets/profile_button_style.dart';
import 'package:neobis_smart_tailor/features/profile/presentation/widgets/subscribe_container_style.dart';
import 'package:neobis_smart_tailor/features/profile/presentation/widgets/user_info.dart';

@RoutePage()
class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool _isHistoryOfOrdersButtonVisible = false;
  bool _isSubscribeContainerVisible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarStyle(
        centerTitle: true,
        title: 'Профиль',
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: AppProps.kPageMargin)
            .copyWith(
          top: AppProps.kSmallMargin,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            UserInfo(
              secondRowText: 'Подписка оформлена!',
              thirdRowText: 'Срок до 1 августа 2024',
              onIconPressed: () {
                AutoRouter.of(context).push(const NotificationRoute());
              },
            ),
            const SizedBox(height: AppProps.kTwentyMargin),
            if (_isSubscribeContainerVisible)
              SubscribeContainerStyle(
                buttonTitle: 'Отправить запрос',
                onButtonPressed: () {
                  _buildShowDialog(context);
                },
              ),
            const SizedBox(height: AppProps.kPageMargin),
            _buildProfileButton(context, 'Личные данные', const PersonalDataRoute()),
            const SizedBox(height: AppProps.kPageMargin),
            _buildProfileButton(context, 'Мои объявления', const MyAnnouncementsRoute()),
            const SizedBox(height: AppProps.kPageMargin),
            _buildProfileButton(context, 'Мои покупки', const MyPurchasesRoute()),
            if (_isHistoryOfOrdersButtonVisible) ...[
              const SizedBox(height: AppProps.kPageMargin),
              _buildProfileButton(context, 'История заказов', const OrderHistoryRoute()),
              const SizedBox(height: AppProps.kPageMargin),
              _buildProfileButton(context, 'Организация', const ProfileOrganizationRoute()),
            ],
            const Spacer(),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: ElevatedButtonWidget(
                text: 'Выйти из профиля',
                onTap: () {
                  _buildExitDialog(context);
                },
              ),
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }

  Widget _buildProfileButton(BuildContext context, String title, PageRouteInfo route) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: ProfileButtonStyle(
        title: title,
        onPressed: () {
          AutoRouter.of(context).push(route);
        },
      ),
    );
  }

  void _buildExitDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return ExitAlert(
          title: 'Вы действительно хотите выйти?',
          onYesButton: () {
            AutoRouter.of(context).push(const RegistrationRoute());
          },
          onNoButton: () {
            AutoRouter.of(context).maybePop();
          },
        );
      },
    );
  }

  void _buildShowDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: _alertDialogBuilder,
    );
  }

  Widget _alertDialogBuilder(context) {
    return AlertDialogStyle(
      title: 'Ура!',
      content: 'Подписка уже в пути!',
      buttonText: 'Понятно',
      onButtonPressed: () {
        setState(() {
          _isHistoryOfOrdersButtonVisible = true;
          _isSubscribeContainerVisible = false;
        });
        AutoRouter.of(context).maybePop();
      },
    );
  }
}
