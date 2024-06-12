import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:neobis_smart_tailor/core/app/io_ui.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class PinCodeField extends StatelessWidget {
  const PinCodeField({
    super.key,
    required this.pinCode,
  });

  final TextEditingController pinCode;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      child: PinCodeTextField(
        appContext: context,
        // autoFocus: true,
        cursorColor: AppColors.white,
        length: 4,
        controller: pinCode,
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
          errorBorderWidth: 0.5,
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
