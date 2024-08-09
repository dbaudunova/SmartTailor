import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:neobis_smart_tailor/features/organization/pages/employee/presentation/bloc/employee_bloc.dart';
import 'package:neobis_smart_tailor/features/organization/pages/employee/presentation/employees_widget.dart';
import 'package:neobis_smart_tailor/injection/injection.dart';

class EmployeesScreen extends StatelessWidget {
  const EmployeesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: getIt<EmployeeBloc>(),
      child: BlocListener<EmployeeBloc, EmployeeState>(
        listener: _listenerBloc,
        child: const EmployeesWidget(),
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
