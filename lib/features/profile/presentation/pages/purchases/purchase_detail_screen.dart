import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:neobis_smart_tailor/features/profile/domain/model/announcement_type.dart';
import 'package:neobis_smart_tailor/features/profile/presentation/pages/purchases/bloc/purchases_bloc.dart';
import 'package:neobis_smart_tailor/features/profile/presentation/pages/purchases/purchase_detail_content.dart';
import 'package:neobis_smart_tailor/injection/injection.dart';

@RoutePage()
class PurchaseDetailScreen extends StatelessWidget {
  final int id;
  final AnnouncementType type;
  const PurchaseDetailScreen({required this.id, required this.type, super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: getIt<PurchasesBloc>(),
      child: BlocListener<PurchasesBloc, PurchasesState>(
        listener: _listenerBloc,
        child: PurchaseDetailContent(
          id: id,
          type: type,
        ),
      ),
    );
  }

  void _listenerBloc(BuildContext context, PurchasesState state) {
    state.stateStatus.whenOrNull(
      success: (val) {
        if (val == true) {
          // showDialog(
          //   context: context,
          //   builder: (context) {
          //     return AlertDialogStyle(
          //       title: 'Ура!',
          //       content: 'Вы успешно создали заказ!',
          //       buttonText: 'Понятно',
          //       onButtonPressed: () {
          //         Navigator.of(context).pop();
          //         WidgetsBinding.instance.addPostFrameCallback((_) {
          //           AutoRouter.of(context).pushAndPopUntil(
          //             const MarketplaceRoute(),
          //             predicate: (route) => false,
          //           );
          //         });
          //       },
          //     );
          //   },
          // );
        }
      },
      failure: (msg) {
        // AppSnackBar.show(context: context, titleText: msg, error: true);
      },
    );
  }
}
