part of 'positions_bloc.dart';

@freezed
class PositionsState with _$PositionsState {
  const factory PositionsState({
    required final StateStatus stateStatus,
    required final List<PositionEntity> positions,
    required final List<int> weights,
    required final List<String> rights,
  }) = _PositionsState;
}
