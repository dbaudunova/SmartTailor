import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:neobis_smart_tailor/core/network/entity/failure.dart';
import 'package:neobis_smart_tailor/core/network/entity/state_status.dart';
import 'package:neobis_smart_tailor/features/organization/pages/positions/domain/entitys/position_entity.dart';
import 'package:neobis_smart_tailor/features/organization/pages/positions/domain/use_case/add_position_use_case.dart';
import 'package:neobis_smart_tailor/features/organization/pages/positions/domain/use_case/get_all_positions_use_case.dart';
import 'package:neobis_smart_tailor/features/organization/pages/positions/domain/use_case/get_available_access_rights_use_case.dart';
import 'package:neobis_smart_tailor/features/organization/pages/positions/domain/use_case/get_available_weights_use_case.dart';

part 'positions_event.dart';
part 'positions_state.dart';
part 'positions_bloc.freezed.dart';

@singleton
class PositionsBloc extends Bloc<PositionsEvent, PositionsState> {
  final AddPositionUseCase addPositionUseCase;
  final GetAllPositionsUseCase getAllPositionsUseCase;
  final GetAvailableAccessRightsUseCase getAvailableAccessRightsUseCase;
  final GetAvailableWeightsUseCase getAvailableWeightsUseCase;

  PositionsBloc(
    this.addPositionUseCase,
    this.getAllPositionsUseCase,
    this.getAvailableAccessRightsUseCase,
    this.getAvailableWeightsUseCase,
  ) : super(
          const PositionsState(stateStatus: StateStatus.initial(), positions: [], rights: [], weights: []),
        ) {
    on<_CreatePosition>(_createPosition);
    on<_GetAllPositions>(_getAllPositions);
    on<_GetAvailableAccessRights>(_getAvailableAccessRights);
    on<_GetAvailableWeights>(_getAvailableWeights);
  }

  Future<void> _getAvailableAccessRights(
    _GetAvailableAccessRights event,
    Emitter<PositionsState> emit,
  ) async {
    emit(state.copyWith(stateStatus: const StateStatus.loading()));
    try {
      var list = await getAvailableAccessRightsUseCase.call();
      emit(
        state.copyWith(rights: list),
      );
    } catch (e) {
      final errorMessage = e is Failure ? e.message : 'Произошла ошибка';
      emit(state.copyWith(stateStatus: StateStatus.failure(message: errorMessage!)));
    }
  }

  Future<void> _getAvailableWeights(
    _GetAvailableWeights event,
    Emitter<PositionsState> emit,
  ) async {
    emit(state.copyWith(stateStatus: const StateStatus.loading()));
    try {
      var list = await getAvailableWeightsUseCase.call();
      emit(
        state.copyWith(weights: list),
      );
    } catch (e) {
      final errorMessage = e is Failure ? e.message : 'Произошла ошибка';
      emit(state.copyWith(stateStatus: StateStatus.failure(message: errorMessage!)));
    }
  }

  Future<void> _createPosition(
    _CreatePosition event,
    Emitter<PositionsState> emit,
  ) async {
    emit(state.copyWith(stateStatus: const StateStatus.loading()));
    try {
      final position = event.entity;
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
