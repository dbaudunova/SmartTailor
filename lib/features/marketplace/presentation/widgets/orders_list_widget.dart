// example_page.dart
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:neobis_smart_tailor/core/app/router/app_routes.dart';
import 'package:neobis_smart_tailor/core/network/entity/state_status.dart';
import 'package:neobis_smart_tailor/features/marketplace/domain/entitys/general_entity.dart';
import 'package:neobis_smart_tailor/features/marketplace/presentation/bloc/marketplace_bloc.dart';
import 'package:neobis_smart_tailor/core/app/widgets/infinity_scroll_list/generic_Infinite_scroll_list_widget.dart';
import 'package:neobis_smart_tailor/features/marketplace/presentation/widgets/marketplace_card_widget.dart';

class OrdersListWidget extends StatefulWidget {
  const OrdersListWidget({super.key});

  @override
  _OrdersListWidgetState createState() => _OrdersListWidgetState();
}

class _OrdersListWidgetState extends State<OrdersListWidget> {
  MarketplaceBloc get bloc => context.read<MarketplaceBloc>();
  final PagingController<int, GeneralEntity> _pagingController =
      PagingController(firstPageKey: 0, invisibleItemsThreshold: 1);

  // @override
  // void dispose() {
  //   bloc.close();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return GenericInfiniteScrollListWidget<GeneralEntity, MarketplaceBloc, MarketplaceState>(
      bloc: bloc,
      pagingController: _pagingController,
      itemBuilder: (context, item, index) => MarketplaceCard(
        price: Text(item.price.toString()),
        data: item.dateOfExecution,
        onTap: () {
          context.router.push(
            OrderDetailRoute(id: item.id!),
          );
        },
        image: item.imageUrl!,
        description: item.description!,
        title: item.name!,
      ),
      onPageRequest: (pageKey) {
        bloc.add(MarketplaceEvent.loadOrders(page: pageKey));
      },
      onStateChange: (state, pagingController) {
        if (state.stateStatus == const StateStatus.success()) {
          final isLastPage = state.lastForOrders;
          if (isLastPage) {
            pagingController.appendLastPage(state.orders);
          } else {
            final nextPageKey = pagingController.nextPageKey! + 1;
            pagingController.appendPage(state.orders, nextPageKey);
          }
        } else if (state.stateStatus == const StateStatus.failure(message: 'error')) {
          pagingController.error = const StateStatus.failure(message: 'error');
        }
      },
    );
  }
}
