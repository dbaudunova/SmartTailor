import 'package:flutter/material.dart';
import 'package:neobis_smart_tailor/core/app/io_ui.dart';

class TabBarWidget extends StatelessWidget {
  const TabBarWidget({
    required this.tabController,
    required this.labels,
    super.key,
  });

  final TabController tabController;
  final List<String> labels;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: AppProps.kPageMargin,
        right: AppProps.kPageMargin,
      ),
      child: Container(
        padding: const EdgeInsets.all(2),
        height: 34,
        decoration: BoxDecoration(
          color: AppColors.buttonUnavailableBack,
          borderRadius: BorderRadius.circular(7),
        ),
        child: TabBar(
            dividerHeight: AppProps.kBigMargin,
            controller: tabController,
            onTap: (S) {},
            tabAlignment: TabAlignment.fill,
            dividerColor: AppColors.buttonUnavailableBack,
            unselectedLabelStyle: AppTextStyle.textField16.copyWith(
              color: AppColors.black,
              height: 1.5,
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
            labelStyle: AppTextStyle.textField16.copyWith(
              height: 1.5,
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: AppColors.black,
            ),
            tabs: labels.map((label) => Tab(text: label)).toList(),
            indicatorSize: TabBarIndicatorSize.tab,
            indicator: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(7)),
              color: AppColors.white,
            )),
      ),
    );
  }
}
