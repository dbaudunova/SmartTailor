import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:neobis_smart_tailor/core/app/io_ui.dart';
import 'package:neobis_smart_tailor/features/organization/pages/positions/presentation/bloc/positions_bloc.dart';
import 'package:neobis_smart_tailor/features/organization/pages/positions/presentation/widgets/positions_widget_content.dart';
import 'package:neobis_smart_tailor/injection/injection.dart';

class PositionsWidgetScreen extends StatelessWidget {
  const PositionsWidgetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: getIt<PositionsBloc>(),
      child: BlocListener<PositionsBloc, PositionsState>(
        listener: _listenerBloc,
        child: const PositionsWidgetContent(),
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
