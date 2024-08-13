import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:neobis_smart_tailor/features/organization/pages/employee/presentation/bloc/employee_bloc.dart';
import 'package:neobis_smart_tailor/features/organization/pages/employee/presentation/employee_detail_content.dart';
import 'package:neobis_smart_tailor/injection/injection.dart';

@RoutePage()
class EmployeeDetailScreen extends StatelessWidget {
  final int id;
  const EmployeeDetailScreen({required this.id, super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: getIt<EmployeeBloc>(),
      child: BlocListener<EmployeeBloc, EmployeeState>(
        listener: _listenerBloc,
        child: EmployeeDetailContent(
          id: id,
        ),
      ),
    );
  }

  void _listenerBloc(BuildContext context, EmployeeState state) {
    state.stateStatus.whenOrNull(
      success: (value) {
        // AutoRouter.of(context).replace(
        //   ConfirmationRoute(email: value),
        // );
      },
      failure: (msg) {
        // AppSnackBar.show(context: context, titleText: msg, error: true);
      },
    );
  }
}
