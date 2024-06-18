import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:neobis_smart_tailor/core/app/io_ui.dart';
import 'package:neobis_smart_tailor/gen/strings.g.dart';

@RoutePage()
class OrganizationScreen extends StatefulWidget {
  const OrganizationScreen({super.key});

  @override
  State<OrganizationScreen> createState() => _OrganizationScreenState();
}

int selectedSegment = 0;

class _OrganizationScreenState extends State<OrganizationScreen> with RestorationMixin {
  RestorableInt currentSegment = RestorableInt(0);

  @override
  Widget build(BuildContext context) {
    const segmentedControlMaxWidth = 450.0;
    final children = <int, Widget>{
      0: Text(t.order),
      1: Text(t.equipment),
      2: Text(t.service),
    };
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        backgroundColor: AppColors.background,
        automaticallyImplyLeading: false,
        middle: SizedBox(
          width: segmentedControlMaxWidth,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: CupertinoSlidingSegmentedControl<int>(
              children: children,
              onValueChanged: onValueChanged,
              groupValue: currentSegment.value,
            ),
          ),
        ),
      ),
      child: CupertinoNavigationBar(
        backgroundColor: AppColors.background,
        automaticallyImplyLeading: false,
        middle: SizedBox(
          width: segmentedControlMaxWidth,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: CupertinoSlidingSegmentedControl<int>(
              children: children,
              onValueChanged: onValueChanged,
              groupValue: currentSegment.value,
            ),
          ),
        ),
      ),
    );
  }

  @override
  String get restorationId => 'cupertino_segmented_control';

  @override
  void restoreState(RestorationBucket? oldBucket, bool initialRestore) {
    registerForRestoration(currentSegment, 'current_segment');
  }

  void onValueChanged(int? newValue) {
    setState(() {
      currentSegment.value = newValue!;
    });
  }
}
