import 'package:flutter/material.dart';
import 'package:neobis_smart_tailor/core/app/io_ui.dart';

class CurrentOrdersContainer extends StatelessWidget {
  const CurrentOrdersContainer({
    required this.price,
    required this.orderNumber,
    required this.orderStatus,
    required this.name,
    required this.description,
    this.onTap,
    super.key,
  });

  final VoidCallback? onTap;
  final int? price;
  final String? orderNumber;
  final String? orderStatus;
  final String? name;
  final String? description;

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
              const SizedBox(width: 8),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Заказ № ${orderNumber!}',
                          style: AppTextStyle.textField16.copyWith(
                            color: AppColors.listGreen,
                          ),
                        ),
                        orderStatus != null
                            ? Text(
                                orderStatus!,
                                style: AppTextStyle.textField16.copyWith(
                                  color: AppColors.listGreen,
                                ),
                              )
                            : const SizedBox.shrink(),
                      ],
                    ),
                    const SizedBox(height: 4),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          name!,
                          style: AppTextStyle.textField16.copyWith(
                            color: AppColors.darkGrey,
                          ),
                        ),
                        Text(
                          price.toString(),
                          style: AppTextStyle.textField16.copyWith(
                            color: AppColors.orange,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 4),
                    Text(
                      description!,
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
