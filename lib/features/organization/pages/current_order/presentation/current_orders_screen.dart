import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:neobis_smart_tailor/features/organization/pages/current_order/bloc/current_order_bloc.dart';
import 'package:neobis_smart_tailor/features/organization/pages/current_order/presentation/widget/current_orders_widget.dart';
import 'package:neobis_smart_tailor/injection/injection.dart';

class CurrentOrdersScreen extends StatelessWidget {
  const CurrentOrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: getIt<CurrentOrderBloc>(),
      child: BlocListener<CurrentOrderBloc, CurrentOrderState>(
        listener: _listenerBloc,
        child: const CurrentOrdersWidget(),
      ),
    );
  }

  void _listenerBloc(BuildContext context, CurrentOrderState state) {
    state.stateStatus.whenOrNull(
      success: (value) {},
      failure: (msg) {
        // AppSnackBar.show(context: context, titleText: msg, error: true);
      },
    );
  }
}
