import 'package:cached_network_image/cached_network_image.dart';
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
        Expanded(
          child: Row(
            children: [
              CircleAvatar(
                maxRadius: 32,
                backgroundImage: CachedNetworkImageProvider(authorImage),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      authorName,
                      style: AppTextStyle.textField16.copyWith(fontWeight: FontWeight.w600, height: 1.2),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 4),
                    const Text(
                      'Автор объявления',
                      style: AppTextStyle.text14,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(right: AppProps.kPageMargin),
          child: Icon(
            size: 24,
            Icons.phone,
            color: AppColors.listGreen,
          ),
        ),
      ],
    );
  }
}
