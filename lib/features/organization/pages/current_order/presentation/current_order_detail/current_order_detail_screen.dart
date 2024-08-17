import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:neobis_smart_tailor/features/organization/pages/current_order/presentation/bloc/current_order_bloc.dart';
import 'package:neobis_smart_tailor/features/organization/pages/current_order/presentation/current_order_detail/current_order_detail_content.dart';
import 'package:neobis_smart_tailor/injection/injection.dart';

@RoutePage()
class CurrentOrderDetailScreen extends StatelessWidget {
  final int id;
  const CurrentOrderDetailScreen({required this.id, super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: getIt<CurrentOrderBloc>(),
      child: BlocListener<CurrentOrderBloc, CurrentOrderState>(
        listener: _listenerBloc,
        child: CurrentOrderDetailContent(
          id: id,
        ),
      ),
    );
  }

  void _listenerBloc(BuildContext context, CurrentOrderState state) {
    state.stateStatus.whenOrNull(
      success: (value) {
        // AutoRouter.of(context).replace(
        //   ConfirmationRoute(email: value),
        // );
      },
      failure: (msg) {
        // AppSnackBar.show(context: context, titleText: msg, error: true);
      },
    );
  }
}
