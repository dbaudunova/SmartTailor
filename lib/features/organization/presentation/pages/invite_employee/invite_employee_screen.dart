import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:neobis_smart_tailor/core/app/io_ui.dart';
import 'package:neobis_smart_tailor/core/app/router/app_routes.dart';
import 'package:neobis_smart_tailor/core/app/widgets/alert_dialog_style.dart';
import 'package:neobis_smart_tailor/core/app/widgets/app_bar_style.dart';

@RoutePage()
class InviteEmployeeScreen extends StatefulWidget {
  const InviteEmployeeScreen({super.key});

  @override
  State<InviteEmployeeScreen> createState() => _InviteEmployeeScreenState();
}

class _InviteEmployeeScreenState extends State<InviteEmployeeScreen> {
  final _emailController = TextEditingController();
  final _employeePositionController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _emailController.dispose();
    _employeePositionController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarStyle(
        title: 'Пригласить сотрудника',
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            AutoRouter.of(context).maybePop();
          },
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Stack(
          children: [
            Form(
              key: _formKey,
              child: _buildTextFields(),
            ),
            Positioned(
              bottom: 16,
              left: 0,
              right: 0,
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: ElevatedButtonWidget(
                  text: 'Отправить приглашение',
                  onTap: () {
                    if (_formKey.currentState!.validate()) {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialogStyle(
                            title: 'Ура!',
                            content: 'Ваше приглашение отправлено!',
                            buttonText: 'Понятно',
                            onButtonPressed: () {
                              AutoRouter.of(context).push(const OrganizationInfoRoute());
                            },
                          );
                        },
                      );
                    }
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  String? _emailFieldValidation(String? value) {
    if (value!.isEmpty) {
      return 'Поле не может быть пустым';
    } else if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(value)) {
      return 'Почта указана неверно';
    }
    return null;
  }

  String? _nullValidation(String? value) {
    if (value!.isEmpty) {
      return 'Поле не может быть пустым';
    }
    return null;
  }

  Column _buildTextFields() {
    return Column(
      children: [
        TextFormFieldWidget(
          titleName: 'Почта*',
          validator: (value) {
            return _emailFieldValidation(value);
          },
          controller: _emailController,
          hintText: 'Введите электронную почту',
        ),
        const SizedBox(height: 16),
        TextFormFieldWidget(
          titleName: 'Должность*',
          validator: (value) {
            return _nullValidation(value);
          },
          onChanged: (s) {},
          controller: _employeePositionController,
          hintText: 'Должность сотрудника',
        ),
      ],
    );
  }
}
