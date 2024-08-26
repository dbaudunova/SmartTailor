import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:neobis_smart_tailor/core/app/router/app_routes.dart';
import 'package:neobis_smart_tailor/core/app/widgets/app_bar_style.dart';
import 'package:neobis_smart_tailor/core/app/widgets/empty_refresh_list_text.dart';
import 'package:neobis_smart_tailor/core/network/entity/state_status.dart';
import 'package:neobis_smart_tailor/features/profile/domain/model/announcement_type.dart';
import 'package:neobis_smart_tailor/features/profile/presentation/pages/purchases/bloc/purchases_bloc.dart';
import 'package:neobis_smart_tailor/features/profile/presentation/widgets/purchases/purchase_card_item.dart';

class MyPurchasesContent extends StatefulWidget {
  const MyPurchasesContent({super.key});

  @override
  State<MyPurchasesContent> createState() => _MyPurchasesContentState();
}

class _MyPurchasesContentState extends State<MyPurchasesContent> {
  PurchasesBloc get _bloc => context.read<PurchasesBloc>();

  @override
  void initState() {
    _bloc.add(const PurchasesEvent.getMyPurchases());
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16).copyWith(top: 16),
        child: BlocBuilder<PurchasesBloc, PurchasesState>(
          builder: (context, state) {
            return state.stateStatus != const StateStatus.loading()
                ? state.purchases!.isNotEmpty
                    ? _buildListView(state)
                    : Center(
                        child: EmptyRefreshListText(
                          onRefresh: () async {
                            _bloc.add(const PurchasesEvent.getMyPurchases());
                          },
                        ),
                      )
                : const Center(
                    child: CircularProgressIndicator(),
                  );
          },
        ),
      ),
    );
  }

  Widget _buildListView(PurchasesState state) {
    return NotificationListener(
      onNotification: (scrollNotification) {
        if (state.isLast) {
          return false;
        } else if (scrollNotification is ScrollEndNotification && scrollNotification.metrics.extentAfter == 0) {
          _bloc.add(const PurchasesEvent.loadMoreElements());
        }

        return false;
      },
      child: RefreshIndicator(
        onRefresh: () async {
          _bloc.add(const PurchasesEvent.getMyPurchases());
        },
        child: ListView.builder(
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
                  var type = typeFromString(purchaese.type);
                  switch (type) {
                    case AnnouncementType.order:
                      AutoRouter.of(context).push(OrderDetailRoute(id: purchaese.id!));
                      break;
                    case AnnouncementType.equipment:
                      AutoRouter.of(context).push(EquipmentDetailRoute(id: purchaese.id!));
                      break;
                    case AnnouncementType.service:
                      AutoRouter.of(context).push(ServiceDetailRoute(id: purchaese.id!));
                      break;
                    default:
                      throw Exception('Invalid Announcement Type');
                  }
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
