part of io_ui;

class ElevatedButtonWidget extends StatelessWidget {
  final VoidCallback? onTap;
  final String text;
  const ElevatedButtonWidget({
    super.key,
    this.onTap,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.resolveWith<Color>((state) {
          if (state.contains(
            MaterialState.disabled,
          )) {
            return AppColors.buttonUnavailableBack;
          }
          return AppColors.darkBlue;
        }),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              14,
            ),
          ),
        ),
        minimumSize: MaterialStateProperty.resolveWith<Size>((state) {
          return Size(MediaQuery.of(context).size.width - 36, 56);
        }),
      ),
      onPressed: onTap,
      child: Text(
        text,
        style: AppTextStyle.textField16.copyWith(
          color: onTap != null ? AppColors.white : AppColors.darkBlue,
          fontSize: 20,
        ),
      ),
    );
  }
}
