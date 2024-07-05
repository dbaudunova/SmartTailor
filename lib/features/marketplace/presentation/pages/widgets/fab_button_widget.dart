import 'package:flutter/material.dart';
import 'package:neobis_smart_tailor/core/app/io_ui.dart';
import 'package:neobis_smart_tailor/gen/assets.gen.dart';

class FabButtonWidget extends StatelessWidget {
  final void Function() onTap;

  const FabButtonWidget({
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 4,
      right: MediaQuery.of(context).size.width / 2 - 24,
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: AppColors.yellow,
          ),
          padding: const EdgeInsets.all(16),
          child: Assets.images.vector.image(
            width: 24,
            height: 24,
            color: AppColors.black,
          ),
        ),
      ),
    );
  }
}
