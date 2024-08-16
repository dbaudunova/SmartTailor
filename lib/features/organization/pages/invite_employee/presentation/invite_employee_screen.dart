import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:neobis_smart_tailor/core/app/io_ui.dart';
import 'package:neobis_smart_tailor/core/app/router/app_routes.dart';
import 'package:neobis_smart_tailor/core/app/widgets/alert_dialog_style.dart';
import 'package:neobis_smart_tailor/features/organization/pages/invite_employee/presentation/bloc/invite_employee_bloc.dart';
import 'package:neobis_smart_tailor/features/organization/pages/invite_employee/presentation/invite_employee_content.dart';
import 'package:neobis_smart_tailor/injection/injection.dart';

@RoutePage()
class InviteEmployeeScreen extends StatelessWidget {
  const InviteEmployeeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: getIt<InviteEmployeeBloc>(),
      child: BlocListener<InviteEmployeeBloc, InviteEmployeeState>(
        listener: _listenerBloc,
        child: const InviteEmployeeContent(),
      ),
    );
  }

  void _listenerBloc(BuildContext context, InviteEmployeeState state) {
    state.stateStatus.whenOrNull(
      success: (val) {
        showDialog(
          context: context,
          builder: (context) {
            return AlertDialogStyle(
              title: 'Ура!',
              content: 'Ваше приглашение отправлено!',
              buttonText: 'Понятно',
              onButtonPressed: () {
                Navigator.of(context).pop();
                WidgetsBinding.instance.addPostFrameCallback((_) {
                  AutoRouter.of(context).pushAndPopUntil(
                    const OrganizationRoute(),
                    predicate: (route) => false,
                  );
                });
              },
            );
          },
        );
      },
      failure: (msg) {
        AppSnackBar.show(context: context, titleText: msg!, error: true);
      },
    );
  }
}
