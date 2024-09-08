import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:neobis_smart_tailor/core/app/widgets/infinity_scroll_list/generic_Infinite_scroll_list_widget.dart';
import 'package:neobis_smart_tailor/core/network/entity/state_status.dart';
import 'package:neobis_smart_tailor/features/profile/domain/entitys/announcement_entity.dart';
import 'package:neobis_smart_tailor/features/profile/presentation/bloc/announcement/announcement_bloc.dart';
import 'package:neobis_smart_tailor/features/profile/presentation/widgets/my_announcements/announcement_container.dart';

class MyServicesListWidget extends StatefulWidget {
  const MyServicesListWidget({super.key});

  @override
  _MyServicesListWidgetState createState() => _MyServicesListWidgetState();
}

class _MyServicesListWidgetState extends State<MyServicesListWidget> {
  AnnouncementBloc get bloc => context.read<AnnouncementBloc>();

  final PagingController<int, AnnouncementEntity> _pagingController =
      PagingController(firstPageKey: 0, invisibleItemsThreshold: 1);

  @override
  Widget build(BuildContext context) {
    return GenericInfiniteScrollListWidget<AnnouncementEntity, AnnouncementBloc, AnnouncementState>(
      bloc: bloc,
      pagingController: _pagingController,
      itemBuilder: (context, item, index) => AnnouncementsContainer(
        id: item.id!,
        description: item.description!,
        image: item.imagePath!,
        title: item.name!,
        type: item.type!,
      ),
      onPageRequest: (pageKey) {
        bloc.add(AnnouncementEvent.loadMyServices(page: pageKey));
      },
      onStateChange: (state, pagingController) {
        if (state.stateStatus == const StateStatus.success()) {
          final isLastPage = state.lastForServices;
          if (isLastPage!) {
            pagingController.appendLastPage(state.services);
          } else {
            final nextPageKey = pagingController.nextPageKey! + 1;
            pagingController.appendPage(state.services, nextPageKey);
          }
        } else if (state.stateStatus == const StateStatus.failure(message: 'error')) {
          pagingController.error = const StateStatus.failure(message: 'error');
        }
      },
    );
  }
}
