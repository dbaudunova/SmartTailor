import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:neobis_smart_tailor/core/app/io_ui.dart';
import 'package:neobis_smart_tailor/core/app/router/app_routes.dart';
import 'package:neobis_smart_tailor/features/marketplace/domain/entitys/common_entity.dart';
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
    return BlocBuilder<MarketplaceBloc, MarketplaceState>(
      builder: (context, state) {
        var bloc = context.read<MarketplaceBloc>();
        if (tabIndex == 0) {
          var orders = state.orders;
          return orders.isNotEmpty ? _buildOrderList(bloc, state, orders) : _buildEmptyText();
        } else if (tabIndex == 1) {
          var equipments = state.equipments;
          return equipments.isNotEmpty ? _buildEquipmentList(bloc, state, equipments) : _buildEmptyText();
        } else {
          var services = state.services;
          return services.isNotEmpty ? _buildServicesList(bloc, state, services) : _buildEmptyText();
        }
      },
    );
  }

  NotificationListener<ScrollNotification> _buildServicesList(
      MarketplaceBloc bloc, MarketplaceState state, List<GeneralEntity> services) {
    return NotificationListener<ScrollNotification>(
      onNotification: (scrollNotification) {
        if (scrollNotification is ScrollEndNotification && scrollNotification.metrics.extentAfter == 0) {
          bloc.add(
            const MarketplaceEvent.loadMoreServices(),
          );
        }
        return false;
      },
      child: ListView.builder(
        itemCount: state.isLoadingMore ? services.length + 1 : services.length,
        itemBuilder: (context, index) {
          if (index == services.length && state.isLoadingMore) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          if (index < services.length) {
            return MarketplaceCard(
              onTap: () {
                AutoRouter.of(context).push(ServiceDetailRoute(
                  id: services[index].id!,
                ));
              },
              image: services[index].imageUrl!,
              description: services[index].description!,
              title: services[index].name!,
              tabIndex: tabIndex,
            );
          }
          return const SizedBox.shrink();
        },
      ),
    );
  }

  NotificationListener<ScrollNotification> _buildEquipmentList(
      MarketplaceBloc bloc, MarketplaceState state, List<GeneralEntity> equipments) {
    return NotificationListener<ScrollNotification>(
      onNotification: (scrollNotification) {
        if (scrollNotification is ScrollEndNotification && scrollNotification.metrics.extentAfter == 0) {
          bloc.add(
            const MarketplaceEvent.loadMoreEquipments(),
          );
        }
        return false;
      },
      child: ListView.builder(
        itemCount: state.isLoadingMore ? equipments.length + 1 : equipments.length,
        itemBuilder: (context, index) {
          if (index == equipments.length && state.isLoadingMore) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          if (index < equipments.length) {
            return MarketplaceCard(
              onTap: () {
                AutoRouter.of(context).push(
                  EquipmentDetailRoute(
                    id: equipments[index].id!,
                  ),
                );
              },
              image: equipments[index].imageUrl!,
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
          }
          return const SizedBox.shrink();
        },
      ),
    );
  }

  NotificationListener<ScrollNotification> _buildOrderList(
      MarketplaceBloc bloc, MarketplaceState state, List<GeneralEntity> orders) {
    return NotificationListener<ScrollNotification>(
      onNotification: (scrollNotification) {
        if (scrollNotification is ScrollEndNotification && scrollNotification.metrics.extentAfter == 0) {
          bloc.add(
            const MarketplaceEvent.loadMoreOrders(),
          );
        }
        return false;
      },
      child: ListView.builder(
        shrinkWrap: false,
        itemCount: state.isLoadingMore ? orders.length + 1 : orders.length,
        itemBuilder: (context, index) {
          if (index == orders.length && state.isLoadingMore) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          if (index < orders.length) {
            return MarketplaceCard(
              onTap: () {
                AutoRouter.of(context).push(
                  OrderDetailRoute(
                    id: orders[index].id!,
                  ),
                );
              },
              image: orders[index].imageUrl!,
              tabIndex: tabIndex,
              description: orders[index].description!,
              title: orders[index].name!,
              data: orders[index].dateOfExecution!,
              price: Text(
                '${orders[index].price!} сом',
                style: AppTextStyle.textField16.copyWith(
                  color: AppColors.black.withOpacity(0.60),
                ),
              ),
            );
          }
          return const SizedBox.shrink();
        },
      ),
    );
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
