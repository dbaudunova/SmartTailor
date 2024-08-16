part of 'announcement_bloc.dart';

@freezed
class AnnouncementState with _$AnnouncementState {
  const factory AnnouncementState ({
    required final StateStatus stateStatus,
    final OrderDetailedEntity? detailedOrder,
    final ServiceDetailedEntity? detailedService,
    final EquipmentDetailedEntity? detailedEquipment,
}) = _AnnouncementState;
}

