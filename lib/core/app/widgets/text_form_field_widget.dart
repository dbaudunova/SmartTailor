part of io_ui;

class TextFormFieldWidget extends StatelessWidget {
  final List<TextInputFormatter>? formatters;
  final String? Function(String?)? validator;
  final TextEditingController controller;
  final String? titleName;
  final String? hintText;
  final Function(String)? onChanged;
  final TextInputType? keyboardType;
  final int? maxLenght;
  final int? minLenght;

  const TextFormFieldWidget({
    super.key,
    this.titleName,
    this.onChanged,
    required this.controller,
    this.keyboardType,
    this.formatters = const [],
    this.validator,
    this.hintText,
    this.maxLenght,
    this.minLenght,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        titleName != null
            ? Text(
                titleName!,
                style: controller.text.isEmpty
                    ? AppTextStyle.textField16
                    : AppTextStyle.textField16.copyWith(color: AppColors.black.withOpacity(0.10)),
              )
            : Container(),
        const SizedBox(
          height: 12,
        ),
        TextFormField(
          maxLength: maxLenght,
          validator: validator,
          style: titleName == t.email ? AppTextStyle.textField16.copyWith(fontSize: 14) : AppTextStyle.textField16,
          inputFormatters: formatters,
          keyboardType: keyboardType,
          onChanged: onChanged,

          decoration: InputDecoration(
            hintText: hintText ?? "",
            errorBorder: OutlineInputBorder(
              borderSide: const BorderSide(width: 1, color: AppColors.fieldBorder),
              borderRadius: BorderRadius.circular(
                6,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(
                6,
              ),
              borderSide: const BorderSide(width: 1, color: AppColors.fieldBorder),
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
