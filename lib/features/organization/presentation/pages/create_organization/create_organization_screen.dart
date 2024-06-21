import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:neobis_smart_tailor/core/app/io_ui.dart';
import 'package:neobis_smart_tailor/core/app/router/app_routes.dart';
import 'package:neobis_smart_tailor/core/app/widgets/app_bar_style.dart';

@RoutePage()
class CreateOrganizationScreen extends StatefulWidget {
  const CreateOrganizationScreen({super.key});

  @override
  State<CreateOrganizationScreen> createState() =>
      _CreateOrganizationScreenState();
}

class _CreateOrganizationScreenState extends State<CreateOrganizationScreen> {
  final _nameController = TextEditingController();
  final _descriptionController = TextEditingController();
  final _logoController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _nameController.dispose();
    _descriptionController.dispose();
    _logoController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarStyle(
        title: 'Организация',
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
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: Column(
          children: [
            Expanded(
              child: Form(
                key: _formKey,
                child: _buildTextFields(),
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: ElevatedButtonWidget(
                text: 'Создать организацию',
                onTap: () {
                  if (_formKey.currentState!.validate()) {
                    AutoRouter.of(context).push(const OrganizationInfoRoute());
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  String? _fieldValidation(String? value) {
    if (value!.isEmpty) {
      return 'Поле не может быть пустым';
    } else if (value.length < 5 || value.length > 50) {
      return 'Максимум 50 символов, минимум 5';
    }
    return null;
  }

  Column _buildTextFields() {
    return Column(
      children: [
        TextFormFieldWidget(
          controller: _nameController,
          validator: (value) {
            return _fieldValidation(value);
          },
          titleName: 'Название*',
          hintText: 'Максимум 50 символов, минимум 5',
        ),
        const SizedBox(height: 16),
        TextFormFieldWidget(
          controller: _descriptionController,
          validator: (value) {
            return _fieldValidation(value);
          },
          titleName: 'Описание*',
          hintText: 'Максимум 50 символов, минимум 5',
        ),
        const SizedBox(height: 16),
        TextFormFieldWidget(
          controller: _logoController,
          titleName: 'Ваш логотип*',
          hintText: 'Загрузить фото*',
        ),
      ],
    );
  }
}
