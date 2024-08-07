import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:neobis_smart_tailor/core/app/io_ui.dart';
import 'package:neobis_smart_tailor/features/organization/pages/organization/presentation/bloc/organization_bloc.dart';
import 'package:neobis_smart_tailor/features/organization/pages/organization/presentation/organization_content.dart';
import 'package:neobis_smart_tailor/injection/injection.dart';

@RoutePage()
class OrganizationScreen extends StatelessWidget {
  const OrganizationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: getIt<OrganizationBloc>(),
      child: BlocListener<OrganizationBloc, OrganizationState>(
        listener: _listenerBloc,
        child: const OrganizationContent(),
      ),
    );
  }

  void _listenerBloc(BuildContext context, OrganizationState state) {
    state.stateStatus.whenOrNull(
      success: (val) {
        // ScaffoldMessenger.of(context).showSnackBar(
        //   const SnackBar(
        //       content: Text(
        //     'Готово',
        //     style: AppTextStyle.s12w400,
        //     textAlign: TextAlign.center,
        //   )),
        // );
      },
      failure: (msg) {
        AppSnackBar.show(context: context, titleText: msg, error: true);
      },
    );
  }
}
