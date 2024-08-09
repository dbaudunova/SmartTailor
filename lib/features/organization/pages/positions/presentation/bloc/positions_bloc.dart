import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:neobis_smart_tailor/core/network/entity/failure.dart';
import 'package:neobis_smart_tailor/core/network/entity/state_status.dart';
import 'package:neobis_smart_tailor/features/organization/pages/positions/data/models/_model/position_model.dart';
import 'package:neobis_smart_tailor/features/organization/pages/positions/domain/entitys/position_entity.dart';
import 'package:neobis_smart_tailor/features/organization/pages/positions/domain/use_case/add_position_use_case.dart';
import 'package:neobis_smart_tailor/features/organization/pages/positions/domain/use_case/get_all_positions_use_case.dart';

part 'positions_event.dart';
part 'positions_state.dart';
part 'positions_bloc.freezed.dart';

@singleton
class PositionsBloc extends Bloc<PositionsEvent, PositionsState> {
  final AddPositionUseCase addPositionUseCase;
  final GetAllPositionsUseCase getAllPositionsUseCase;

  PositionsBloc(
    this.addPositionUseCase,
    this.getAllPositionsUseCase,
  ) : super(
          const PositionsState(stateStatus: StateStatus.initial(), positions: []),
        ) {
    on<_CreatePosition>(_createPosition);
    on<_GetAllPositions>(_getAllPositions);
  }

  Future<void> _createPosition(
    _CreatePosition event,
    Emitter<PositionsState> emit,
  ) async {
    emit(state.copyWith(stateStatus: const StateStatus.loading()));
    try {
      final position = event.model;
      await addPositionUseCase.call(position);
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

  Future<void> _getAllPositions(
    _GetAllPositions event,
    Emitter<PositionsState> emit,
  ) async {
    emit(state.copyWith(stateStatus: const StateStatus.loading()));
    try {
      final positions = await getAllPositionsUseCase.call();
      emit(
        state.copyWith(stateStatus: const StateStatus.success(), positions: positions),
      );
    } catch (e) {
      final errorMessage = e is Failure ? e.message : 'Произошла ошибка';
      emit(state.copyWith(stateStatus: StateStatus.failure(message: errorMessage!)));
    }
  }
}
