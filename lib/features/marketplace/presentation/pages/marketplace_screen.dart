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

  // @override
  // void initState() {
  //   super.initState();
  //   tabController = TabController(
  //     length: Labels.values.length,
  //     vsync: this,
  //   );

  //   // context.read<HomeBloc>().add(Load());
  //   tabController.addListener(() {
  //     setState(() {});
  //     // if (tabController.indexIsChanging) {
  //     //   context.read<HomeBloc>().add(
  //     //         Load(),
  //     //       );
  //     // }
  //   });
  // }

  // @override
  // void initState() {
  //   super.initState();
  //   _pageController = PageController(initialPage: currentSegment.value);
  // }

  @override
  Widget build(BuildContext context) {
    const segmentedControlMaxWidth = double.infinity;
    final children = <int, Widget>{
      0: Text(t.order),
      1: Text(t.equipment),
      2: Text(t.service),
    };

    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        backgroundColor: AppColors.background,
        leading: Text(
          t.marketplace,
          style: AppTextStyle.s20w400Orange.copyWith(color: AppColors.black, fontWeight: FontWeight.w600),
        ),
      ),
      child: Column(
        children: [
          CupertinoNavigationBar(
            backgroundColor: AppColors.background,
            automaticallyImplyLeading: false,
            middle: SizedBox(
              width: segmentedControlMaxWidth,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: CupertinoSlidingSegmentedControl<int>(
                  children: children,
                  // onValueChanged: onValueChanged,
                  onValueChanged: (int? newValue) {
                    if (newValue != null) {
                      onValueChanged(newValue);
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
          // Expanded(child: MarketplaceTabBarView(tabIndex: currentSegment.value))
        ],
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
