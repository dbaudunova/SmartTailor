part of '../io_ui.dart';

class ElevatedButtonWidget extends StatelessWidget {
  final VoidCallback? onTap;
  final String? text;
  final Color color;
  final bool? loading;
  const ElevatedButtonWidget({
    this.text,
    super.key,
    this.onTap,
    this.color = AppColors.darkBlue,
    this.loading,
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
      child: loading != true
          ? Text(
              text!,
              style: AppTextStyle.textField16.copyWith(
                color: (color == AppColors.white || color == AppColors.buttonUnavailableBack)
                    ? AppColors.darkBlue
                    : AppColors.white,
                fontSize: 20,
              ),
            )
          : const SizedBox(height: 32, width: 32, child: CircularProgressIndicator()),
    );
  }
}
