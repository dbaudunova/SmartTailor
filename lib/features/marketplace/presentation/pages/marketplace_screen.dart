import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:neobis_smart_tailor/core/app/io_ui.dart';
import 'package:neobis_smart_tailor/core/app/widgets/app_bar_style.dart';
import 'package:neobis_smart_tailor/features/marketplace/presentation/pages/widgets/marketplace_card_widget.dart';
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
          Expanded(
              child: TabBarView(
            controller: tabController,
            children: [
              ListView.builder(
                  shrinkWrap: false,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return MarketplaceCard(
                      tabController: tabController,
                      description: t.orderDesc,
                      title: t.order,
                      data: DateTime(2014, 4, 10),
                      price: 1000,
                    );
                  }),
              ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return MarketplaceCard(
                      title: t.nitki,
                      price: 2000,
                      description: t.equipmentDesk,
                      tabController: tabController,
                    );
                  }),
              ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return MarketplaceCard(
                      description: t.serviceDesc,
                      title: t.needIronman,
                      tabController: tabController,
                    );
                  }),
            ],
          ))
        ],
      ),
    );
  }
}
