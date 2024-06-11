import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:neobis_smart_tailor/core/app/io_ui.dart';
import 'package:neobis_smart_tailor/core/app/router/app_routes.dart';
import 'package:neobis_smart_tailor/core/app/widgets/app_bar_style.dart';
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarStyle(
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
                SizedBox(
                  height: 48,
                  width: 48,
                  child: CircleAvatar(
                    backgroundColor: AppColors.yellow,
                    child: SvgPicture.asset(
                      Assets.icons.person,
                      width: AppProps.kBigMargin,
                      height: AppProps.kBigMargin,
                    ),
                  ),
                ),
                const SizedBox(width: AppProps.kSmallMargin),
                _buildColumn(),
              ],
            ),
            const SizedBox(height: AppProps.kTwentyMargin),
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
                onPressed: () {},
              ),
            ),
            const SizedBox(height: AppProps.kPageMargin),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: ProfileButtonStyle(
                title: 'Мои объявления',
                onPressed: () {},
              ),
            ),
            const SizedBox(height: AppProps.kPageMargin),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: ProfileButtonStyle(
                title: 'Мои покупки',
                onPressed: () {
                  context.router.push(const MyPurchasesRoute());
                },
              ),
            ),
            if (_isHistoryOfOrdersButtonVisible) ...[
              const SizedBox(height: AppProps.kPageMargin),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: ProfileButtonStyle(
                  title: 'История заказов',
                  onPressed: () {},
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }

  void _buildShowDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: _alertDialogBuilder,
    );
  }

  Widget _alertDialogBuilder(context) {
    return CupertinoAlertDialog(
      title: Text(
        'Ура!',
        style: AppTextStyle.textField16.copyWith(
          fontWeight: FontWeight.bold,
        ),
      ),
      content: Padding(
        padding: const EdgeInsets.only(top: 8),
        child: Text(
          'Подписка уже в пути!',
          style: AppTextStyle.textField16.copyWith(
            fontSize: 14,
          ),
        ),
      ),
      actions: [
        TextButton(
          onPressed: () {
            setState(() {
              _isHistoryOfOrdersButtonVisible = true;
            });
            AutoRouter.of(context).maybePop();
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 12),
            child: Text(
              'Понятно',
              style: AppTextStyle.textField16.copyWith(
                color: AppColors.modalBlue,
              ),
            ),
          ),
        ),
      ],
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
          'Изменить фото профиля',
          style: AppTextStyle.title24.copyWith(
            fontSize: AppProps.kMediumMargin,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
