import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:neobis_smart_tailor/core/app/io_ui.dart';
import 'package:neobis_smart_tailor/features/profile/domain/model/announcement_entity.dart';
import 'package:neobis_smart_tailor/features/profile/domain/model/announcement_type.dart';

class AnnouncementsContainer extends StatelessWidget {
  const AnnouncementsContainer({
    this.onTap,
    super.key,
    this.price,
    this.announcement,
  });

  final VoidCallback? onTap;
  final String? price;
  final AnnouncementEntity? announcement;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Row(
            children: [
              SizedBox(
                width: 72,
                height: 68,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: CachedNetworkImage(
                      imageUrl: announcement?.imagePath ?? '',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          typeFromString(announcement?.type).translated,
                          style: AppTextStyle.textField16.copyWith(
                            color: typeColor(
                              typeFromString(
                                announcement?.type,
                              ),
                            ),
                          ),
                        ),
                        Text(
                          price ?? '',
                          style: AppTextStyle.textField16.copyWith(
                            color: AppColors.orange,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 4),
                    Text(
                      announcement?.name ?? '',
                      style: AppTextStyle.textField16.copyWith(
                        color: AppColors.darkGrey,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      announcement?.description ?? '',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: AppTextStyle.s12w400.copyWith(
                        color: AppColors.greyText,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
