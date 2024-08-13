import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:neobis_smart_tailor/core/app/io_ui.dart';
import 'package:neobis_smart_tailor/core/app/router/app_routes.dart';
import 'package:neobis_smart_tailor/core/app/widgets/app_bar_style.dart';
import 'package:neobis_smart_tailor/core/app/widgets/fab_button_widget.dart';
import 'package:neobis_smart_tailor/core/app/widgets/search_order_sheet.dart';
import 'package:neobis_smart_tailor/features/profile/presentation/pages/purchases/bloc/purchases_bloc.dart';
import 'package:neobis_smart_tailor/features/profile/presentation/widgets/purchases/purchase_card_item.dart';

class MyPurchasesContent extends StatefulWidget {
  const MyPurchasesContent({super.key});

  @override
  State<MyPurchasesContent> createState() => _MyPurchasesContentState();
}

class _MyPurchasesContentState extends State<MyPurchasesContent> {
  @override
  void initState() {
    context.read<PurchasesBloc>().add(PurchasesEvent.getPurchasesList(pageNumber: 0));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarStyle(
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            AutoRouter.of(context).maybePop();
          },
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
          ),
        ),
        title: 'Мои покупки',
      ),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16).copyWith(top: 16),
            child: BlocBuilder<PurchasesBloc, PurchasesState>(
              builder: (context, state) {
                return state.purchases!.isNotEmpty ? _buildListView(state) : _buildEmptyList();
              },
            ),
          ),
          FabButtonWidget(onTap: () {
            showModalBottomSheet<void>(
              context: context,
              builder: (BuildContext context) {
                return const SearchOrderSheet();
              },
            );
          }),
        ],
      ),
    );
  }

  Center _buildEmptyList() {
    return const Center(
        child: Text(
      'Cписок пуст',
      style: AppTextStyle.title24,
    ));
  }

  ListView _buildListView(PurchasesState state) {
    return ListView.builder(
      itemCount: state.purchases!.length,
      itemBuilder: (context, index) {
        var purchaese = state.purchases![index];
        return SizedBox(
          width: MediaQuery.of(context).size.width,
          child: PurchaseCardItem(
            purchaseImage: purchaese.imageUrl!,
            orderNumber: 'Заказ ${purchaese.id}',
            price: '${purchaese.price!.toInt()} сом',
            authorName: '${purchaese.authorFullName}',
            description: '${purchaese.description}',
            onTap: () {
              AutoRouter.of(context).push(PurchaseDetailRoute(id: purchaese.id!));
            },
          ),
        );
      },
    );
  }

  // Widget? _buildItemBuilder() {
  //   return SizedBox(
  //     width: MediaQuery.of(context).size.width,
  //     child: PurchaseCardItem(
  //       purchaseImage:
  //           'https://images.squarespace-cdn.com/content/v1/56f4747c2eeb8139660284f2/1493401211825-00J1I9Y6J2AJOEHOPRX4/IMG_7335.JPG',
  //       orderNumber: 'Заказ №5',
  //       price: '1000 сом',
  //       authorName: 'Sandy Wilder Cheng',
  //       description: 'Lorem ipsum dolor sit amet, consectetur adipiscing eliе...',
  //       onTap: () {
  //         AutoRouter.of(context).push(const PurchaseDetailRoute());
  //       },
  //     ),
  //   );
  // }
}
