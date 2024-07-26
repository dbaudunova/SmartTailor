import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:neobis_smart_tailor/features/profile/presentation/bloc/profile_bloc.dart';
import 'package:neobis_smart_tailor/features/profile/presentation/pages/profile_context.dart';
import 'package:neobis_smart_tailor/injection/injection.dart';

@RoutePage()
class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: getIt<ProfileBloc>(),
      child: const ProfileContext(),
    );
  }
}
