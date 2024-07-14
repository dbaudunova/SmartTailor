import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:neobis_smart_tailor/core/app/widgets/app_bar_style.dart';
import 'package:neobis_smart_tailor/core/app/widgets/fab_button_widget.dart';
import 'package:neobis_smart_tailor/core/app/widgets/search_order_sheet.dart';
import 'package:neobis_smart_tailor/features/marketplace/presentation/widgets/tab_bar_widget.dart';
import 'package:neobis_smart_tailor/features/profile/presentation/widgets/order_history/order_container.dart';

@RoutePage()
class OrderHistoryScreen extends StatefulWidget {
  const OrderHistoryScreen({super.key});

  @override
  State<OrderHistoryScreen> createState() => _OrderHistoryScreenState();
}

class _OrderHistoryScreenState extends State<OrderHistoryScreen>
    with TickerProviderStateMixin {
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
      body: Stack(
        children: [
          Column(
            children: [
              const SizedBox(height: 16),
              TabBarWidget(
                tabController: _tabController,
                labels: _labels,
              ),
              const SizedBox(height: 16),
              Expanded(
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    _buildActiveOrderListView(),
                    _buildCompletedOrderListView(),
                  ],
                ),
              ),
            ],
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

  ListView _buildCompletedOrderListView() {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: OrderContainer(
            isActive: false,
            onTap: () {},
          ),
        );
      },
    );
  }

  ListView _buildActiveOrderListView() {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: OrderContainer(
            onTap: () {},
          ),
        );
      },
    );
  }
}
