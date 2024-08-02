import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/order_detail_screen/presentation/bloc/order_detail_bloc.dart';
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/order_detail_screen/presentation/order_detail_content.dart';
import 'package:neobis_smart_tailor/injection/injection.dart';

@RoutePage()
class OrderDetailScreen extends StatelessWidget {
  final int id;
  const OrderDetailScreen({required this.id, super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: getIt<OrderDetailBloc>(),
      child: OrderDetailContent(
        id: id,
      ),
    );
  }
}
