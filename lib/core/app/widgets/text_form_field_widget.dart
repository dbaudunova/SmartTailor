part of io_ui;

class TextFormFieldWidget extends StatelessWidget {
  final List<TextInputFormatter>? formatters;
  final String? Function(String?)? validator;
  final TextEditingController controller;
  final String titleName;
  final Function(String)? onChanged;
  final TextInputType? keyboardType;

  const TextFormFieldWidget({
    super.key,
    required this.titleName,
    this.onChanged,
    required this.controller,
    this.keyboardType,
    this.formatters = const [],
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          titleName,
          style: controller.text.isEmpty
              ? AppTextStyle.textField16
              : AppTextStyle.textField16.copyWith(color: AppColors.black.withOpacity(0.60)),
        ),
        const SizedBox(
          height: 12,
        ),
        TextFormField(
          validator: validator,
          style: titleName == t.email ? AppTextStyle.textField16.copyWith(fontSize: 14) : AppTextStyle.textField16,
          inputFormatters: formatters,
          keyboardType: keyboardType,
          onChanged: onChanged,

          decoration: InputDecoration(
            errorBorder: OutlineInputBorder(
              borderSide: const BorderSide(width: 1, color: AppColors.fieldBorder),
              borderRadius: BorderRadius.circular(
                6,
              ),
            ),
            focusedBorder: const UnderlineInputBorder(
              borderSide: BorderSide(
                color: Colors.transparent,
              ), // Убирает подчеркивание, когда поле активно
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(
                6,
              ),
              borderSide: const BorderSide(width: 1, color: AppColors.fieldBorder),
            ),
            fillColor: AppColors.white,
            filled: true,
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 12,
              vertical: 12,
            ),
          ),
          // validator: widget.validator,
          controller: controller,
        ),
      ],
    );
  }
}
