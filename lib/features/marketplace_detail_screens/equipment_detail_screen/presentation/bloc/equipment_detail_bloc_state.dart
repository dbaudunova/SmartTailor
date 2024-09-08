part of 'equipment_detail_bloc.dart';

@freezed
class EquipmentDetailState with _$EquipmentDetailState {
  const factory EquipmentDetailState({
    required final StateStatus stateStatus,
    required final EquipmentDetailEntity? equipment,
  }) = _EquipmentDetailState;
}
