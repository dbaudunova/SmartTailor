import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:neobis_smart_tailor/core/app/io_ui.dart';

class AuthorInfo extends StatelessWidget {
  const AuthorInfo({
    super.key,
    this.authorImage,
    this.name,
  });

  final String? authorImage;
  final String? name;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
         CircleAvatar(
          radius: 32,
          backgroundColor: AppColors.greyText,
          backgroundImage: CachedNetworkImageProvider(authorImage ?? ''),
        ),
        const SizedBox(width: 12),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              name ?? '',
              style: AppTextStyle.text14.copyWith(
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              'Автор объявления',
              style: AppTextStyle.text14.copyWith(
                color: AppColors.greyText,
              ),
            )
          ],
        ),
        const Spacer(),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.phone,
            color: AppColors.listGreen,
          ),
        ),
      ],
    );
  }
}
