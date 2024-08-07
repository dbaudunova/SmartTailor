// import 'dart:io';

// import 'package:bloc/bloc.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:injectable/injectable.dart';
// import 'package:neobis_smart_tailor/core/network/entity/failure.dart';
// import 'package:neobis_smart_tailor/core/network/entity/state_status.dart';
// import 'package:neobis_smart_tailor/features/organization/presentation/pages/organization/domain/use_case/get_profile_use_case.dart';

// part 'organization_event.dart';
// part 'organization_state.dart';
// part 'organization_bloc.freezed.dart';

// @singleton
// class OrganizationBloc extends Bloc<OrganizationEvent, OrganizationState> {
//   final GetProfileUseCase getProfileUseCase;
//   // final CreateOrganizationUseCase createOrganizationUseCase;

//   OrganizationBloc(
//     this.getProfileUseCase,
//     // this.createOrganizationUseCase,
//   ) : super(
//           const OrganizationState(
//             null,
//             stateStatus: StateStatus.initial(),
//           ),
//         ) {
//     on<_GetOrganization>(_getProfile);
//     // on<_CreateOrganization>(_createOrganization);
//   }

//   Future<void> _getProfile(
//     _GetOrganization event,
//     Emitter<OrganizationState> emit,
//   ) async {
//     emit(state.copyWith(stateStatus: const StateStatus.loading()));
//     try {
//       final results = await getProfileUseCase.call();

//       emit(state.copyWith(
//         stateStatus: const StateStatus.success(),
//       ));
//     } catch (e) {
//       final errorMessage = e is Failure ? e.message : 'Произошла ошибка';
//       emit(state.copyWith(stateStatus: StateStatus.failure(message: errorMessage!)));
//     }
//   }

//   // Future<void> _createOrganization(
//   //   _CreateOrganization event,
//   //   Emitter<OrganizationState> emit,
//   // ) async {
//   //   emit(state.copyWith(stateStatus: const StateStatus.loading()));
//   //   try {
//   //     await createOrganizationUseCase.call(model: event.createModel, image: state.image!);

//   //     emit(state.copyWith(stateStatus: const StateStatus.success('Успешно создано')));
//   //   } catch (e) {
//   //     final errorMessage = e is Failure ? e.message : 'Произошла ошибка';
//   //     emit(state.copyWith(stateStatus: StateStatus.failure(message: errorMessage!)));
//   //   }
//   // }
// }
