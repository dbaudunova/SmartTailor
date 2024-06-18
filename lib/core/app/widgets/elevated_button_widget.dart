part of io_ui;

class ElevatedButtonWidget extends StatelessWidget {
  final VoidCallback? onTap;
  final String text;
  final Color color;
  const ElevatedButtonWidget({
    super.key,
    this.onTap,
    required this.text,
    this.color = AppColors.darkBlue,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        side: MaterialStateProperty.resolveWith<BorderSide>((state) {
          if (color == AppColors.white) {
            return BorderSide(width: 1);
          }
          return BorderSide.none;
        }),
        backgroundColor: MaterialStateProperty.resolveWith<Color>((state) {
          if (state.contains(
            MaterialState.disabled,
          )) {
            return AppColors.buttonUnavailableBack;
          }
          return color;
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
          color: color == AppColors.white ? AppColors.black : (onTap != null ? AppColors.white : AppColors.darkBlue),
          fontSize: 20,
        ),
      ),
    );
  }
}
