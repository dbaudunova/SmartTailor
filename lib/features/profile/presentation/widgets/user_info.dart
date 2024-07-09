import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:neobis_smart_tailor/core/app/io_ui.dart';
import 'package:neobis_smart_tailor/gen/assets.gen.dart';

class UserInfo extends StatelessWidget {
  const UserInfo({
    this.onIconPressed,
    this.showBellIcon = true,
    super.key,
    this.secondRowText,
    this.thirdRowText,
  });

  final String? secondRowText;
  final String? thirdRowText;
  final VoidCallback? onIconPressed;
  final bool showBellIcon;

  @override
  Widget build(BuildContext context) {
    return Row(
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
        Column(
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
              secondRowText ?? '',
              style: AppTextStyle.title24.copyWith(
                fontSize: AppProps.kMediumMargin,
                fontWeight: FontWeight.w500,
              ),
            ),
            if (thirdRowText?.isNotEmpty ?? false)
              Text(
                thirdRowText!,
                style: AppTextStyle.title24.copyWith(
                  fontSize: AppProps.kMediumMargin,
                  fontWeight: FontWeight.w500,
                ),
              ),
          ],
        ),
        const Spacer(),
        if (showBellIcon)
          IconButton(
            onPressed: onIconPressed,
            icon: SvgPicture.asset(
              Assets.icons.bell,
            ),
          ),
      ],
    );
  }
}
