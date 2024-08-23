import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:neobis_smart_tailor/core/network/entity/failure.dart';
import 'package:neobis_smart_tailor/core/network/entity/state_status.dart';
import 'package:neobis_smart_tailor/features/marketplace/domain/entitys/common_entity.dart';
import 'package:neobis_smart_tailor/features/marketplace/domain/entitys/search_entity.dart';
import 'package:neobis_smart_tailor/features/marketplace/domain/use_case/get_equipments_use_case.dart';
import 'package:neobis_smart_tailor/features/marketplace/domain/use_case/get_orders_use_case.dart';
import 'package:neobis_smart_tailor/features/marketplace/domain/use_case/get_services_ude_case.dart';
import 'package:neobis_smart_tailor/features/marketplace/domain/use_case/search_equipment_use_case.dart';
import 'package:neobis_smart_tailor/features/marketplace/domain/use_case/search_order_use_case.dart';
import 'package:neobis_smart_tailor/features/marketplace/domain/use_case/search_service_use_case.dart';

part 'marketplace_event.dart';
part 'marketplace_state.dart';
part 'marketplace_bloc.freezed.dart';

@injectable
class MarketplaceBloc extends Bloc<MarketplaceEvent, MarketplaceState> {
  final GetEuipmentsUseCase getEuipmentsUseCase;
  final GetOrdersUseCase getOrdersUseCase;
  final GetServicesUseCase getServicesUseCase;
  final SearchEquipmentUseCase searchEquipmentUseCase;
  final SearchOrderUseCase searchOrderUseCase;
  final SearchServiceUseCase searchServiceUseCase;

  MarketplaceBloc(
    this.getEuipmentsUseCase,
    this.getOrdersUseCase,
    this.getServicesUseCase,
    this.searchEquipmentUseCase,
    this.searchOrderUseCase,
    this.searchServiceUseCase,
  ) : super(
          const MarketplaceState(
            stateStatus: StateStatus.initial(),
            services: [],
            equipments: [],
            orders: [],
            lastForEquipment: false,
            lastForOrders: false,
            lastForServices: false,
            ordersPageNumber: 0,
            equipmentsPageNumber: 0,
            servicesPageNumber: 0,
            equipmentTotalCount: 0,
            ordersTotalCount: 0,
            servicesTotalCount: 0,
            isLoadingMoreEquipments: false,
            isLoadingMoreOrders: false,
            isLoadingMoreServices: false,
            searchedEquipment: [],
            searchedOrders: [],
            searchedServices: [],
          ),
        ) {
    on<_GetOrders>(_getOrders);
    on<_GetEquipments>(_getEquipments);
    on<_GetServices>(_getServices);
    on<_GetAll>(_getAll);
    on<_LoadMoreOrders>(_loadMoreOrders);
    on<_LoadMoreEquipments>(_loadMoreEquipments);
    on<_LoadMoreServices>(_loadMoreServices);
    on<_SearchOrder>(_searchOrder);
    on<_SearchEquipment>(_searchEquipment);
    on<_SearchService>(_searchServices);
  }

  Future<void> _searchEquipment(
    _SearchEquipment event,
    Emitter<MarketplaceState> emit,
  ) async {
    emit(state.copyWith(stateStatus: const StateStatus.loading()));

    try {
      final result = await searchEquipmentUseCase.call(pageNumber: 0, query: event.query);
      emit(state.copyWith(stateStatus: const StateStatus.success(), searchedEquipment: result.advertisement));
    } catch (e) {
      final errorMessage = e is Failure ? e.message : 'Произошла ошибка';
      emit(state.copyWith(stateStatus: StateStatus.failure(message: errorMessage!)));
    }
  }

  Future<void> _searchServices(
    _SearchService event,
    Emitter<MarketplaceState> emit,
  ) async {
    emit(state.copyWith(stateStatus: const StateStatus.loading()));

    try {
      final result = await searchServiceUseCase.call(pageNumber: 0, query: event.query);
      emit(state.copyWith(stateStatus: const StateStatus.success(), searchedServices: result.advertisement));
    } catch (e) {
      final errorMessage = e is Failure ? e.message : 'Произошла ошибка';
      emit(state.copyWith(stateStatus: StateStatus.failure(message: errorMessage!)));
    }
  }

  Future<void> _searchOrder(
    _SearchOrder event,
    Emitter<MarketplaceState> emit,
  ) async {
    emit(state.copyWith(stateStatus: const StateStatus.loading()));

    try {
      final result = await searchOrderUseCase.call(pageNumber: 0, query: event.query);
      emit(state.copyWith(stateStatus: const StateStatus.success(), searchedOrders: result.advertisement));
    } catch (e) {
      final errorMessage = e is Failure ? e.message : 'Произошла ошибка';
      emit(state.copyWith(stateStatus: StateStatus.failure(message: errorMessage!)));
    }
  }

  Future<void> _getEquipments(
    _GetEquipments event,
    Emitter<MarketplaceState> emit,
  ) async {
    emit(state.copyWith(stateStatus: const StateStatus.loading()));

    try {
      final result = await getEuipmentsUseCase.call(pageNumber: 0);
      emit(state.copyWith(
        stateStatus: const StateStatus.success(),
        equipments: result.listEntitys,
        // equipmentsPageNumber: 1,
        // lastForEquipment: result.isLast
      ));
    } catch (e) {
      final errorMessage = e is Failure ? e.message : 'Произошла ошибка';
      emit(state.copyWith(stateStatus: StateStatus.failure(message: errorMessage!)));
    }
  }

