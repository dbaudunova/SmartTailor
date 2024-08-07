import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:neobis_smart_tailor/features/marketplace/domain/entitys/common_entity.dart';
import 'package:neobis_smart_tailor/features/marketplace/presentation/widgets/marketplace_card_widget.dart';

class ListViewWidget<Event, State> extends StatelessWidget {
  final PageRouteInfo Function({required int id}) route;
  final Event Function(BuildContext context) loadMoreEvent;
  final Event Function(BuildContext context) loadfirstPage;
  final Function(BuildContext context) getList;
  final Bloc<Event, State> Function(BuildContext context) getBloc;

  final bool? isLast;

  const ListViewWidget({
    required this.route,
    required this.loadMoreEvent,
    required this.getBloc,
    required this.getList,
    required this.loadfirstPage,
    this.isLast = false,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var bloc = getBloc(context);
    List<GeneralEntity> list = getList(context);

    return NotificationListener<ScrollNotification>(
      onNotification: (scrollNotification) {
        if (isLast == true) {
          return false;
        } else if (scrollNotification is ScrollEndNotification &&
            scrollNotification.metrics.extentAfter == 0) {
          bloc.add(loadMoreEvent(context));
        }

        return false;
      },
      child: RefreshIndicator(
        onRefresh: () async {
          bloc.add(loadfirstPage(context));
        },
        child: ListView.builder(
            itemCount: list.length,
            itemBuilder: (context, index) {
              return MarketplaceCard(
                onTap: () {
                  context.router.push(route(
                    id: list[index].id!,
                  ));
                },
                image: list[index].imageUrl!,
                description: list[index].description!,
                title: list[index].name!,
              );
            }),
      ),
    );
  }
}
