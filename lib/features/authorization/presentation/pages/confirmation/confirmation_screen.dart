import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:neobis_smart_tailor/core/app/io_ui.dart';
import 'package:neobis_smart_tailor/core/app/router/app_routes.dart';
import 'package:neobis_smart_tailor/features/authorization/presentation/blocs/confirmation_bloc/confirmation_bloc.dart';
import 'package:neobis_smart_tailor/features/authorization/presentation/pages/confirmation/confirmation_content.dart';
import 'package:neobis_smart_tailor/injection/injection.dart';

@RoutePage()
class ConfirmationScreen extends StatelessWidget {
  final String? email;
  const ConfirmationScreen({required this.email, super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: getIt<ConfirmationBloc>(),
      child: BlocListener<ConfirmationBloc, ConfirmationState>(
        listener: _listenerBloc,
        child: ConfirmationContent(
          email: email,
        ),
      ),
    );
  }

  void _listenerBloc(BuildContext context, ConfirmationState state) {
    state.stateStatus.whenOrNull(
      success: (val) {
        switch (val) {
          case SuccessType.login:
            AutoRouter.of(context).replaceAll([const BottomNavRoute()]);
            break;
          case SuccessType.repeatCode:
            break;
        }
      },
      failure: (msg) {
        AppSnackBar.show(context: context, titleText: msg!, error: true);
      },
    );
  }
}
