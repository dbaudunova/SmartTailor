import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:neobis_smart_tailor/core/app/io_ui.dart';
import 'package:neobis_smart_tailor/core/app/router/app_routes.dart';
import 'package:neobis_smart_tailor/core/network/entity/state_status.dart';
import 'package:neobis_smart_tailor/features/organization/data/models/order_status_enum.dart';
import 'package:neobis_smart_tailor/features/organization/pages/current_order/bloc/current_order_bloc.dart';
import 'package:neobis_smart_tailor/features/organization/widgets/current_orders/announcement_container.dart';

class CurrentOrdersWidget extends StatefulWidget {
  const CurrentOrdersWidget({super.key});

  @override
  State<CurrentOrdersWidget> createState() => _CurrentOrdersWidgetState();
}

class _CurrentOrdersWidgetState extends State<CurrentOrdersWidget> {
  @override
  void initState() {
    context.read<CurrentOrderBloc>().add(const CurrentOrderEvent.getAllOrders());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CurrentOrderBloc, CurrentOrderState>(
      builder: (context, state) {
        var orders = state.orders.orders;
        return state.stateStatus != const StateStatus.loading()
            ? orders!.isNotEmpty
                ? ListView.builder(
                    itemCount: orders.length,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      var order = orders[index];
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16).copyWith(bottom: 12),
                        child: CurrentOrdersContainer(
                          description: order.description,
                          name: order.name,
                          orderNumber: order.id.toString(),
                          orderStatus: getOrderStatusTypeLabel(order.status!),
                          onTap: () {
                            if (order.status == OrderStatus.notConfirmed) {
                              AutoRouter.of(context).push(OrderDetailRoute(id: order.id!));
                            } else {
                              AutoRouter.of(context).push(CurrentOrderDetailRoute(id: order.id!));
                            }
                          },
                          price: order.price!.toInt(),
                        ),
                      );
                    },
                  )
                : const Center(
                    child: Text(
                    'Вы еще не приняли заказы',
                    style: AppTextStyle.textField16,
                  ))
            : const Center(child: CircularProgressIndicator());
      },
    );
  }
}
