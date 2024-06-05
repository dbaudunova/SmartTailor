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
        // backgroundColor: AppColors.yellow,
        autoFocus: true,
        cursorColor: AppColors.white,
        length: 4,
        controller: pinCode,
        enableActiveFill: true,
        inputFormatters: [FilteringTextInputFormatter.digitsOnly],
        pinTheme: PinTheme(
          shape: PinCodeFieldShape.box,
          disabledColor: AppColors.white,
          activeColor: Colors.grey,
          errorBorderColor: AppColors.error,
          selectedFillColor: Colors.white,
          inactiveColor: AppColors.white,
          selectedColor: AppColors.white,
          activeFillColor: AppColors.white,
          inactiveFillColor: AppColors.white,
          inactiveBorderWidth: 0,
          selectedBorderWidth: 0,
          activeBorderWidth: 0,
          borderWidth: 0,
          disabledBorderWidth: 0,
          fieldWidth: 34,
          fieldHeight: 45,
          borderRadius: BorderRadius.circular(6),
          // fieldOuterPadding: EdgeInsets.symmetric(horizontal: 20),
        ),
      ),
    );
  }
}
