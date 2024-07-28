import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:neobis_smart_tailor/core/app/io_ui.dart';
import 'package:neobis_smart_tailor/core/app/router/app_routes.dart';
import 'package:neobis_smart_tailor/features/marketplace/presentation/bloc/marketplace_bloc.dart';
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
    return BlocBuilder<MarketplaceBloc, MarketplaceState>(builder: (context, state) {
      if (tabIndex == 0) {
        var orders = state.orders;
        return ListView.builder(
          shrinkWrap: false,
          itemCount: orders.length,
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
              description: orders[index].orderDescription!,
              title: orders[index].name!,
              data: DateTime(2014, 4, 10),
              price: Text(
                orders[index].price!.toString(),
                style: AppTextStyle.textField16.copyWith(
                  color: AppColors.black.withOpacity(0.60),
                ),
              ),
            );
          },
        );
      } else if (tabIndex == 1) {
        var equipments = state.equipments;
        return ListView.builder(
          itemCount: equipments.length,
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
              title: equipments[index].name!,
              price: Text(
                equipments[index].price!.toString(),
                style: AppTextStyle.textField16.copyWith(
                  color: AppColors.yellow,
                ),
              ),
              description: equipments[index].description!,
              tabIndex: tabIndex,
            );
          },
        );
      } else {
        var services = state.equipments;
        return ListView.builder(
          itemCount: services.length,
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
              description: services[index].description!,
              title: services[index].name!,
              tabIndex: tabIndex,
            );
          },
        );
      }
    });
  }
}
