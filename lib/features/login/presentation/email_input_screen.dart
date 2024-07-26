import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:neobis_smart_tailor/core/app/io_ui.dart';
import 'package:neobis_smart_tailor/core/app/router/app_routes.dart';
import 'package:neobis_smart_tailor/features/login/presentation/bloc/login_bloc.dart';
import 'package:neobis_smart_tailor/features/login/presentation/email_input_content.dart';
import 'package:neobis_smart_tailor/injection/injection.dart';

@RoutePage()
class EmailInputScreen extends StatelessWidget {
  EmailInputScreen({super.key});

  final _contentKey = GlobalKey<EmailInputContentState>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: getIt<LoginBloc>(),
      child: BlocListener<LoginBloc, LoginState>(
        listener: _listenerBloc,
        child: EmailInputContent(key: _contentKey),
      ),
    );
  }

  void _listenerBloc(BuildContext context, LoginState state) {
    print('Listener state: ${state.stateStatus}');
    state.stateStatus.whenOrNull(
      success: (_) {
        var email = _contentKey.currentState?.email;
        AutoRouter.of(context).replace(
          ConfirmationRoute(
            email: email,
          ),
        );
      },
      failure: (msg) {
        AppSnackBar.show(context: context, titleText: msg, error: true);
      },
    );
  }
}
