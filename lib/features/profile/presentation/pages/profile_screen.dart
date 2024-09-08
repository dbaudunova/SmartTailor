import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:neobis_smart_tailor/core/app/io_ui.dart';
import 'package:neobis_smart_tailor/core/app/router/app_routes.dart';
import 'package:neobis_smart_tailor/core/app/widgets/alert_dialog_style.dart';
import 'package:neobis_smart_tailor/features/profile/presentation/bloc/profile/profile_bloc.dart';
import 'package:neobis_smart_tailor/features/profile/presentation/pages/profile_content.dart';
import 'package:neobis_smart_tailor/injection/injection.dart';

@RoutePage()
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: getIt<ProfileBloc>(),
      child: BlocListener<ProfileBloc, ProfileState>(
        listener: _listenerBloc,
        child: const ProfileContent(),
      ),
    );
  }

  void _listenerBloc(BuildContext context, ProfileState state) {
    state.stateStatus.whenOrNull(
      success: (val) {},
      failure: (msg) {
        AppSnackBar.show(context: context, titleText: msg!, error: true);
      },
    );
  }
}
