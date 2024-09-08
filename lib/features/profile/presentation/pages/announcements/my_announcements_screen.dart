import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:neobis_smart_tailor/core/app/io_ui.dart';
import 'package:neobis_smart_tailor/features/profile/presentation/bloc/announcement/announcement_bloc.dart';
import 'package:neobis_smart_tailor/features/profile/presentation/pages/announcements/my_announcements_content.dart';
import 'package:neobis_smart_tailor/injection/injection.dart';

@RoutePage()
class MyAnnouncementsScreen extends StatelessWidget {
  const MyAnnouncementsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: getIt<AnnouncementBloc>(),
      child: BlocListener<AnnouncementBloc, AnnouncementState>(
        listener: _listenerBloc,
        child: const MyAnnouncementsContent(),
      ),
    );
  }

  void _listenerBloc(BuildContext context, AnnouncementState state) {
    state.stateStatus.whenOrNull(
      success: (val) {},
      failure: (msg) {
        AppSnackBar.show(context: context, titleText: msg!, error: true);
      },
    );
  }
}
