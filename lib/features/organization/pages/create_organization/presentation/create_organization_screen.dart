import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:neobis_smart_tailor/core/app/io_ui.dart';
import 'package:neobis_smart_tailor/core/app/router/app_routes.dart';
import 'package:neobis_smart_tailor/core/app/widgets/alert_dialog_style.dart';
import 'package:neobis_smart_tailor/features/organization/pages/create_organization/presentation/create_organization_bloc/create_organization_bloc.dart';
import 'package:neobis_smart_tailor/features/organization/pages/create_organization/presentation/create_organization_content.dart';
import 'package:neobis_smart_tailor/features/organization/pages/organization/presentation/bloc/organization_bloc.dart';
import 'package:neobis_smart_tailor/injection/injection.dart';

@RoutePage()
class CreateOrganizationScreen extends StatelessWidget {
  const CreateOrganizationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: getIt<CreateOrganizationBloc>(),
      child: BlocListener<CreateOrganizationBloc, CreateOrganizationState>(
        listener: _listenerBloc,
        child: const CreateOrganizationContent(),
      ),
    );
  }

  void _listenerBloc(BuildContext context, CreateOrganizationState state) {
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
                  context.read<OrganizationBloc>().add(OrganizationEvent.getOrganization());
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
