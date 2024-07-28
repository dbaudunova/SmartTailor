import 'package:flutter/material.dart';
import 'package:neobis_smart_tailor/core/app/io_ui.dart';

class MarketplaceCard extends StatelessWidget {
  final void Function() onTap;
  final int tabIndex;
  final DateTime? data;
  final Text? price;
  final String description;
  final String title;
  const MarketplaceCard({
    required this.tabIndex,
    required this.description,
    required this.title,
    required this.onTap,
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
        padding: const EdgeInsets.only(bottom: 8, left: 8, right: 16, top: 8),
        height: 87,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColors.white,
        ),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildImage(),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 200,
                        child: Text(
                          maxLines: 1,
                          title,
                          style: AppTextStyle.textField16,
                        ),
                      ),
                      const SizedBox(height: 8),
                      SizedBox(
                        width: 200,
                        child: Text(
                          maxLines: 1,
                          description,
                          style: AppTextStyle.textField16.copyWith(
                            fontSize: 14,
                            color: AppColors.greyText,
                          ),
                        ),
                      ),
                      const SizedBox(height: 8),
                      tabIndex == 0
                          ? Text(
                              data.toString(),
                              style: AppTextStyle.textField16.copyWith(
                                fontSize: 12,
                              ),
                            )
                          : Container(),
                    ],
                  ),
                ],
              ),
              if (price != null) Flexible(child: price!),
            ]),
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
      decoration: const BoxDecoration(
          color: AppColors.error,
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          )),
    );
  }
}
