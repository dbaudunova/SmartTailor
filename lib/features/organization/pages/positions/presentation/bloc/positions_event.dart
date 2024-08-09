part of 'positions_bloc.dart';

@freezed
class PositionsEvent with _$PositionsEvent {
  const factory PositionsEvent.createPosition({required PositionModel model}) = _CreatePosition;
  const factory PositionsEvent.getAllPositions() = _GetAllPositions;
}
