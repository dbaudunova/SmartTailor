import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:neobis_smart_tailor/core/app/io_ui.dart';

class MarketplaceCard extends StatelessWidget {
  final void Function() onTap;
  // final int tabIndex;
  final String? data;
  final Text? price;
  final String description;
  final String title;
  final String image;
  const MarketplaceCard({
    // required this.tabIndex,
    required this.description,
    required this.title,
    required this.onTap,
    required this.image,
    super.key,
    this.data,
    this.price,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(bottom: 16, left: 16, right: 16),
        padding: const EdgeInsets.only(bottom: 4, left: 8, right: 16, top: 4),
        height: 87,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColors.white,
        ),
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildImage(),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Flexible(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          child: Text(
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            title,
                            style: AppTextStyle.textField16,
                          ),
                        ),
                        if (price != null) price!,
                      ],
                    ),
                  ),
                  Flexible(
                    child: Text(
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      description,
                      style: AppTextStyle.textField16.copyWith(
                        fontSize: 14,
                        color: AppColors.greyText,
                      ),
                    ),
                  ),
                  const SizedBox(height: 0),
                  data != null
                      ? Text(
                          'Срок до: $data',
                          style: AppTextStyle.textField16.copyWith(
                            fontSize: 12,
                          ),
                        )
                      : Container(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container _buildImage() {
    return Container(
      height: 71,
      width: 80,
      margin: const EdgeInsets.only(
        right: 16,
      ),
      decoration: BoxDecoration(
          image: DecorationImage(image: CachedNetworkImageProvider(image), fit: BoxFit.fill),
          borderRadius: const BorderRadius.all(
            Radius.circular(10),
          )),
    );
  }
}
