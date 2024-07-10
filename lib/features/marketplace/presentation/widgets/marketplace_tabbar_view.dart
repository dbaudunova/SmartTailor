import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:neobis_smart_tailor/core/app/io_ui.dart';
import 'package:neobis_smart_tailor/core/app/router/app_routes.dart';
import 'package:neobis_smart_tailor/features/marketplace/presentation/pages/marketplace_detail_screen/presentation/widgets/custom_dropdown_widget.dart';
import 'package:neobis_smart_tailor/features/marketplace/presentation/widgets/marketplace_card_widget.dart';
import 'package:neobis_smart_tailor/gen/strings.g.dart';

class MarketplaceTabBarView extends StatelessWidget {
  const MarketplaceTabBarView({
    required this.tabIndex,
    super.key,
  });

  final int tabIndex;

  @override
  Widget build(BuildContext context) {
    if (tabIndex == 0) {
      return ListView.builder(
        shrinkWrap: false,
        itemCount: 10,
        itemBuilder: (context, index) {
          return MarketplaceCard(
            onTap: () {
              AutoRouter.of(context).push(
                MarketplaceDetailRoute(
                  sizeWidget: const CustomDropdown(),
                  title: t.orderDetail,
                  acceptOrderButton: true,
                  buyButton: true,
                  date: DateTime(2024, 4, 10),
                ),
              );
            },
            tabIndex: tabIndex,
            description: t.orderDesc,
            title: t.order,
            data: DateTime(2014, 4, 10),
            price: Text(
              '2000 сом',
              style: AppTextStyle.textField16.copyWith(
                color: AppColors.black.withOpacity(0.60),
              ),
            ),
          );
        },
      );
    } else if (tabIndex == 1) {
      return ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return MarketplaceCard(
            onTap: () {
              AutoRouter.of(context).push(
                MarketplaceDetailRoute(
                  title: t.equipmentDetail,
                  acceptOrderButton: false,
                  buyButton: true,
                ),
              );
            },
            title: t.nitki,
            price: Text(
              '1000 сом',
              style: AppTextStyle.textField16.copyWith(
                color: AppColors.yellow,
              ),
            ),
            description: t.equipmentDesk,
            tabIndex: tabIndex,
          );
        },
      );
    } else {
      return ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return MarketplaceCard(
            onTap: () {
              AutoRouter.of(context).push(
                MarketplaceDetailRoute(
                  title: t.service,
                  acceptOrderButton: false,
                  buyButton: false,
                ),
              );
            },
            description: t.serviceDesc,
            title: t.needIronman,
            tabIndex: tabIndex,
          );
        },
      );
    }
  }
}
