import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:neobis_smart_tailor/core/app/io_ui.dart';
import 'package:neobis_smart_tailor/core/app/router/app_routes.dart';
import 'package:neobis_smart_tailor/core/app/widgets/alert_dialog_style.dart';
import 'package:neobis_smart_tailor/features/profile/presentation/bloc/profile/profile_bloc.dart';
import 'package:neobis_smart_tailor/features/profile/presentation/pages/personal_data/personal_data_content.dart';
import 'package:neobis_smart_tailor/injection/injection.dart';

@RoutePage()
class PersonalDataScreen extends StatelessWidget {
  const PersonalDataScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: getIt<ProfileBloc>(),
      child: BlocListener<ProfileBloc, ProfileState>(
        listener: _listenerBloc,
        child: const PersonalDataContent(),
      ),
    );
  }

  void _listenerBloc(BuildContext context, ProfileState state) {
    state.stateStatus.whenOrNull(
      success: (val) {
        if (val == true) {
          showDialog(
            context: context,
            builder: (context) {
              return AlertDialogStyle(
                title: 'Сохранено!',
                content: 'Ваши данные сохранены!',
                buttonText: 'Закрыть',
                onButtonPressed: () {
                  Navigator.pop(context);
                },
              );
            },
          );
        }
      },
      failure: (msg) {
        AppSnackBar.show(context: context, titleText: msg!, error: true);
      },
    );
  }
}
