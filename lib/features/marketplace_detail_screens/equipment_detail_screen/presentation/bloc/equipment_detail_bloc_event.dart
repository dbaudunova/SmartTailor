part of 'equipment_detail_bloc.dart';

@freezed
class EquipmentDetailEvent with _$EquipmentDetailEvent {
  const factory EquipmentDetailEvent.getEquipment({int? id}) = _GetEquipment;
  const factory EquipmentDetailEvent.buyEquipment({int? id}) = _BuyEquipment;
}
