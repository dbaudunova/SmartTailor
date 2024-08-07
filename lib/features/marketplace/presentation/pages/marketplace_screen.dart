import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:neobis_smart_tailor/features/marketplace/presentation/bloc/marketplace_bloc.dart';
import 'package:neobis_smart_tailor/features/marketplace/presentation/pages/marketplace_content.dart';
import 'package:neobis_smart_tailor/injection/injection.dart';

@RoutePage()
class MarketplaceScreen extends StatelessWidget implements AutoRouteWrapper {
  const MarketplaceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: getIt<MarketplaceBloc>(),
      child: BlocListener<MarketplaceBloc, MarketplaceState>(
        listener: _listenerBloc,
        child: const MarketplaceContent(),
      ),
    );
  }

  void _listenerBloc(BuildContext context, MarketplaceState state) {
    state.stateStatus.whenOrNull(
        // success: (val) {
        //   // AppSnackBar.show(context: context, titleText: val, error: false);
        //   // AutoRouter.of(context).push(const BottomNavRoute());
        //   // ScaffoldMessenger.of(context).showSnackBar(
        //   //   const SnackBar(
        //   //       content: Text(
        //   //     'Готово',
        //   //     style: AppTextStyle.s12w400,
        //   //     textAlign: TextAlign.center,
        //   //   )),
        //   // );
        // },
        // failure: (msg) {
        //   AppSnackBar.show(context: context, titleText: msg, error: true);
        // },
        );
  }

  @override
  Widget wrappedRoute(BuildContext context) {
    return this;
  }
}
