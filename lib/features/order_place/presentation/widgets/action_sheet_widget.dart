import 'package:flutter/cupertino.dart';
import 'package:neobis_smart_tailor/core/app/io_ui.dart';
import 'package:neobis_smart_tailor/gen/strings.g.dart';

class ActionSheetWidget extends StatelessWidget {
  final List<AppActionSheetWidget> actions;
  const ActionSheetWidget({
    required this.actions,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CupertinoActionSheet(
      actions: actions,
      cancelButton: CupertinoActionSheetAction(
        child: Text(
          t.cancel,
          style: AppTextStyle.s20w400Orange.copyWith(color: AppColors.black, fontWeight: FontWeight.w500),
        ),
        onPressed: () {
          Navigator.pop(context, 'Cancel');
        },
      ),
    );
  }
}

class AppActionSheetWidget extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  const AppActionSheetWidget({
    required this.onPressed,
    required this.text,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CupertinoActionSheetAction(
      onPressed: onPressed,
      child: Text(
        text,
        style: AppTextStyle.s20w400Orange.copyWith(color: AppColors.black, fontWeight: FontWeight.w500),
      ),
    );
  }
}
