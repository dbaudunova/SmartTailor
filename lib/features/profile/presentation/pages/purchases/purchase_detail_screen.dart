import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:neobis_smart_tailor/core/app/io_ui.dart';
import 'package:neobis_smart_tailor/core/app/widgets/app_bar_style.dart';
import 'package:neobis_smart_tailor/features/marketplace/presentation/pages/marketplace_detail_screen/presentation/widgets/gallery_widget.dart';
import 'package:neobis_smart_tailor/features/marketplace/presentation/widgets/fab_button_widget.dart';
import 'package:neobis_smart_tailor/features/marketplace/presentation/widgets/search_order_sheet.dart';
import 'package:neobis_smart_tailor/features/profile/presentation/widgets/purchases/purchase_detail_button.dart';
import 'package:neobis_smart_tailor/features/profile/presentation/widgets/purchases/response_item.dart';

@RoutePage()
class PurchaseDetailScreen extends StatefulWidget {
  const PurchaseDetailScreen({super.key});

  @override
  State<PurchaseDetailScreen> createState() => _PurchaseDetailScreenState();
}

class _PurchaseDetailScreenState extends State<PurchaseDetailScreen> {
  bool _isDescriptionExpanded = true;
  bool _isSizeExpanded = false;
  bool _isResponseExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarStyle(
        title: 'Мои покупки',
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            AutoRouter.of(context).maybePop();
          },
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
          ),
        ),
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                const GalleryScreen(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16).copyWith(top: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildPriceAndOrder(),
                      const SizedBox(height: 16),
                      _buildOrderStatusRow(),
                      const SizedBox(height: 24),
                      _buildAuthorInfo(),
                      const SizedBox(height: 24),
                      _buildRow(
                        title: 'Описание',
                        isExpanded: _isDescriptionExpanded,
                        onPressed: () {
                          setState(() {
                            _isDescriptionExpanded = !_isDescriptionExpanded;
                          });
                        },
                      ),
                      if (_isDescriptionExpanded)
                        Text(
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
                          style: AppTextStyle.textField16.copyWith(
                            color: AppColors.greyText,
                          ),
                        ),
                      const SizedBox(height: 24),
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: PurchaseDetailButton(
                          child: _buildRow(
                            title: 'Размеры',
                            isExpanded: _isSizeExpanded,
                            onPressed: () {
                              setState(() {
                                _isSizeExpanded = !_isSizeExpanded;
                              });
                            },
                          ),
                        ),
                      ),
                      const SizedBox(height: 12),
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: PurchaseDetailButton(
                          child: _buildRow(
                            title: 'Отклики',
                            isExpanded: _isResponseExpanded,
                            onPressed: () {
                              setState(() {
                                _isResponseExpanded = !_isResponseExpanded;
                              });
                            },
                          ),
                        ),
                      ),
                      const SizedBox(height: 4),
                      if (_isResponseExpanded) _buildResponseContainer(),
                      const SizedBox(height: 16),
                    ],
                  ),
                ),
              ],
            ),
          ),
          FabButtonWidget(onTap: () {
            showModalBottomSheet<void>(
              context: context,
              builder: (BuildContext context) {
                return const SearchOrderSheet();
              },
            );
          }),
        ],
      ),
    );
  }

  Row _buildOrderStatusRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Статус заказа',
          style: AppTextStyle.textField16.copyWith(
            fontWeight: FontWeight.w600,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 32),
          child: Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: AppColors.lightOrange,
              borderRadius: BorderRadius.circular(8),
            ),
            child: const Text(
              'Отправка',
              style: AppTextStyle.s12w400,
            ),
          ),
        ),
      ],
    );
  }

  Row _buildPriceAndOrder() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Заказ №5',
          style: AppTextStyle.textField16.copyWith(
            fontWeight: FontWeight.w600,
          ),
        ),
        Text(
          '1000 сом',
          style: AppTextStyle.textField16.copyWith(
            color: AppColors.orange,
          ),
        ),
      ],
    );
  }

  Container _buildResponseContainer() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 10,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
            child: ResponseItem(
              onButtonPressed: () {},
            ),
          );
        },
      ),
    );
  }

  Row _buildRow({
    required String title,
    required bool isExpanded,
    required Function() onPressed,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title.toUpperCase(),
          style: AppTextStyle.textField16.copyWith(
            fontWeight: FontWeight.w500,
          ),
        ),
        IconButton(
          onPressed: onPressed,
          icon: Icon(
            isExpanded ? Icons.keyboard_arrow_up_rounded : Icons.keyboard_arrow_down_rounded,
            color: Colors.black,
          ),
        ),
      ],
    );
  }

  Row _buildAuthorInfo() {
    return Row(
      children: [
        const CircleAvatar(
          radius: 32,
          backgroundColor: AppColors.greyText,
        ),
        const SizedBox(width: 12),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              'Sandy Wilder Cheng',
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
