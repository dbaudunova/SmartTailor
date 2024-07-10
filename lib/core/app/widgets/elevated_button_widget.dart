part of '../io_ui.dart';

class ElevatedButtonWidget extends StatelessWidget {
  final VoidCallback? onTap;
  final String text;
  final Color color;
  const ElevatedButtonWidget({
    required this.text,
    super.key,
    this.onTap,
    this.color = AppColors.darkBlue,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        side: MaterialStateProperty.resolveWith<BorderSide>((state) {
          if (color == AppColors.white) {
            return const BorderSide(width: 2);
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
          color: (color == AppColors.white || color == AppColors.buttonUnavailableBack)
              ? AppColors.darkBlue
              : AppColors.white,
          fontSize: 20,
        ),
      ),
    );
  }
}
