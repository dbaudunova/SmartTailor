import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:neobis_smart_tailor/core/app/io_ui.dart';
import 'package:neobis_smart_tailor/gen/assets.gen.dart';
import 'package:neobis_smart_tailor/gen/strings.g.dart';

class SizeSelectionBottomSheet extends StatefulWidget {
  const SizeSelectionBottomSheet({super.key});

  @override
  _SizeSelectionBottomSheetState createState() => _SizeSelectionBottomSheetState();
}

class _SizeSelectionBottomSheetState extends State<SizeSelectionBottomSheet> {
  final TextEditingController _controller = TextEditingController();
  final List<String> _sizes = ['S', 'M', 'L', 'XL'];

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            t.inputSize,
            style: AppTextStyle.s20w400Orange.copyWith(color: AppColors.black),
          ),
          TextField(
            controller: _controller,
          ),
          const SizedBox(height: AppProps.kPageMargin),
          Wrap(
            spacing: 16.0,
            children: _sizes.map((size) {
              return Chip(
                deleteIcon: SvgPicture.asset(Assets.icons.cross),
                label: Text(size),
                onDeleted: () {
                  setState(() {
                    _sizes.remove(size);
                  });
                },
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
