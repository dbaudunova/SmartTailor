import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:neobis_smart_tailor/core/app/io_ui.dart';
import 'package:neobis_smart_tailor/features/organization/pages/positions/presentation/bloc/positions_bloc.dart';
import 'package:neobis_smart_tailor/features/organization/pages/positions/presentation/positions_content.dart';
import 'package:neobis_smart_tailor/injection/injection.dart';

@RoutePage()
class PositionsScreen extends StatelessWidget {
  const PositionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: getIt<PositionsBloc>(),
      child: BlocListener<PositionsBloc, PositionsState>(
        listener: _listenerBloc,
        child: const PositionsContent(),
      ),
    );
  }

  void _listenerBloc(BuildContext context, PositionsState state) {
    state.stateStatus.whenOrNull(
      success: (value) {
        // AutoRouter.of(context).replace(
        //   ConfirmationRoute(email: value),
        // );
      },
      failure: (msg) {
        AppSnackBar.show(context: context, titleText: msg, error: true);
      },
    );
  }
}
