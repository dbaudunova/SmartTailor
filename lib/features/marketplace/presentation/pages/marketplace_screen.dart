import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:neobis_smart_tailor/core/app/widgets/app_bar_style.dart';
import 'package:neobis_smart_tailor/features/marketplace/presentation/pages/widgets/marketplace_tabbar_view.dart';
import 'package:neobis_smart_tailor/features/marketplace/presentation/pages/widgets/tab_bar_widget.dart';
import 'package:neobis_smart_tailor/gen/strings.g.dart';

@RoutePage()
class MarketplaceScreen extends StatefulWidget {
  const MarketplaceScreen({super.key});

  @override
  State<MarketplaceScreen> createState() => _MarketplaceScreenState();
}

class _MarketplaceScreenState extends State<MarketplaceScreen> with TickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(
      length: Labels.values.length,
      vsync: this,
    );

    // context.read<HomeBloc>().add(Load());
    tabController.addListener(() {
      setState(() {});
      // if (tabController.indexIsChanging) {
      //   context.read<HomeBloc>().add(
      //         Load(),
      //       );
      // }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarStyle(
        title: t.marketplace,
      ),
      body: Column(
        children: [
          TabBarWidget(tabController: tabController),
          const SizedBox(height: 16),
          Expanded(child: MarketplaceTabBarView(tabController: tabController))
        ],
      ),
    );
  }
}
