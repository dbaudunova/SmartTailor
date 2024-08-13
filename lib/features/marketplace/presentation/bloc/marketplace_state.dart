part of 'marketplace_bloc.dart';

@freezed
class MarketplaceState with _$MarketplaceState {
  const factory MarketplaceState({
    required final StateStatus stateStatus,
    required final List<GeneralEntity> equipments,
    required final List<GeneralEntity> orders,
    required final List<GeneralEntity> services,
    required final bool? lastForOrders,
    required final bool? lastForServices,
    required final bool? lastForEquipment,
    required final int ordersPageNumber,
    required final int equipmentsPageNumber,
    required final int servicesPageNumber,
    required final int ordersTotalCount,
    required final int equipmentTotalCount,
    required final int servicesTotalCount,
    required bool isLoadingMoreOrders,
    required bool isLoadingMoreEquipments,
    required bool isLoadingMoreServices,
  }) = _MarketplaceState;
}
