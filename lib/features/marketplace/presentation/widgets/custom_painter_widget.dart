import 'package:flutter/material.dart';

class CustomTabIndicator extends Decoration {
  final double height;
  final Color color;

  const CustomTabIndicator({required this.height, required this.color});

  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    return _CustomIndicatorPainter(height: height, color: color);
  }
}

class _CustomIndicatorPainter extends BoxPainter {
  final double height;
  final Color color;

  _CustomIndicatorPainter({required this.height, required this.color});

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    final paint = Paint();
    paint
      ..color = color
      ..style = PaintingStyle.fill;

    final customOffset = offset + Offset(0, configuration.size!.height - height);
    final rect = customOffset & Size(configuration.size!.width, height);
    canvas.drawRRect(RRect.fromRectAndRadius(rect, const Radius.circular(7)), paint);
  }
}
