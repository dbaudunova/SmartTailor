import 'package:flutter/material.dart';
import 'package:neobis_smart_tailor/core/app/io_ui.dart';

class MarketplaceCard extends StatelessWidget {
  final void Function() onTap;
  final int tabIndex;
  final DateTime? data;
  final int? price;
  final String description;
  final String title;
  const MarketplaceCard({
    super.key,
    required this.tabIndex,
    this.data,
    this.price = 10,
    required this.description,
    required this.title,
    required this.onTap,
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
                  Container(
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
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: AppTextStyle.textField16,
                      ),
                      const SizedBox(height: 8),
                      Text(
                        description,
                        style: AppTextStyle.textField16.copyWith(
                          fontSize: 14,
                          color: AppColors.greyText,
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
              _buildPriceText()
            ]),
      ),
    );
  }

  Widget _buildPriceText() {
    if (tabIndex == 0) {
      return Text(
        '1000 сом',
        style: AppTextStyle.textField16.copyWith(
          color: AppColors.black.withOpacity(0.60),
        ),
      );
    } else if (tabIndex == 1) {
      return Text(
        '1000 сом',
        style: AppTextStyle.textField16.copyWith(
          color: AppColors.yellow,
        ),
      );
    } else {
      return Container();
    }
  }
}
