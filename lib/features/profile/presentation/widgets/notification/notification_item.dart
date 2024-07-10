import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:neobis_smart_tailor/core/app/io_ui.dart';
import 'package:neobis_smart_tailor/gen/assets.gen.dart';

class NotificationItem extends StatelessWidget {
  const NotificationItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 8,
          height: 8,
          decoration: const BoxDecoration(
            color: AppColors.orange,
            shape: BoxShape.circle,
          ),
        ),
        const SizedBox(width: 12),
        CircleAvatar(
          radius: 16,
          backgroundColor: AppColors.lightBLue,
          child: SvgPicture.asset(
            Assets.icons.person,
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Объявление №23',
                    style: AppTextStyle.text14.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    'Сегодня, в 11:34',
                    style: AppTextStyle.s12w400.copyWith(
                      color: AppColors.greyText,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 4),
              Text(
                'User 21 откликнулся на ваше объявление',
                style: AppTextStyle.s12w400.copyWith(
                  color: AppColors.greyText,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
