import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:neobis_smart_tailor/core/network/entity/failure.dart';
import 'package:neobis_smart_tailor/core/network/entity/state_status.dart';
import 'package:neobis_smart_tailor/features/marketplace/domain/entitys/general_entity.dart';
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
            searchedEquipment: [],
            searchedOrders: [],
            searchedServices: [],
          ),
        ) {
    on<_LoadOrders>(_loadOrders);
    on<_LoadServices>(_loadServices);
    on<_LoadEquipments>(_loadEquipments);
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

  Future<void> _loadOrders(
    _LoadOrders event,
    Emitter<MarketplaceState> emit,
  ) async {
    try {
      final result = await getOrdersUseCase.call(pageNumber: event.page);
      emit(state.copyWith(
        stateStatus: const StateStatus.success(),
        orders: result.listEntitys,
        lastForOrders: result.isLast!,
      ));
    } catch (e) {
      final errorMessage = e is Failure ? e.message : 'Произошла ошибка';
      emit(state.copyWith(
        stateStatus: StateStatus.failure(message: errorMessage!),
      ));
    }
  }

  Future<void> _loadServices(
    _LoadServices event,
    Emitter<MarketplaceState> emit,
  ) async {
    try {
      final result = await getServicesUseCase.call(pageNumber: event.page);
      emit(state.copyWith(
        stateStatus: const StateStatus.success(),
        services: result.listEntitys,
        lastForServices: result.isLast!,
      ));
    } catch (e) {
      final errorMessage = e is Failure ? e.message : 'Произошла ошибка';
      emit(state.copyWith(
        stateStatus: StateStatus.failure(message: errorMessage!),
      ));
    }
  }

  Future<void> _loadEquipments(
    _LoadEquipments event,
    Emitter<MarketplaceState> emit,
  ) async {
    try {
      final result = await getEuipmentsUseCase.call(pageNumber: event.page);
      emit(state.copyWith(
        stateStatus: const StateStatus.success(),
        equipments: result.listEntitys,
        lastForEquipment: result.isLast!,
      ));
    } catch (e) {
      final errorMessage = e is Failure ? e.message : 'Произошла ошибка';
      emit(state.copyWith(
        stateStatus: StateStatus.failure(message: errorMessage!),
      ));
    }
  }
}
