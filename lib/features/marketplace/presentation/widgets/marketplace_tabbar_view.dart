import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:neobis_smart_tailor/core/app/io_ui.dart';
import 'package:neobis_smart_tailor/core/app/router/app_routes.dart';
import 'package:neobis_smart_tailor/features/marketplace/presentation/pages/marketplace_detail_screen/presentation/widgets/custom_dropdown_widget.dart';
import 'package:neobis_smart_tailor/features/marketplace/presentation/widgets/marketplace_card_widget.dart';
import 'package:neobis_smart_tailor/gen/strings.g.dart';

class MarketplaceTabBarView extends StatelessWidget {
  const MarketplaceTabBarView({
    required this.tabIndex,
    super.key,
  });

  final int tabIndex;

  @override
  Widget build(BuildContext context) {
    if (tabIndex == 0) {
      return ListView.builder(
        shrinkWrap: false,
        itemCount: 10,
        itemBuilder: (context, index) {
          return MarketplaceCard(
            onTap: () {
              AutoRouter.of(context).push(
                MarketplaceDetailRoute(
                  sizeWidget: const CustomDropdown(),
                  title: t.orderDetail,
                  acceptOrderButton: true,
                  buyButton: true,
                  date: DateTime(2024, 4, 10),
                ),
              );
            },
            tabIndex: tabIndex,
            description: t.orderDesc,
            title: t.order,
            data: DateTime(2014, 4, 10),
            price: Text(
              '2000 сом',
              style: AppTextStyle.textField16.copyWith(
                color: AppColors.black.withOpacity(0.60),
              ),
            ),
          );
        },
      );
    } else if (tabIndex == 1) {
      return ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return MarketplaceCard(
            onTap: () {
              AutoRouter.of(context).push(
                MarketplaceDetailRoute(
                  title: t.equipmentDetail,
                  acceptOrderButton: false,
                  buyButton: true,
                ),
              );
            },
            title: t.nitki,
            price: Text(
              '1000 сом',
              style: AppTextStyle.textField16.copyWith(
                color: AppColors.yellow,
              ),
            ),
            description: t.equipmentDesk,
            tabIndex: tabIndex,
          );
        },
      );
    } else {
      return ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return MarketplaceCard(
            onTap: () {
              AutoRouter.of(context).push(
                MarketplaceDetailRoute(
                  title: t.service,
                  acceptOrderButton: false,
                  buyButton: false,
                ),
              );
            },
            description: t.serviceDesc,
            title: t.needIronman,
            tabIndex: tabIndex,
          );
        },
      );
    }
  }
}

// class MarketplaceTabBarView extends StatelessWidget {
//   const MarketplaceTabBarView({

//     required this.tabIndex,
//     super.key,
//   });

//   final int tabIndex;

//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//       shrinkWrap: false,
//       itemCount: 10,
//       itemBuilder: (context, index) {
//         return _buildMarketplaceCard(context, index);
//       },
//     );
//   }

//   Widget _buildMarketplaceCard(BuildContext context, int index) {
//     String title;
//     String description;
//     bool acceptOrderButton = false;
//     bool buyButton = false;
//     DateTime? date;
//     Widget? sizeWidget;
//     Text price;

//     switch (tabIndex) {
//       case 0:
//         title = t.order;
//         description = t.orderDesc;
//         acceptOrderButton = true;
//         buyButton = true;
//         date = DateTime(2024, 4, 10);
//         sizeWidget = const CustomDropdown();
//         price = Text(
//           '2000 сом',
//           style: AppTextStyle.textField16.copyWith(
//             color: AppColors.black.withOpacity(0.60),
//           ),
//         );
//         break;
//       case 1:
//         title = t.nitki;
//         description = t.equipmentDesk;
//         price = Text(
//           '1000 сом',
//           style: AppTextStyle.textField16.copyWith(
//             color: AppColors.yellow,
//           ),
//         );
//         break;
//       case 2:
//         title = t.needIronman;
//         description = t.serviceDesc;
//         price = Text(
//           '',
//           style: AppTextStyle.textField16.copyWith(
//             color: AppColors.black.withOpacity(0.60),
//           ),
//         );
//         break;
//       default:
//         return Container();
//     }

//     return MarketplaceCard(
//       onTap: () {
//         AutoRouter.of(context).push(
//           MarketplaceDetailRoute(
//             title: title,
//             description: description,
//             acceptOrderButton: acceptOrderButton,
//             buyButton: buyButton,
//             date: date,
//             sizeWidget: sizeWidget,
//           ),
//         );
//       },
//       title: title,
//       description: description,
//       tabIndex: tabIndex,
//       price: price,
//     );
//   }
// }
