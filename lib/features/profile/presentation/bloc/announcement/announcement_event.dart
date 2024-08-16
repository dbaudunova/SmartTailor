part of 'announcement_bloc.dart';

@freezed
class AnnouncementEvent with _$AnnouncementEvent {
  const factory AnnouncementEvent.getOrderDetailed({int? id}) = _GetOrderDetailed;
  const factory AnnouncementEvent.getEquipmentDetailed({int? id}) = _GetEquipmentDetailed;
  const factory AnnouncementEvent.getServiceDetailed({int? id}) = _GetServiceDetailed;
}
