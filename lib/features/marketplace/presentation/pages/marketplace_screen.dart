import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:neobis_smart_tailor/core/app/io_ui.dart';
import 'package:neobis_smart_tailor/core/app/widgets/app_bar_style.dart';
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
    // tabController.addListener(() {
    //   if (tabController.indexIsChanging) {
    //     context.read<HomeBloc>().add(
    //           Load(),
    //         );
    //   }
    // });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarStyle(
        title: t.marketplace,
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          left: AppProps.kPageMargin,
          right: AppProps.kPageMargin,
          // top: AppProps.kPageMargin,
        ),
        child: Column(
          children: [
            TabBarWidget(tabController: tabController),
            const SizedBox(height: 16),
            Expanded(
              child: ListView.builder(
                  // physics: const PageScrollPhysics(),
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.only(bottom: 16),
                      padding: const EdgeInsets.only(bottom: 8, left: 8, right: 16, top: 8),
                      height: 87,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: AppColors.white,
                      ),
                      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                        Row(
                          children: [
                            Container(
                              height: 71,
                              width: 80,
                              margin: const EdgeInsets.only(
                                right: 16,
                              ),
                              decoration: const BoxDecoration(
                                  color: AppColors.error,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10),
                                  )),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  t.orders,
                                  style: AppTextStyle.textField16,
                                ),
                                const SizedBox(height: 8),
                                Text(
                                  'Описание заказа',
                                  style: AppTextStyle.textField16.copyWith(
                                    fontSize: 14,
                                    color: AppColors.greyText,
                                  ),
                                ),
                                const SizedBox(height: 8),
                                Text(
                                  'Срок: 10 апреля 2024',
                                  style: AppTextStyle.textField16.copyWith(
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '1000 сом',
                              style: AppTextStyle.textField16.copyWith(
                                color: AppColors.black.withOpacity(0.60),
                              ),
                            ),
                            // Container(
                            //   height: 24,
                            //   width: 54,
                            //   decoration:
                            //       BoxDecoration(borderRadius: BorderRadius.circular(100), color: AppColors.error),
                            //   child: Center(
                            //     child: Text(
                            //       'Занят',
                            //       style: AppTextStyle.textField16.copyWith(
                            //         fontSize: 12,
                            //         color: AppColors.white,
                            //       ),
                            //     ),
                            //   ),
                            // ),
                          ],
                        )
                      ]),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
