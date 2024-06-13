import 'package:flutter/material.dart';
import 'package:neobis_smart_tailor/core/app/io_ui.dart';

class AppBarStyle extends StatelessWidget implements PreferredSizeWidget {
  const AppBarStyle({
    super.key,
    required this.title,
    this.leading,
  });

  final String title;
  final Widget? leading;

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      // surfaceTintColor: Colors.transparent,
      leading: leading,
      surfaceTintColor: AppColors.background,
      backgroundColor: AppColors.background,
      title: Text(
        title,
      ),
      centerTitle: true,
      titleTextStyle: AppTextStyle.title24.copyWith(
        fontSize: AppProps.kTwentyRadius,
      ),
    );
  }
}
