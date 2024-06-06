import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:neobis_smart_tailor/core/app/io_ui.dart';
import 'package:neobis_smart_tailor/core/app/router/app_routes.dart';
import 'package:neobis_smart_tailor/gen/assets.gen.dart';

@RoutePage()
class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({super.key});

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  final List<PageRouteInfo> _buildRoutes = const [
    HomeRoute(),
    SearchRoute(),
    MarketplaceRoute(),
    ProfileRoute(),
  ];

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: _buildRoutes,
      bottomNavigationBuilder: (_, tabsRouter) {
        return Container(
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(AppProps.kMediumBorderRadius),
              topLeft: Radius.circular(AppProps.kMediumBorderRadius),
            ),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                blurRadius: 10.1,
                spreadRadius: 1,
                color: Colors.black.withOpacity(0.20),
                offset: const Offset(0, -3),
              ),
            ],
          ),
          child: SizedBox(
            height: AppProps.kPageMarginX5,
            child: Row(
              children: _navBarsItems(
                activeIndex: tabsRouter.activeIndex,
                onSelectedItem: tabsRouter.setActiveIndex,
              ).map((e) => Expanded(child: e)).toList(),
            ),
          ),
        );
      },
    );
  }

  List<Widget> _navBarsItems({
    required int activeIndex,
    required Function(int index) onSelectedItem,
  }) {
    return [
      _buildNavItem(
        item: BottomMenuItem(
          index: 0,
          assetName: [Assets.icons.home],
          title: 'Главная',
        ),
        isActive: activeIndex == 0,
        onSelectedItem: onSelectedItem,
      ),
      _buildNavItem(
        item: BottomMenuItem(
          index: 1,
          assetName: [
            Assets.icons.search,
          ],
          title: 'Поиск',
        ),
        isActive: activeIndex == 1,
        onSelectedItem: onSelectedItem,
      ),
      _buildNavItem(
        item: BottomMenuItem(
          index: 2,
          assetName: [
            Assets.icons.basket,
          ],
          title: 'Маркетплейс',
        ),
        isActive: activeIndex == 2,
        onSelectedItem: onSelectedItem,
      ),
      _buildNavItem(
        item: BottomMenuItem(
          index: 3,
          assetName: [
            Assets.icons.profile,
          ],
          title: 'Профиль',
        ),
        isActive: activeIndex == 3,
        onSelectedItem: onSelectedItem,
      ),
    ];
  }
}

Widget _buildNavItem({
  bool isActive = true,
  required BottomMenuItem item,
  required Function(int index) onSelectedItem,
}) {
  const selectedColor = AppColors.darkBlue;
  const unselectedColor = AppColors.greyText;
  return GestureDetector(
    onTap: () {
      onSelectedItem(item.index);
    },
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          width: AppProps.kTwentyMargin,
          height: AppProps.kTwentyMargin,
          child: SvgPicture.asset(
            item.assetName[0],
            colorFilter: ColorFilter.mode(
              isActive ? selectedColor : unselectedColor,
              BlendMode.srcIn,
            ),
          ),
        ),
        Text(
          item.title,
          style: TextStyle(
            color: isActive ? selectedColor : unselectedColor,
            fontSize: AppProps.kMediumMargin,
          ),
        ),
      ],
    ),
  );
}

class BottomMenuItem {
  List<String> assetName;
  int index;
  String title;

  BottomMenuItem({
    required this.assetName,
    required this.index,
    required this.title,
  });
}
