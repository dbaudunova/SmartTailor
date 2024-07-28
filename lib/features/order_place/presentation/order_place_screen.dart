import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:neobis_smart_tailor/core/app/io_ui.dart';
import 'package:neobis_smart_tailor/core/app/router/app_routes.dart';
import 'package:neobis_smart_tailor/features/order_place/presentation/bloc/order_place_bloc.dart';
import 'package:neobis_smart_tailor/features/order_place/presentation/order_place_content.dart';
import 'package:neobis_smart_tailor/injection/injection.dart';

@RoutePage()
class OrderPlaceScreen extends StatelessWidget {
  const OrderPlaceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: getIt<OrderPlaceBloc>(),
      child: BlocListener<OrderPlaceBloc, OrderPlaceState>(
        listener: _listenerBloc,
        child: const OrderPlaceContent(),
      ),
    );
  }

  void _listenerBloc(BuildContext context, OrderPlaceState state) {
    state.stateStatus.whenOrNull(
      success: (val) {
        // AppSnackBar.show(context: context, titleText: val, error: false);
        AutoRouter.of(context).push(const BottomNavRoute());
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
              content: Text(
            'Готово',
            style: AppTextStyle.s12w400,
            textAlign: TextAlign.center,
          )),
        );
      },
      failure: (msg) {
        AppSnackBar.show(context: context, titleText: msg, error: true);
      },
    );
  }
}
