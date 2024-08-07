import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:neobis_smart_tailor/core/network/entity/failure.dart';
import 'package:neobis_smart_tailor/core/network/entity/state_status.dart';
import 'package:neobis_smart_tailor/features/organization/pages/invite_employee/domain/use_case/invite_employee_use_case.dart';

part 'invite_employee_event.dart';
part 'invite_employee_state.dart';
part 'invite_employee_bloc.freezed.dart';

@singleton
class InviteEmployeeBloc extends Bloc<InviteEmployeeEvent, InviteEmployeeState> {
  final InviteEmployeeUseCase inviteEmployeeUseCase;

  InviteEmployeeBloc(
    this.inviteEmployeeUseCase,
  ) : super(
          const InviteEmployeeState(
            stateStatus: StateStatus.initial(),
          ),
        ) {
    on<_SendInvite>(_sendInvite);
  }

  Future<void> _sendInvite(
    _SendInvite event,
    Emitter<InviteEmployeeState> emit,
  ) async {
    emit(state.copyWith(stateStatus: const StateStatus.loading()));
    try {
      // final results = await inviteEmployeeUseCase.call();
      emit(
        state.copyWith(
          stateStatus: const StateStatus.success(),
        ),
      );
    } catch (e) {
      final errorMessage = e is Failure ? e.message : 'Произошла ошибка';
      emit(state.copyWith(stateStatus: StateStatus.failure(message: errorMessage!)));
    }
  }
}
