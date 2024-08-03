import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:neobis_smart_tailor/core/app/io_ui.dart';
import 'package:neobis_smart_tailor/core/app/router/app_routes.dart';
import 'package:neobis_smart_tailor/features/marketplace/presentation/bloc/marketplace_bloc.dart';
import 'package:neobis_smart_tailor/features/marketplace/presentation/widgets/marketplace_card_widget.dart';

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
        return orders.isNotEmpty
            ? ListView.builder(
                shrinkWrap: false,
                itemCount: orders.length,
                itemBuilder: (context, index) {
                  // print(orders[index].);
                  return MarketplaceCard(
                    onTap: () {
                      AutoRouter.of(context).push(
                        OrderDetailRoute(
                          id: orders[index].id!,
                        ),
                      );
                    },
                    image: orders[index].equipmentImageUrl!,
                    tabIndex: tabIndex,
                    description: orders[index].description!,
                    title: orders[index].name!,
                    // data: orders[index].dateOfExecution!,
                    price: Text(
                      '${orders[index].price!} сом',
                      style: AppTextStyle.textField16.copyWith(
                        color: AppColors.black.withOpacity(0.60),
                      ),
                    ),
                  );
                },
              )
            : _buildEmptyText();
      } else if (tabIndex == 1) {
        var equipments = state.equipments;
        return equipments.isNotEmpty
            ? ListView.builder(
                itemCount: equipments.length,
                itemBuilder: (context, index) {
                  return MarketplaceCard(
                    onTap: () {
                      AutoRouter.of(context).push(
                        EquipmentDetailRoute(
                          id: equipments[index].id!,
                        ),
                      );
                    },
                    image: equipments[index].equipmentImageUrl!,
                    title: equipments[index].name!,
                    price: Text(
                      '${equipments[index].price!} сом',
                      style: AppTextStyle.textField16.copyWith(
                        color: AppColors.yellow,
                      ),
                    ),
                    description: equipments[index].description!,
                    tabIndex: tabIndex,
                  );
                },
              )
            : _buildEmptyText();
      } else {
        var services = state.services;
        return services.isNotEmpty
            ? ListView.builder(
                itemCount: services.length,
                itemBuilder: (context, index) {
                  return MarketplaceCard(
                    onTap: () {
                      AutoRouter.of(context).push(ServiceDetailRoute(
                        id: services[index].id!,
                      ));
                    },
                    image: services[index].equipmentImageUrl!,
                    description: services[index].description!,
                    title: services[index].name!,
                    tabIndex: tabIndex,
                  );
                },
              )
            : _buildEmptyText();
      }
    });
  }

  Center _buildEmptyText() {
    return Center(
      child: Text(
        'Список пуст',
        style: AppTextStyle.s20w400Orange.copyWith(
          color: AppColors.black,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
