import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerForScreen extends StatelessWidget {
  const ShimmerForScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.grey[100]!,
      period: Durations.extralong3,
      child: Container(
        // width: MediaQuery.of(context).size.width,
        // height: 208,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
