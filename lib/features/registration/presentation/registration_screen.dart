import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:neobis_smart_tailor/core/app/io_ui.dart';
import 'package:neobis_smart_tailor/core/app/router/app_routes.dart';
import 'package:neobis_smart_tailor/features/registration/presentation/bloc/registration_bloc.dart';
import 'package:neobis_smart_tailor/features/registration/presentation/registration_content.dart';
import 'package:neobis_smart_tailor/injection/injection.dart';

@RoutePage()
class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: getIt<RegistrationBloc>(),
      child: BlocListener<RegistrationBloc, RegistrationState>(
        listener: _listenerBloc,
        child: const RegistrationContent(),
      ),
    );
  }

  void _listenerBloc(BuildContext context, RegistrationState state) {
    state.stateStatus.whenOrNull(
      success: (value) {
        AutoRouter.of(context).replace(
          ConfirmationRoute(email: value),
        );
      },
      failure: (msg) {
        AppSnackBar.show(context: context, titleText: msg, error: true);
      },
    );
  }
}
