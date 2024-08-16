import 'package:flutter/material.dart';
import 'package:neobis_smart_tailor/core/app/io_ui.dart';

class AppBarStyle extends StatelessWidget implements PreferredSizeWidget {
  const AppBarStyle({
    required this.title,
    super.key,
    this.leading,
    this.centerTitle = false,
  });

  final String title;
  final Widget? leading;
  final bool? centerTitle;

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: leading,
      surfaceTintColor: AppColors.background,
      backgroundColor: AppColors.background,
      title: Text(
        title,
      ),
      centerTitle: centerTitle,
      titleTextStyle: AppTextStyle.title24.copyWith(
        fontSize: AppProps.kTwentyRadius,
      ),
    );
  }
}
