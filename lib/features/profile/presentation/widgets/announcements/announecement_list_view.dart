import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:neobis_smart_tailor/features/profile/domain/model/announcement_entity.dart';
import 'package:neobis_smart_tailor/features/profile/presentation/widgets/announcements/announcement_container.dart';

class AnnouncementListView<Event, State> extends StatelessWidget {
  final PageRouteInfo Function({required int id})? route;
  final Event Function(BuildContext context) loadMoreEvent;
  final Event Function(BuildContext context) loadfirstPage;
  final Function(BuildContext context) getList;
  final Bloc<Event, State> Function(BuildContext context) getBloc;
  final bool isLast;

  const AnnouncementListView({
    required this.loadMoreEvent,
    required this.getBloc,
    required this.getList,
    required this.loadfirstPage,
    this.route,
    this.isLast = false,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var bloc = getBloc(context);
    List<AnnouncementEntity> list = getList(context);

    return NotificationListener<ScrollNotification>(
      onNotification: (scrollNotification) {
        if (!isLast &&
            scrollNotification is ScrollEndNotification &&
            scrollNotification.metrics.extentAfter == 0) {
          bloc.add(loadMoreEvent(context));
        }
        return false;
      },
      child: ListView.builder(
        itemCount: isLast ? list.length : list.length + 1,
        itemBuilder: (context, index) {
          if (index == list.length) {
            return const Center(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 16),
                child: CircularProgressIndicator(),
              ),
            );
          } else {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              child: AnnouncementsContainer(
                onTap: () {
                  context.router.push(route!(
                    id: list[index].id!,
                  ));
                },
                announcement: list[index],
              ),
            );
          }
        },
      ),
    );
  }
}
