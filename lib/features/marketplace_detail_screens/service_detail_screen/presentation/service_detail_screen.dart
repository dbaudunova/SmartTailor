import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/service_detail_screen/presentation/bloc/service_detail_bloc.dart';
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/service_detail_screen/presentation/service_detail_content.dart';
import 'package:neobis_smart_tailor/injection/injection.dart';

@RoutePage()
class ServiceDetailScreen extends StatelessWidget {
  final int id;
  const ServiceDetailScreen({required this.id, super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: getIt<ServiceDetailBloc>(),
      child: ServiceDateilContent(
        id: id,
      ),
    );
  }
}
