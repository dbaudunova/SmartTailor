import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:neobis_smart_tailor/core/app/io_ui.dart';
import 'package:neobis_smart_tailor/features/confirmation/presentation/bloc/confirmation_bloc/confirmation_bloc.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class PinCodeField extends StatefulWidget {
  final String? Function(String?)? validator;
  const PinCodeField({
    super.key,
    this.validator,
  });

  @override
  State<PinCodeField> createState() => _PinCodeFieldState();
}

class _PinCodeFieldState extends State<PinCodeField> {
  final pinCodeController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      child: PinCodeTextField(
        appContext: context,
        onCompleted: (pin) {
          print(pin);
          context.read<ConfirmationBloc>().add(ConfirmationEvent.addPin(pin));
        },
        // validator: (value) {
        //   if (value != '4444') {
        //     return 'ERRR';
        //   }
        // },
        validator: widget.validator,
        autoFocus: true,
        errorTextSpace: 20,
        cursorColor: AppColors.white,
        length: 4,
        controller: pinCodeController,
        enableActiveFill: true,
        inputFormatters: [FilteringTextInputFormatter.digitsOnly],
        pinTheme: PinTheme(
          shape: PinCodeFieldShape.box,
          disabledColor: AppColors.greyText,
          activeColor: AppColors.greyText,
          errorBorderColor: AppColors.error,
          selectedFillColor: AppColors.white,
          inactiveColor: AppColors.greyText,
          selectedColor: AppColors.greyText,
          activeFillColor: AppColors.white,
          inactiveFillColor: AppColors.white,
          errorBorderWidth: 2,
          inactiveBorderWidth: 0.5,
          selectedBorderWidth: 0.5,
          activeBorderWidth: 0.5,
          borderWidth: 2,
          disabledBorderWidth: 0.5,
          fieldWidth: 34,
          fieldHeight: 45,
          borderRadius: BorderRadius.circular(6),
        ),
      ),
    );
  }
}
