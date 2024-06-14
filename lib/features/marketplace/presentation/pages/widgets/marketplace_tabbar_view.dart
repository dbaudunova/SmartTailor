import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:neobis_smart_tailor/core/app/router/app_routes.dart';
import 'package:neobis_smart_tailor/features/marketplace/presentation/pages/widgets/marketplace_card_widget.dart';
import 'package:neobis_smart_tailor/gen/strings.g.dart';

class MarketplaceTabBarView extends StatelessWidget {
  const MarketplaceTabBarView({
    super.key,
    required this.tabController,
  });

  final TabController tabController;

  @override
  Widget build(BuildContext context) {
    return TabBarView(
      controller: tabController,
      children: [
        ListView.builder(
            shrinkWrap: false,
            itemCount: 10,
            itemBuilder: (context, index) {
              return MarketplaceCard(
                onTap: () {
                  AutoRouter.of(context).push(
                    MarketplaceDetailRoute(
                      title: t.orderDetail,
                      acceptOrderButton: true,
                      buyButton: true,
                      date: DateTime(2024, 4, 10),
                    ),
                  );
                },
                tabController: tabController,
                description: t.orderDesc,
                title: t.order,
                data: DateTime(2014, 4, 10),
                price: 1000,
              );
            }),
        ListView.builder(
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
                price: 2000,
                description: t.equipmentDesk,
                tabController: tabController,
              );
            }),
        ListView.builder(
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
                tabController: tabController,
              );
            }),
      ],
    );
  }
}
