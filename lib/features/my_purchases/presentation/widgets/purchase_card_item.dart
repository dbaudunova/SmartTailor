import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:neobis_smart_tailor/core/app/io_ui.dart';

class PurchaseCardItem extends StatelessWidget {
  const PurchaseCardItem({
    super.key,
    required this.purchaseImage,
    required this.orderNumber,
    required this.price,
    required this.authorName,
    required this.description, required this.onTap,
  });

  final String purchaseImage;
  final String orderNumber;
  final String price;
  final String authorName;
  final String description;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        elevation: 0,
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8).copyWith(right: 16),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 86,
                height: 104,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: CachedNetworkImage(
                    imageUrl: purchaseImage,
                  ),
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          orderNumber,
                          style: AppTextStyle.textField16,
                        ),
                        const Spacer(),
                        Text(
                          price,
                          style: AppTextStyle.textField16.copyWith(
                            color: AppColors.orange,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        const SizedBox(
                          width: 30,
                          height: 30,
                          child: CircleAvatar(
                            backgroundColor: AppColors.greyText,
                          ),
                        ),
                        const SizedBox(width: 8),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              authorName,
                              style: AppTextStyle.s12w400,
                            ),
                            Text(
                              'Автор объявления',
                              style: AppTextStyle.s12w400
                                  .copyWith(color: AppColors.greyText),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Text(
                      description,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: AppTextStyle.s12w400
                          .copyWith(color: AppColors.greyText),
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
