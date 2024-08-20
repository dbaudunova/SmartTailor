part of '../io_ui.dart';

class TextFormFieldWidget extends StatelessWidget {
  final List<TextInputFormatter>? formatters;
  final String? Function(String?)? validator;
  final void Function(OrderType type)? onSelect;
  final Function? ontap;
  final bool? enabled;
  final IconData? suffixIcon;
  final TextEditingController controller;
  final String? titleName;
  final String? hintText;
  final Function(String)? onChanged;
  final TextInputType? keyboardType;
  final int? maxLenght;
  final int? minLenght;

  const TextFormFieldWidget({
    required this.controller,
    super.key,
    this.titleName,
    this.onChanged,
    this.keyboardType,
    this.formatters = const [],
    this.validator,
    this.hintText,
    this.maxLenght,
    this.minLenght,
    this.ontap,
    this.enabled,
    this.suffixIcon,
    this.onSelect,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        titleName != null
            ? Text(titleName!,
                style: AppTextStyle.textField16.copyWith(
                  color: AppColors.black.withOpacity(0.60),
                ))
            : Container(),
        const SizedBox(
          height: 12,
        ),
        GestureDetector(
          onTap: () {
            if (ontap != null) {
              ontap!();
            }
          },
          child: TextFormField(
            enabled: enabled,
            maxLength: maxLenght,
            validator: validator,
            style: titleName == t.email ? AppTextStyle.textField16.copyWith(fontSize: 14) : AppTextStyle.textField16,
            inputFormatters: formatters,
            keyboardType: keyboardType,
            onChanged: onChanged,
            decoration: InputDecoration(
              suffixIcon: Icon(
                suffixIcon,
                color: AppColors.fieldBorder,
              ),
              hintText: hintText ?? '',
              hintStyle: AppTextStyle.textField16.copyWith(color: Colors.grey),
              errorBorder: _buildErrorBorder(),
              focusedErrorBorder: _buildErrorBorder(),
              errorStyle: AppTextStyle.s12w400.copyWith(color: AppColors.error),
              focusedBorder: _buildBorder(),
              enabledBorder: _buildBorder(),
              disabledBorder: _buildBorder(),
              fillColor: AppColors.white,
              filled: true,
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 12,
              ),
            ),
            controller: controller,
          ),
        ),
      ],
    );
  }

  OutlineInputBorder _buildErrorBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: const BorderSide(width: 0.7, color: AppColors.error),
    );
  }

  OutlineInputBorder _buildBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(6),
      borderSide: const BorderSide(width: 1, color: AppColors.fieldBorder),
    );
  }
}
