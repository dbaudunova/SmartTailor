import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:neobis_smart_tailor/core/app/io_ui.dart';
import 'package:neobis_smart_tailor/core/app/router/app_routes.dart';
import 'package:neobis_smart_tailor/gen/strings.g.dart';

@RoutePage()
class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final surname = TextEditingController();
  final name = TextEditingController();
  final fatherName = TextEditingController();
  final email = TextEditingController();
  final phone = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    surname.dispose();
    name.dispose();
    fatherName.dispose();
    email.dispose();
    phone.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double statusBarHeight = MediaQuery.of(context).padding.top;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppProps.kPageMargin),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 60 + statusBarHeight),
              Form(key: _formKey, child: _buildFields()),
              const SizedBox(height: 16),
              _buildCheckBox(),
              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
      floatingActionButton: ElevatedButtonWidget(
        text: t.register,
        onTap: () {
          if (_formKey.currentState!.validate()) {
            // ScaffoldMessenger.of(context).showSnackBar(
            //   SnackBar(content: Text('Processing Data')),
            // );
            AutoRouter.of(context).push(const ConfirmationRoute());
          }
        },
      ),
    );
  }

  Row _buildCheckBox() {
    return Row(
      children: [
        SizedBox(
          height: 24.0,
          width: 24.0,
          child: Checkbox(
            value: true,
            onChanged: (s) {},
            activeColor: AppColors.darkBlue,
          ),
        ),
        const SizedBox(width: 11),
        Text(
          t.rememberMe,
          style: AppTextStyle.textField16.copyWith(fontSize: 16),
        ),
      ],
    );
  }

  Column _buildFields() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          t.registration,
          style: AppTextStyle.title24,
        ),
        const SizedBox(height: 32),
        TextFormFieldWidget(
          titleName: t.surname,
          onChanged: (s) {},
          controller: surname,
          validator: (value) {
            if (value == '') {
              return 'Поле не может быть пустым';
            }
            return null;
          },
        ),
        const SizedBox(height: 16),
        TextFormFieldWidget(
          titleName: t.name,
          onChanged: (s) {},
          controller: name,
          validator: (value) {
            if (value == '') {
              return 'Поле не может быть пустым';
            }
            return null;
          },
        ),
        const SizedBox(height: 16),
        TextFormFieldWidget(
          titleName: t.FatherName,
          onChanged: (s) {},
          controller: fatherName,
          validator: (value) {
            if (value == '') {
              return 'Поле не может быть пустым';
            }
            return null;
          },
        ),
        const SizedBox(height: 16),
        TextFormFieldWidget(
          titleName: t.email,
          validator: (value) {
            if (value == null || !value.contains('@')) {
              return 'Почта указана неверно';
            }
            return null;
          },
          onChanged: (s) {},
          controller: email,
          keyboardType: TextInputType.emailAddress,
        ),
        const SizedBox(height: 16),
        TextFormFieldWidget(
          formatters: [MaskTextInputFormatter(mask: '+996 ### ### ###')],
          titleName: t.phoneNum,
          validator: (value) {
            if (value == '') {
              return 'Введинет номер телефона';
            }
            return null;
          },
          onChanged: (s) {},
          controller: phone,
          keyboardType: TextInputType.phone,
        ),
      ],
    );
  }
}
