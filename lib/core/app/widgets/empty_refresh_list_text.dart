import 'package:flutter/material.dart';
import 'package:neobis_smart_tailor/core/app/io_ui.dart';

class EmptyRefreshListText extends StatelessWidget {
  final Future<void> Function() onRefresh;
  const EmptyRefreshListText({
    required this.onRefresh,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      edgeOffset: 100,
      onRefresh: onRefresh,
      backgroundColor: AppColors.darkBlue,
      child: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        child: SizedBox(
          height: MediaQuery.of(context).size.height / 2,
          child: const Center(
            child: Text(
              'Список пуст',
              style: AppTextStyle.timer24regular,
            ),
          ),
        ),
      ),
    );
  }
}
