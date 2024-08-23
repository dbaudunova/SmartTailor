part of 'announcement_bloc.dart';

@freezed
class AnnouncementState with _$AnnouncementState {
  const factory AnnouncementState({
    required final StateStatus stateStatus,
    required final List<AnnouncementEntity> equipments,
    required final List<AnnouncementEntity> orders,
    required final List<AnnouncementEntity> services,
    required final bool? lastForOrders,
    required final bool? lastForServices,
    required final bool? lastForEquipment,
    required final int ordersPageNumber,
    required final int equipmentsPageNumber,
    required final int servicesPageNumber,
    required final int ordersTotalCount,
    required final int equipmentTotalCount,
    required final int servicesTotalCount,
    required bool isLoadingMore,
    required final List<AdvertisementEntity> searchedAdvertisement,
    final OrderDetailedEntity? detailedOrder,
    final ServiceDetailedEntity? detailedService,
    final EquipmentDetailedEntity? detailedEquipment,
    @Default(false) bool isAnnouncementsLoaded,
  }) = _AnnouncementState;
}
