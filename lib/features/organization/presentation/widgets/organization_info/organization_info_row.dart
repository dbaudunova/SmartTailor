import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:neobis_smart_tailor/core/app/io_ui.dart';

class OrganizationInfoRow extends StatelessWidget {
  const OrganizationInfoRow({
    this.isDateContainerVisible = true,
    super.key,
  });

  final bool isDateContainerVisible;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16).copyWith(top: 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: SizedBox(
              width: 92,
              height: 92,
              child: CachedNetworkImage(
                imageUrl:
                    'https://cdn.pixabay.com/photo/2023/10/30/16/54/sew-8353303_640.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Название организации',
                style: AppTextStyle.s20w400Orange.copyWith(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                'Мониторинг и управление\nшвейным производством',
                style: AppTextStyle.s12w400.copyWith(
                  color: AppColors.greyText,
                ),
              ),
              const SizedBox(height: 8),
              if (isDateContainerVisible)
                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                  decoration: BoxDecoration(
                    color: AppColors.buttonUnavailableBack,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Text(
                    'Создан 10 апреля 2024',
                    style: AppTextStyle.s12w400,
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }
}
