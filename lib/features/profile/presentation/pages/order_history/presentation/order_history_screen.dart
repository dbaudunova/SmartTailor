import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:neobis_smart_tailor/core/app/io_ui.dart';
import 'package:neobis_smart_tailor/features/profile/presentation/pages/order_history/bloc/order_history_bloc.dart';
import 'package:neobis_smart_tailor/features/profile/presentation/pages/order_history/presentation/order_history_content.dart';
import 'package:neobis_smart_tailor/injection/injection.dart';

@RoutePage()
class OrderHistoryScreen extends StatelessWidget {
  const OrderHistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: getIt<OrderHistoryBloc>(),
      child: BlocListener<OrderHistoryBloc, OrderHistoryState>(
        listener: _listenerBloc,
        child: const OrderHistoryContent(),
      ),
    );
  }

  void _listenerBloc(BuildContext context, OrderHistoryState state) {
    state.stateStatus.whenOrNull(
      success: (val) {},
      failure: (msg) {
        AppSnackBar.show(context: context, titleText: msg!, error: true);
      },
    );
  }
}
