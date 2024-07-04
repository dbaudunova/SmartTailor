import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:neobis_smart_tailor/core/app/io_ui.dart';
import 'package:neobis_smart_tailor/core/app/router/app_routes.dart';
import 'package:neobis_smart_tailor/core/app/widgets/alert_dialog_style.dart';
import 'package:neobis_smart_tailor/core/app/widgets/app_bar_style.dart';
import 'package:neobis_smart_tailor/features/profile/presentation/widgets/exit_alert.dart';
import 'package:neobis_smart_tailor/features/profile/presentation/widgets/profile_button_style.dart';
import 'package:neobis_smart_tailor/features/profile/presentation/widgets/subscribe_container_style.dart';
import 'package:neobis_smart_tailor/gen/assets.gen.dart';

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
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 24,
                  backgroundColor: AppColors.yellow,
                  child: SvgPicture.asset(
                    Assets.icons.person,
                    width: AppProps.kBigMargin,
                    height: AppProps.kBigMargin,
                  ),
                ),
                const SizedBox(width: AppProps.kSmallMargin),
                _buildColumn(),
                const Spacer(),
                IconButton(
                  onPressed: () {
                    AutoRouter.of(context).push(const NotificationRoute());
                  },
                  icon: SvgPicture.asset(
                    Assets.icons.bell,
                  ),
                ),
              ],
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
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: ProfileButtonStyle(
                title: 'Личные данные',
                onPressed: () {
                  AutoRouter.of(context).push(const PersonalDataRoute());
                },
              ),
            ),
            const SizedBox(height: AppProps.kPageMargin),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: ProfileButtonStyle(
                title: 'Мои объявления',
                onPressed: () {
                  AutoRouter.of(context).push(const MyAnnouncementsRoute());
                },
              ),
            ),
            const SizedBox(height: AppProps.kPageMargin),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: ProfileButtonStyle(
                title: 'Мои покупки',
                onPressed: () {
                  AutoRouter.of(context).push(const MyPurchasesRoute());
                },
              ),
            ),
            if (_isHistoryOfOrdersButtonVisible) ...[
              const SizedBox(height: AppProps.kPageMargin),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: ProfileButtonStyle(
                  title: 'История заказов',
                  onPressed: () {
                    AutoRouter.of(context).push(const OrderHistoryRoute());
                  },
                ),
              ),
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

  Column _buildColumn() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Имя Фамилия',
          style: AppTextStyle.title24.copyWith(
            fontSize: 18,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          'Подписка оформлена!',
          style: AppTextStyle.title24.copyWith(
            fontSize: AppProps.kMediumMargin,
            fontWeight: FontWeight.w500,
          ),
        ),
        Text(
          'Срок до 1 августа 2024',
          style: AppTextStyle.title24.copyWith(
            fontSize: AppProps.kMediumMargin,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
