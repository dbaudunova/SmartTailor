import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:neobis_smart_tailor/core/app/router/app_routes.dart';
import 'package:neobis_smart_tailor/core/app/widgets/empty_refresh_list_text.dart';
import 'package:neobis_smart_tailor/core/network/entity/state_status.dart';
import 'package:neobis_smart_tailor/features/organization/pages/history/presentation/bloc/history_bloc.dart';
import 'package:neobis_smart_tailor/features/profile/presentation/widgets/order_history/order_container.dart';

class HistoryListContent extends StatefulWidget {
  const HistoryListContent({super.key});

  @override
  State<HistoryListContent> createState() => _HistoryListContentState();
}

class _HistoryListContentState extends State<HistoryListContent> {
  HistoryBloc get _bloc => context.read<HistoryBloc>();
  @override
  void initState() {
    _bloc.add(const HistoryEvent.getHistory());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HistoryBloc, HistoryState>(
      builder: (context, state) {
        var ordersHistory = state.history;
        return state.stateStatus != const StateStatus.loading()
            ? ordersHistory.isNotEmpty
                ? Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: ListView.builder(
                      itemCount: ordersHistory.length,
                      itemBuilder: (context, index) {
                        var orderHistory = ordersHistory[0];
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 8),
                          child: OrderContainer(
                            isActive: false,
                            date: orderHistory.date!,
                            id: orderHistory.id!,
                            name: orderHistory.name!,
                            price: orderHistory.price!,
                            status: orderHistory.status,
                            onTap: () {
                              AutoRouter.of(context).push(HistoryDetailRoute(id: orderHistory.id!));
                            },
                          ),
                        );
                      },
                    ),
                  )
                : EmptyRefreshListText(onRefresh: () async {})
            : const Center(child: CircularProgressIndicator());
      },
    );
  }
}
