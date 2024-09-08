import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:neobis_smart_tailor/core/app/widgets/app_bar_style.dart';
import 'package:neobis_smart_tailor/features/marketplace/presentation/widgets/tab_bar_widget.dart';
import 'package:neobis_smart_tailor/features/profile/presentation/pages/order_history/bloc/order_history_bloc.dart';
import 'package:neobis_smart_tailor/features/profile/presentation/pages/order_history/presentation/widgets/completed_orders_list_widget.dart';
import 'package:neobis_smart_tailor/features/profile/presentation/pages/order_history/presentation/widgets/current_orders_list_widget.dart';

class OrderHistoryContent extends StatefulWidget {
  const OrderHistoryContent({super.key});

  @override
  State<OrderHistoryContent> createState() => _OrderHistoryContentState();
}

class _OrderHistoryContentState extends State<OrderHistoryContent> with TickerProviderStateMixin {
  late TabController _tabController;
  final List<String> _labels = ['Активные', 'Завершенные'];

  @override
  void initState() {
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
                return TabBarView(
                  controller: _tabController,
                  children: const [
                    CurrentOrdersListWidget(),
                    CompletedOrdersListWidget(),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
