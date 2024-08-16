part of 'positions_bloc.dart';

@freezed
class PositionsEvent with _$PositionsEvent {
  const factory PositionsEvent.createPosition({required PositionEntity entity}) = _CreatePosition;
  const factory PositionsEvent.getAllPositions() = _GetAllPositions;
}
