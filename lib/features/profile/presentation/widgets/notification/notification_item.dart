import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:neobis_smart_tailor/core/app/io_ui.dart';
import 'package:neobis_smart_tailor/gen/assets.gen.dart';

class NotificationItem extends StatelessWidget {
  final String? title;
  final String? body;
  final String? date;
  final String? imageUrl;
  final String? data;
  const NotificationItem({
    super.key,
    this.title,
    this.body,
    this.date,
    this.imageUrl,
    this.data,
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
                    title!,
                    style: AppTextStyle.text14.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    date ?? 'dfdf',
                    style: AppTextStyle.s12w400.copyWith(
                      color: AppColors.greyText,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 4),
              Text(
                body!,
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
