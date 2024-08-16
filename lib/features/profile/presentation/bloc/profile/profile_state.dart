part of 'profile_bloc.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState({
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
    required final bool isLoadingMore,
    final ProfileEntity? profile,
    @Default(false) bool isProfileLoaded,
    @Default(false) bool isAnnouncementsLoaded,
  }) = _ProfileState;
}
