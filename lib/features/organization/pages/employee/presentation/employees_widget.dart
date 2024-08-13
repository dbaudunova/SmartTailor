import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:neobis_smart_tailor/core/app/io_ui.dart';
import 'package:neobis_smart_tailor/core/app/router/app_routes.dart';
import 'package:neobis_smart_tailor/features/organization/pages/employee/presentation/bloc/employee_bloc.dart';
import 'package:neobis_smart_tailor/features/organization/widgets/organization_info/employee_item.dart';
import 'package:neobis_smart_tailor/injection/injection.dart';

class EmployeesWidget extends StatefulWidget {
  const EmployeesWidget({super.key});

  @override
  State<EmployeesWidget> createState() => _EmployeesWidgetState();
}

class _EmployeesWidgetState extends State<EmployeesWidget> {
  @override
  void initState() {
    context.read<EmployeeBloc>().add(const EmployeeEvent.getAllEmployees());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EmployeeBloc, EmployeeState>(
      builder: (context, state) {
        var employees = state.employees;
        print(employees);
        return employees.isNotEmpty
            ? Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Stack(
                  children: [
                    ListView.builder(
                      itemCount: employees.length,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        var employee = employees[index];
                        return EmployeeItemContainer(
                          email: employee.email!,
                          fullName: employee.fullName!,
                          position: employee.position!,
                          onTap: () {
                            AutoRouter.of(context).push(EmployeeDetailRoute(id: employee.id!));
                            print(employee.id);
                          },
                        );
                      },
                    ),
                    Positioned(
                      bottom: 32,
                      left: 0,
                      right: 0,
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: ElevatedButtonWidget(
                            text: 'Пригласить сотрудника',
                            onTap: () {
                              AutoRouter.of(context).push(const InviteEmployeeRoute());
                            },
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            : _emptyList();
      },
    );
  }

  Center _emptyList() {
    return const Center(
      child: Text(
        'В огранизации еще нет сотрудников',
        style: AppTextStyle.textField16,
      ),
    );
  }

  // Widget? _buildEmployeeItemBuilder(context, index) {
  //   return Padding(
  //     padding: const EdgeInsets.symmetric(horizontal: 16).copyWith(bottom: 12),
  //     child: EmployeeItemContainer(
  //       onTap: () {
  //         AutoRouter.of(context).push(const EmployeeDetailRoute());
  //       },
  //     ),
  //   );
  // }
}
