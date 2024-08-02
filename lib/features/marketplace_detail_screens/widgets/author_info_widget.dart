import 'package:flutter/material.dart';
import 'package:neobis_smart_tailor/core/app/io_ui.dart';

class AuthorInfoWidget extends StatelessWidget {
  final String authorName;
  final String authorImage;
  const AuthorInfoWidget({
    required this.authorName,
    required this.authorImage,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            CircleAvatar(
              maxRadius: 32,
              backgroundImage: NetworkImage(authorImage),
            ),
            const SizedBox(width: 12),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  authorName,
                  style: AppTextStyle.textField16.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  height: 4,
                ),
                const Text(
                  'Автор объявления',
                  style: AppTextStyle.text14,
                )
              ],
            ),
          ],
        ),
        const Padding(
          padding: EdgeInsets.only(right: AppProps.kPageMargin),
          child: Icon(
            size: 24,
            Icons.phone,
            color: AppColors.listGreen,
          ),
        )
      ],
    );
  }
}
