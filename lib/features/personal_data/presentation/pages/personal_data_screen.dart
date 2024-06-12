import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:neobis_smart_tailor/core/app/io_ui.dart';
import 'package:neobis_smart_tailor/core/app/widgets/alert_dialog_style.dart';
import 'package:neobis_smart_tailor/gen/assets.gen.dart';

@RoutePage()
class PersonalDataScreen extends StatefulWidget {
  const PersonalDataScreen({super.key});

  @override
  State<PersonalDataScreen> createState() => _PersonalDataScreenState();
}

class _PersonalDataScreenState extends State<PersonalDataScreen> {
  final _surnameController = TextEditingController();
  final _nameController = TextEditingController();
  final _fathersNameController = TextEditingController();
  final _emailController = TextEditingController();
  final _phoneNumberController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _surnameController.dispose();
    _nameController.dispose();
    _fathersNameController.dispose();
    _emailController.dispose();
    _phoneNumberController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16).copyWith(top: 16),
        child: Column(
          children: [
            Row(
              children: [
                SizedBox(
                  height: 48,
                  width: 48,
                  child: CircleAvatar(
                    backgroundColor: AppColors.yellow,
                    child: SvgPicture.asset(
                      Assets.icons.person,
                      width: AppProps.kBigMargin,
                      height: AppProps.kBigMargin,
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                _buildColumn(),
                const Spacer(),
                IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    Assets.icons.bell,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            _buildPersonalDataRow(),
            const SizedBox(height: 40),
            Form(key: _formKey, child: _buildFields()),
            const Spacer(),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: ElevatedButtonWidget(
                text: 'Сохранить данные',
                onTap: () {
                  if (_formKey.currentState!.validate()) {
                    _buildShowDialog(context);
                  }
                },
              ),
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }

  Column _buildFields() {
    return Column(
      children: [
        TextFormFieldWidget(
          titleName: 'Фамилия*',
          controller: _surnameController,
        ),
        const SizedBox(height: 16),
        TextFormFieldWidget(
          titleName: 'Имя*',
          controller: _nameController,
        ),
        const SizedBox(height: 16),
        TextFormFieldWidget(
          titleName: 'Отчество*',
          controller: _fathersNameController,
        ),
        const SizedBox(height: 16),
        TextFormFieldWidget(
          titleName: 'Почта*',
          controller: _emailController,
          keyboardType: TextInputType.emailAddress,
          validator: (value) {
            if (value == null || !value.contains('@')) {
              return 'Почта указана неверно';
            }
            return null;
          },
        ),
        const SizedBox(height: 16),
        TextFormFieldWidget(
          titleName: 'Номер телефона*',
          keyboardType: TextInputType.phone,
          formatters: [MaskTextInputFormatter(mask: '+996 ### ### ###')],
          controller: _phoneNumberController,
        ),
      ],
    );
  }

  void _buildShowDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialogStyle(
          title: 'Сохранено!',
          content: 'Ваши данные сохранены!',
          buttonText: 'Закрыть',
          onButtonPressed: () {
            AutoRouter.of(context).maybePop();
          },
        );
      },
    );
  }

  Row _buildPersonalDataRow() {
    return Row(
      children: [
        Text(
          'Личные данные',
          style: AppTextStyle.title24.copyWith(
            fontSize: 20,
          ),
        ),
        const Spacer(),
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            Assets.icons.edit,
          ),
        ),
      ],
    );
  }

  Column _buildColumn() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Имя Фамилия',
          style: AppTextStyle.title24.copyWith(
            fontSize: 18,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          'Подписка оформлена!',
          style: AppTextStyle.title24.copyWith(
            fontSize: AppProps.kMediumMargin,
            fontWeight: FontWeight.w500,
          ),
        ),
        Text(
          'Срок до 1 августа 2024',
          style: AppTextStyle.title24.copyWith(
            fontSize: AppProps.kMediumMargin,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
