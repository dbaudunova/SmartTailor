import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:neobis_smart_tailor/core/app/io_ui.dart';
import 'package:neobis_smart_tailor/core/app/widgets/app_bar_style.dart';
import 'package:neobis_smart_tailor/gen/strings.g.dart';

@RoutePage()
class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final surnameController = TextEditingController();
  final nameController = TextEditingController();
  final fatherNameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    surnameController.dispose();
    nameController.dispose();
    fatherNameController.dispose();
    emailController.dispose();
    phoneController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBarStyle(title: t.registration),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppProps.kPageMargin).copyWith(bottom: 96),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 60
                  //  + statusBarHeight
                  ),
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
            AutoRouter.of(context).pushNamed('/confirmation');
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Processing Data')),
            );
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
        // Text(
        //   t.registration,
        //   style: AppTextStyle.title24,
        // ),
        // const SizedBox(height: 32),
        TextFormFieldWidget(
          titleName: t.surname,
          onChanged: (s) {},
          controller: surnameController,
          validator: (value) => _validateField(value, FieldType.text),
        ),
        const SizedBox(height: 16),
        TextFormFieldWidget(
          titleName: t.name,
          onChanged: (s) {},
          controller: nameController,
          validator: (value) => _validateField(value, FieldType.text),
        ),
        const SizedBox(height: 16),
        TextFormFieldWidget(
          titleName: t.FatherName,
          onChanged: (s) {},
          controller: fatherNameController,
          validator: (value) => _validateField(value, FieldType.text),
        ),
        const SizedBox(height: 16),
        TextFormFieldWidget(
          titleName: t.email,
          validator: (value) => _validateField(value, FieldType.email),
          onChanged: (s) {},
          controller: emailController,
          keyboardType: TextInputType.emailAddress,
        ),
        const SizedBox(height: 16),
        TextFormFieldWidget(
          formatters: [MaskTextInputFormatter(mask: '+996 ### ### ###')],
          titleName: t.phoneNum,
          validator: (value) => _validateField(value, FieldType.phone),
          onChanged: (s) {},
          controller: phoneController,
          keyboardType: TextInputType.phone,
        ),
      ],
    );
  }

  String? _validateField(String? value, FieldType fieldType) {
    if (fieldType == FieldType.text && value!.isEmpty) {
      return 'Поле не может быть пустым';
    }
    if (fieldType == FieldType.email && !value!.contains('@')) {
      return 'Почта указана неверно';
    }
    if (fieldType == FieldType.phone && value!.isEmpty) {
      return 'Введинет номер телефона';
    }
    return null;
  }
}

enum FieldType { text, phone, email }
