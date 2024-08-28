import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:neobis_smart_tailor/core/network/entity/failure.dart';
import 'package:neobis_smart_tailor/core/network/entity/state_status.dart';
import 'package:neobis_smart_tailor/features/organization/data/models/send_invite_model/send_invite_model.dart';
import 'package:neobis_smart_tailor/features/organization/domain/use_case/get_available_positions_use_case.dart';
import 'package:neobis_smart_tailor/features/organization/domain/use_case/invite_employee_use_case.dart';
import 'package:neobis_smart_tailor/features/organization/domain/entitys/position_entity.dart';

part 'invite_employee_event.dart';
part 'invite_employee_state.dart';
part 'invite_employee_bloc.freezed.dart';

@singleton
class InviteEmployeeBloc extends Bloc<InviteEmployeeEvent, InviteEmployeeState> {
  final InviteEmployeeUseCase inviteEmployeeUseCase;
  final GetAvailablePositionsUseCase getAvailablePositionsUseCase;

  InviteEmployeeBloc(
    this.inviteEmployeeUseCase,
    this.getAvailablePositionsUseCase,
  ) : super(
          const InviteEmployeeState(stateStatus: StateStatus.initial(), availablePositions: []),
        ) {
    on<_SendInvite>(_sendInvite);
    on<_GetAvailablePostion>(_getAvailablePostion);
  }

  Future<void> _getAvailablePostion(
    _GetAvailablePostion event,
    Emitter<InviteEmployeeState> emit,
  ) async {
    emit(state.copyWith(stateStatus: const StateStatus.loading()));
    try {
      var positions = await getAvailablePositionsUseCase.call();
      emit(
        state.copyWith(stateStatus: const StateStatus.success(), availablePositions: positions),
      );
    } catch (e) {
      final errorMessage = e is Failure ? e.message : 'Произошла ошибка';
      emit(state.copyWith(stateStatus: StateStatus.failure(message: errorMessage!)));
    }
  }

  Future<void> _sendInvite(
    _SendInvite event,
    Emitter<InviteEmployeeState> emit,
  ) async {
    emit(state.copyWith(stateStatus: const StateStatus.loading()));
    try {
      await inviteEmployeeUseCase.call(event.model);
      emit(
        state.copyWith(
          stateStatus: const StateStatus.success(true),
        ),
      );
    } catch (e) {
      final errorMessage = e is Failure ? e.message : 'Произошла ошибка';
      emit(state.copyWith(stateStatus: StateStatus.failure(message: errorMessage!)));
    }
  }
}
