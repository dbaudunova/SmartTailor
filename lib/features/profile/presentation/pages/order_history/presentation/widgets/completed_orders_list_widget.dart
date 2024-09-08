import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:neobis_smart_tailor/core/app/widgets/infinity_scroll_list/generic_Infinite_scroll_list_widget.dart';
import 'package:neobis_smart_tailor/core/network/entity/state_status.dart';
import 'package:neobis_smart_tailor/features/profile/domain/entitys/my_history_entity.dart';
import 'package:neobis_smart_tailor/features/profile/presentation/pages/order_history/bloc/order_history_bloc.dart';
import 'package:neobis_smart_tailor/features/profile/presentation/widgets/order_history/order_container.dart';

class CompletedOrdersListWidget extends StatefulWidget {
  const CompletedOrdersListWidget({super.key});

  @override
  _CompletedOrdersListWidgetState createState() => _CompletedOrdersListWidgetState();
}

class _CompletedOrdersListWidgetState extends State<CompletedOrdersListWidget> {
  OrderHistoryBloc get bloc => context.read<OrderHistoryBloc>();
  final PagingController<int, HistoryEntity> _pagingController =
      PagingController(firstPageKey: 0, invisibleItemsThreshold: 10);

  @override
  Widget build(BuildContext context) {
    return GenericInfiniteScrollListWidget<HistoryEntity, OrderHistoryBloc, OrderHistoryState>(
      bloc: bloc,
      pagingController: _pagingController,
      itemBuilder: (context, item, index) => OrderContainer(
        date: item.date!,
        id: item.id!,
        name: item.name!,
        price: item.price!,
        status: item.status,
        onTap: () {},
      ),
      onPageRequest: (pageKey) {
        bloc.add(OrderHistoryEvent.loadCompleted(page: pageKey));
      },
      onStateChange: (state, pagingController) {
        if (state.stateStatus == const StateStatus.success()) {
          final isLastPage = state.isLastforCompleted;
          if (isLastPage) {
            pagingController.appendLastPage(state.completedPurchases!);
          } else {
            final nextPageKey = pagingController.nextPageKey! + 1;
            pagingController.appendPage(state.completedPurchases!, nextPageKey);
          }
        } else if (state.stateStatus == const StateStatus.failure(message: 'error')) {
          pagingController.error = const StateStatus.failure(message: 'error');
        }
      },
    );
  }
}
