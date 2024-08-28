import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:neobis_smart_tailor/core/app/io_ui.dart';
import 'package:neobis_smart_tailor/features/organization/pages/positions/bloc/positions_bloc.dart';
import 'package:neobis_smart_tailor/features/organization/pages/positions/presentation/positions_content.dart';
import 'package:neobis_smart_tailor/injection/injection.dart';

@RoutePage()
class PositionsScreen extends StatelessWidget {
  const PositionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: getIt<PositionsBloc>(),
      child: BlocListener<PositionsBloc, PositionsState>(
        listener: _listenerBloc,
        child: const PositionsContent(),
      ),
    );
  }

  void _listenerBloc(BuildContext context, PositionsState state) {
    state.stateStatus.whenOrNull(
      success: (value) {
        _showCustomDialog(
          context: context,
          contentText:
              'Созданные должности будут находиться ниже по Иерархии, и им нельзя выдать права доступа, которые недоступны человеку создающему новую роль',
          buttonText: 'Понятно',
          onButtonPressed: () {
            _showCustomDialog(
              context: context,
              contentText: 'Выдача прав доступа сохранена!',
              buttonText: 'Понятно',
              onButtonPressed: () {
                AutoRouter.of(context).pop();
              },
            );
          },
        );
      },
      failure: (msg) {
        AppSnackBar.show(context: context, titleText: msg, error: true);
      },
    );
  }

  void _showCustomDialog({
    required BuildContext context,
    required String contentText,
    required String buttonText,
    required VoidCallback onButtonPressed,
  }) {
    showDialog(
      context: context,
      builder: (context) {
        return CupertinoAlertDialog(
          content: Text(
            contentText,
            style: AppTextStyle.text14.copyWith(fontWeight: FontWeight.w600),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
                onButtonPressed();
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 12),
                child: Text(
                  buttonText,
                  style: AppTextStyle.textField16.copyWith(
                    color: AppColors.modalBlue,
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