  Future<void> _getOrders(
    _GetOrders event,
    Emitter<MarketplaceState> emit,
  ) async {
    emit(state.copyWith(stateStatus: const StateStatus.loading()));
    try {
      final result = await getOrdersUseCase.call(pageNumber: 0);
      emit(state.copyWith(
        stateStatus: const StateStatus.success(),
        orders: result.listEntitys,
        // ordersPageNumber: 1,
        // lastForOrders: result.isLast
      ));
    } catch (e) {
      final errorMessage = e is Failure ? e.message : 'Произошла ошибка';
      emit(state.copyWith(stateStatus: StateStatus.failure(message: errorMessage!)));
    }
  }

  Future<void> _getServices(
    _GetServices event,
    Emitter<MarketplaceState> emit,
  ) async {
    emit(state.copyWith(stateStatus: const StateStatus.loading()));
    try {
      final result = await getServicesUseCase.call(pageNumber: 0);
      emit(state.copyWith(
        stateStatus: const StateStatus.success(),
        services: result.listEntitys,
        // servicesPageNumber: 1,
        // lastForServices: result.isLast
      ));
    } catch (e) {
      final errorMessage = e is Failure ? e.message : 'Произошла ошибка';
      emit(state.copyWith(stateStatus: StateStatus.failure(message: errorMessage!)));
    }
  }

  Future<void> _loadMoreOrders(
    _LoadMoreOrders event,
    Emitter<MarketplaceState> emit,
  ) async {
    if (state.isLoadingMoreOrders) return;
    emit(state.copyWith(isLoadingMoreOrders: true));
    try {
      final result = await getOrdersUseCase.call(pageNumber: state.ordersPageNumber);
      emit(state.copyWith(
        stateStatus: const StateStatus.success(),
        orders: List<GeneralEntity>.from(state.orders)..addAll(result.listEntitys),
        ordersPageNumber: state.ordersPageNumber + 1,
        lastForOrders: result.isLast!,
        isLoadingMoreOrders: false,
      ));
    } catch (e) {
      final errorMessage = e is Failure ? e.message : 'Произошла ошибка';
      emit(state.copyWith(
        stateStatus: StateStatus.failure(message: errorMessage!),
        isLoadingMoreOrders: false,
      ));
    }
  }

  Future<void> _loadMoreEquipments(
    _LoadMoreEquipments event,
    Emitter<MarketplaceState> emit,
  ) async {
    if (state.isLoadingMoreEquipments) return;
    emit(state.copyWith(isLoadingMoreEquipments: true));

    try {
      final result = await getEuipmentsUseCase.call(pageNumber: state.equipmentsPageNumber);
      emit(state.copyWith(
        stateStatus: const StateStatus.success(),
        equipments: List<GeneralEntity>.from(state.equipments)..addAll(result.listEntitys),
        equipmentsPageNumber: state.equipmentsPageNumber + 1,
        isLoadingMoreEquipments: false,
        lastForEquipment: result.isLast!,
      ));
    } catch (e) {
      final errorMessage = e is Failure ? e.message : 'Произошла ошибка';
      emit(state.copyWith(
        stateStatus: StateStatus.failure(message: errorMessage!),
        isLoadingMoreEquipments: false,
      ));
    }
  }

  Future<void> _loadMoreServices(
    _LoadMoreServices event,
    Emitter<MarketplaceState> emit,
  ) async {
    if (state.isLoadingMoreServices) return;
    emit(state.copyWith(isLoadingMoreServices: true));

    try {
      final result = await getServicesUseCase.call(pageNumber: state.servicesPageNumber);
      emit(state.copyWith(
        stateStatus: const StateStatus.success(),
        services: List<GeneralEntity>.from(state.services)..addAll(result.listEntitys),
        servicesPageNumber: state.servicesPageNumber + 1,
        isLoadingMoreServices: false,
        lastForServices: result.isLast!,
      ));
    } catch (e) {
      final errorMessage = e is Failure ? e.message : 'Произошла ошибка';
      emit(state.copyWith(
        stateStatus: StateStatus.failure(message: errorMessage!),
        isLoadingMoreServices: false,
      ));
    }
  }

  Future<void> _getAll(
    _GetAll event,
    Emitter<MarketplaceState> emit,
  ) async {
    emit(state.copyWith(stateStatus: const StateStatus.loading()));
    try {
      final results = await Future.wait([
        getServicesUseCase.call(pageNumber: 0),
        getOrdersUseCase.call(pageNumber: 0),
        getEuipmentsUseCase.call(pageNumber: 0),
      ]);

      final services = results[0].listEntitys;
      final orders = results[1].listEntitys;
      final equipments = results[2].listEntitys;

      emit(state.copyWith(
        stateStatus: const StateStatus.success(),
        services: services,
        equipments: equipments,
        orders: orders,
        lastForEquipment: results[2].isLast,
        lastForOrders: results[1].isLast,
        lastForServices: results[0].isLast,
        servicesPageNumber: 1,
        ordersPageNumber: 1,
        equipmentsPageNumber: 1,
        equipmentTotalCount: results[2].totalCount,
        ordersTotalCount: results[1].totalCount,
        servicesTotalCount: results[0].totalCount,
      ));
    } catch (e) {
      final errorMessage = e is Failure ? e.message : 'Произошла ошибка';
      emit(state.copyWith(stateStatus: StateStatus.failure(message: errorMessage!)));
    }
  }
}
