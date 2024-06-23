import 'package:auto_route/annotations.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:neobis_smart_tailor/core/app/io_ui.dart';
import 'package:neobis_smart_tailor/features/marketplace/presentation/pages/widgets/marketplace_tabbar_view.dart';
import 'package:neobis_smart_tailor/gen/strings.g.dart';

@RoutePage()
class MarketplaceScreen extends StatefulWidget {
  const MarketplaceScreen({super.key});

  @override
  State<MarketplaceScreen> createState() => _MarketplaceScreenState();
}

int selectedSegment = 0;

class _MarketplaceScreenState extends State<MarketplaceScreen> with RestorationMixin {
  RestorableInt currentSegment = RestorableInt(0);
  final PageController _pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    const segmentedControlMaxWidth = double.infinity;
    final children = <int, Widget>{
      0: _buildSegmentText(t.order, 0),
      1: _buildSegmentText(t.equipment, 1),
      2: _buildSegmentText(t.service, 2),
    };

    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        padding: const EdgeInsetsDirectional.only(top: 16, start: 16),
        border: const Border(),
        backgroundColor: AppColors.background,
        leading: Text(
          t.marketplace,
          style: AppTextStyle.s20w400Orange.copyWith(color: AppColors.black, fontWeight: FontWeight.w600),
        ),
      ),
      child: Column(
        children: [
          CupertinoNavigationBar(
            border: const Border(),
            backgroundColor: AppColors.background,
            automaticallyImplyLeading: false,
            middle: SizedBox(
              width: segmentedControlMaxWidth,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: CupertinoSlidingSegmentedControl<int>(
                  children: children,
                  onValueChanged: (int? newValue) {
                    if (newValue != null) {
                      _pageController.animateToPage(
                        newValue,
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeInOut,
                      );
                    }
                  },
                  groupValue: currentSegment.value,
                ),
              ),
            ),
          ),
          const SizedBox(height: 16),
          Expanded(
            child: PageView(
              controller: _pageController,
              onPageChanged: (index) {
                setState(() {
                  currentSegment.value = index;
                });
              },
              children: const [
                MarketplaceTabBarView(tabIndex: 0),
                MarketplaceTabBarView(tabIndex: 1),
                MarketplaceTabBarView(tabIndex: 2),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Text _buildSegmentText(String label, int index) {
    return Text(
      label,
      style: currentSegment.value == index
          ? AppTextStyle.text14.copyWith(fontWeight: FontWeight.w600)
          : AppTextStyle.text14,
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
