import 'dart:ffi';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:neobis_smart_tailor/core/app/widgets/app_bar_style.dart';
import 'package:neobis_smart_tailor/core/app/widgets/empty_refresh_list_text.dart';
import 'package:neobis_smart_tailor/core/network/entity/state_status.dart';
import 'package:neobis_smart_tailor/features/marketplace/presentation/widgets/tab_bar_widget.dart';
import 'package:neobis_smart_tailor/features/profile/domain/model/my_history_entity.dart';
import 'package:neobis_smart_tailor/features/profile/presentation/pages/order_history/bloc/order_history_bloc.dart';
import 'package:neobis_smart_tailor/features/profile/presentation/widgets/order_history/order_container.dart';

class OrderHistoryContent extends StatefulWidget {
  const OrderHistoryContent({super.key});

  @override
  State<OrderHistoryContent> createState() => _OrderHistoryContentState();
}

class _OrderHistoryContentState extends State<OrderHistoryContent> with TickerProviderStateMixin {
  late TabController _tabController;
  final List<String> _labels = ['Активные', 'Завершенные'];

  OrderHistoryBloc get _bloc => context.read<OrderHistoryBloc>();

  @override
  void initState() {
    _bloc
      ..add(const OrderHistoryEvent.getCurrentHistory())
      ..add(const OrderHistoryEvent.getComletedHistory());

    super.initState();
    _tabController = TabController(
      length: _labels.length,
      vsync: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarStyle(
        centerTitle: true,
        title: 'История заказов',
        leading: IconButton(
          onPressed: () {
            AutoRouter.of(context).maybePop();
          },
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
          ),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(height: 16),
          TabBarWidget(
            tabController: _tabController,
            labels: _labels,
          ),
          const SizedBox(height: 16),
          Expanded(
            child: BlocBuilder<OrderHistoryBloc, OrderHistoryState>(
              builder: (context, state) {
                var currentOrder = state.currentPurchases;
                var completedOrders = state.completedPurchases;
                print(currentOrder?.first.date);
                print(completedOrders);
                return state.stateStatus != const StateStatus.loading()
                    ? TabBarView(
                        controller: _tabController,
                        children: [
                          currentOrder!.isNotEmpty
                              ? _buildActiveOrderListView(currentOrder)
                              : Center(
                                  child: EmptyRefreshListText(
                                    onRefresh: () async {
                                      _bloc.add(const OrderHistoryEvent.loadMoreCurrent());
                                    },
                                  ),
                                ),
                          completedOrders!.isNotEmpty
                              ? _buildCompletedOrderListView(completedOrders)
                              : Center(
                                  child: EmptyRefreshListText(
                                    onRefresh: () async {
                                      _bloc.add(const OrderHistoryEvent.loadMoreCompleted());
                                    },
                                  ),
                                ),
                        ],
                      )
                    : const Center(child: SizedBox(height: 40, width: 40, child: CircularProgressIndicator()));
              },
            ),
          ),
        ],
      ),
    );
  }

  ListView _buildCompletedOrderListView(List<HistoryEntity>? completedOrders) {
    return ListView.builder(
      itemCount: completedOrders!.length,
      itemBuilder: (context, index) {
        var order = completedOrders[index];
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: OrderContainer(
            date: order.date!,
            id: order.id!,
            name: order.name!,
            price: order.price!,
            isActive: false,
            onTap: () {},
          ),
        );
      },
    );
  }

  ListView _buildActiveOrderListView(List<HistoryEntity>? currentOrders) {
    return ListView.builder(
      itemCount: currentOrders!.length,
      itemBuilder: (context, index) {
        var order = currentOrders[index];
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: OrderContainer(
            date: order.date!,
            id: order.id!,
            name: order.name!,
            price: order.price!,
            // status: order.status,
            onTap: () {},
          ),
        );
      },
    );
  }
}
