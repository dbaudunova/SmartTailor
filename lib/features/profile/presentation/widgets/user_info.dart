import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:neobis_smart_tailor/core/app/io_ui.dart';
import 'package:neobis_smart_tailor/features/profile/domain/model/profile_entity.dart';
import 'package:neobis_smart_tailor/gen/assets.gen.dart';

class UserInfo extends StatelessWidget {
  const UserInfo({
    this.onIconPressed,
    this.showBellIcon = true,
    super.key,
    this.secondRowText,
    this.thirdRowText,
    this.onTap,
    this.profileEntity,
  });

  final String? secondRowText;
  final String? thirdRowText;
  final VoidCallback? onIconPressed, onTap;
  final bool showBellIcon;
  final ProfileEntity? profileEntity;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: onTap,
          child: CircleAvatar(
            radius: 24,
            backgroundColor: AppColors.yellow,
            backgroundImage: profileEntity?.imagePath != null
                ? CachedNetworkImageProvider(profileEntity?.imagePath ?? '')
                : null,
            child: profileEntity?.imagePath == null
                ? SvgPicture.asset(
              Assets.icons.person,
              width: AppProps.kBigMargin,
              height: AppProps.kBigMargin,
            )
                : null,
          ),
        ),
        const SizedBox(width: AppProps.kSmallMargin),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '${profileEntity?.name} ${profileEntity?.surname}',
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
