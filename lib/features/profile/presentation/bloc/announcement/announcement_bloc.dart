import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:neobis_smart_tailor/core/network/entity/failure.dart';
import 'package:neobis_smart_tailor/core/network/entity/state_status.dart';
import 'package:neobis_smart_tailor/features/profile/domain/model/announcement_entity.dart';
import 'package:neobis_smart_tailor/features/profile/domain/model/equipment_detailed_entity.dart';
import 'package:neobis_smart_tailor/features/profile/domain/model/order_detailed_entity.dart';
import 'package:neobis_smart_tailor/features/profile/domain/model/service_detailed_entity.dart';
import 'package:neobis_smart_tailor/features/profile/domain/use_case/get_equipment_detailed_by_id_use_case.dart';
import 'package:neobis_smart_tailor/features/profile/domain/use_case/get_my_equipments_use_case.dart';
import 'package:neobis_smart_tailor/features/profile/domain/use_case/get_my_orders_use_case.dart';
import 'package:neobis_smart_tailor/features/profile/domain/use_case/get_my_services_use_case.dart';
import 'package:neobis_smart_tailor/features/profile/domain/use_case/get_order_detailed_by_id_use_case.dart';
import 'package:neobis_smart_tailor/features/profile/domain/use_case/get_service_detailed_by_id_use_case.dart';

part 'announcement_event.dart';

part 'announcement_state.dart';

part 'announcement_bloc.freezed.dart';

@injectable
class AnnouncementBloc extends Bloc<AnnouncementEvent, AnnouncementState> {
  final GetOrderDetailedByIdUseCase getOrderDetailedByIdUseCase;
  final GetEquipmentDetailedByIdUseCase getEquipmentDetailedByIdUseCase;
  final GetServiceDetailedByIdUseCase getServiceDetailedByIdUseCase;
  final GetMyOrdersUseCase getMyOrdersUseCase;
  final GetMyEquipmentsUseCase getMyEquipmentsUseCase;
  final GetMyServicesUseCase getMyServicesUseCase;

  AnnouncementBloc(
    this.getOrderDetailedByIdUseCase,
    this.getServiceDetailedByIdUseCase,
    this.getEquipmentDetailedByIdUseCase,
    this.getMyOrdersUseCase,
    this.getMyEquipmentsUseCase,
    this.getMyServicesUseCase,
  ) : super(
          const AnnouncementState(
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
            isLoadingMore: false,
          ),
        ) {
    on<_GetOrders>(_getMyOrders);
    on<_GetEquipments>(_getMyEquipments);
    on<_GetServices>(_getMyServices);
    on<_GetAll>(_getAll);
    on<_LoadMoreOrders>(_loadMoreOrders);
    on<_LoadMoreEquipments>(_loadMoreEquipments);
    on<_LoadMoreServices>(_loadMoreServices);
    on<_GetOrderDetailed>(_getOrderDetailed);
    on<_GetEquipmentDetailed>(_getEquipmentDetailed);
    on<_GetServiceDetailed>(_getServiceDetailed);
  }

  Future<void> _getMyEquipments(
    _GetEquipments event,
    Emitter<AnnouncementState> emit,
  ) async {
    emit(state.copyWith(stateStatus: const StateStatus.loading()));

    try {
      final result = await getMyEquipmentsUseCase.call(pageNumber: 0);
      print(result.totalCount);
      emit(state.copyWith(
          stateStatus: const StateStatus.success(),
          equipments: result.advertisement ?? [],
          equipmentsPageNumber: 1,
          isAnnouncementsLoaded: true,
          lastForEquipment: result.isLast));
    } catch (e) {
      final errorMessage = e is Failure ? e.message : 'Произошла ошибка';
      emit(state.copyWith(stateStatus: StateStatus.failure(message: errorMessage!)));
    }
  }

  Future<void> _getMyOrders(
    _GetOrders event,
    Emitter<AnnouncementState> emit,
  ) async {
    emit(state.copyWith(stateStatus: const StateStatus.loading()));
    try {
      final result = await getMyOrdersUseCase.call(pageNumber: 0);
      print(result.totalCount);
      emit(state.copyWith(
          stateStatus: const StateStatus.success(),
          orders: result.advertisement ?? [],
          ordersPageNumber: 1,
          isAnnouncementsLoaded: true,
          lastForOrders: result.isLast));
    } catch (e) {
      final errorMessage = e is Failure ? e.message : 'Произошла ошибка';
      emit(state.copyWith(stateStatus: StateStatus.failure(message: errorMessage!)));
    }
  }

  Future<void> _getMyServices(
    _GetServices event,
    Emitter<AnnouncementState> emit,
  ) async {
    emit(state.copyWith(stateStatus: const StateStatus.loading()));
    try {
      final result = await getMyServicesUseCase.call(pageNumber: 0);
      print(result.totalCount);
      emit(state.copyWith(
          stateStatus: const StateStatus.success(),
          services: result.advertisement ?? [],
          servicesPageNumber: 1,
          isAnnouncementsLoaded: true,
          lastForServices: result.isLast));
    } catch (e) {
      final errorMessage = e is Failure ? e.message : 'Произошла ошибка';
      emit(state.copyWith(stateStatus: StateStatus.failure(message: errorMessage!)));
    }
  }

  Future<void> _loadMoreOrders(
    _LoadMoreOrders event,
    Emitter<AnnouncementState> emit,
  ) async {
    if (state.isLoadingMore) {
      return;
    }
    emit(state.copyWith(isLoadingMore: true));
    try {
      final result = await getMyOrdersUseCase.call(pageNumber: state.ordersPageNumber);
      emit(state.copyWith(
        stateStatus: const StateStatus.success(),
        orders: List<AnnouncementEntity>.from(state.orders)..addAll(result.advertisement ?? []),
        ordersPageNumber: state.ordersPageNumber + 1,
        lastForOrders: result.isLast!,
        isLoadingMore: false,
      ));
    } catch (e) {
      final errorMessage = e is Failure ? e.message : 'Произошла ошибка';
      emit(state.copyWith(
        stateStatus: StateStatus.failure(message: errorMessage!),
        isLoadingMore: false,
      ));
    }
  }

  Future<void> _loadMoreEquipments(
    _LoadMoreEquipments event,
    Emitter<AnnouncementState> emit,
  ) async {
    if (state.isLoadingMore) {
      return;
    }
    emit(state.copyWith(isLoadingMore: true));
    try {
      final result = await getMyEquipmentsUseCase.call(pageNumber: state.equipmentsPageNumber);
      emit(state.copyWith(
        stateStatus: const StateStatus.success(),
        equipments: List<AnnouncementEntity>.from(state.equipments)..addAll(result.advertisement ?? []),
        equipmentsPageNumber: state.equipmentsPageNumber + 1,
        isLoadingMore: result.isLast!,
        lastForEquipment: result.isLast!,
      ));
    } catch (e) {
      final errorMessage = e is Failure ? e.message : 'Произошла ошибка';
      emit(state.copyWith(
        stateStatus: StateStatus.failure(message: errorMessage!),
        isLoadingMore: false,
      ));
    }
  }

  Future<void> _loadMoreServices(
    _LoadMoreServices event,
    Emitter<AnnouncementState> emit,
  ) async {
    if (state.isLoadingMore) {
      return;
    }
    emit(state.copyWith(isLoadingMore: true));
    try {
      final result = await getMyServicesUseCase.call(pageNumber: state.servicesPageNumber);
      emit(state.copyWith(
        stateStatus: const StateStatus.success(),
        services: List<AnnouncementEntity>.from(state.services)..addAll(result.advertisement ?? []),
        servicesPageNumber: state.servicesPageNumber + 1,
        isLoadingMore: result.isLast!,
        lastForServices: result.isLast!,
      ));
    } catch (e) {
      final errorMessage = e is Failure ? e.message : 'Произошла ошибка';
      emit(state.copyWith(
        stateStatus: StateStatus.failure(message: errorMessage!),
        isLoadingMore: false,
      ));
    }
  }

  Future<void> _getAll(
    _GetAll event,
    Emitter<AnnouncementState> emit,
  ) async {
    emit(state.copyWith(stateStatus: const StateStatus.loading()));
    try {
      final results = await Future.wait([
        getMyServicesUseCase.call(pageNumber: 0),
        getMyOrdersUseCase.call(pageNumber: 0),
        getMyEquipmentsUseCase.call(pageNumber: 0),
      ]);

      final services = results[0].advertisement;
      final orders = results[1].advertisement;
      final equipments = results[2].advertisement;

      emit(state.copyWith(
        stateStatus: const StateStatus.success(),
        services: services ?? [],
        equipments: equipments ?? [],
        orders: orders ?? [],
        lastForEquipment: results[2].isLast,
        lastForOrders: results[1].isLast,
        lastForServices: results[0].isLast,
        servicesPageNumber: 1,
        isAnnouncementsLoaded: true,
        ordersPageNumber: 1,
        equipmentsPageNumber: 1,
        equipmentTotalCount: results[2].totalCount ?? 0,
        ordersTotalCount: results[1].totalCount ?? 0,
        servicesTotalCount: results[0].totalCount ?? 0,
      ));
    } catch (e) {
      final errorMessage = e is Failure ? e.message : 'Произошла ошибка';
      emit(state.copyWith(stateStatus: StateStatus.failure(message: errorMessage!)));
    }
  }

  Future<void> _getOrderDetailed(
    _GetOrderDetailed event,
    Emitter<AnnouncementState> emit,
  ) async {
    emit(state.copyWith(stateStatus: const StateStatus.loading()));
    try {
      final result = await getOrderDetailedByIdUseCase.call(event.id!);
      emit(state.copyWith(stateStatus: const StateStatus.success(false), detailedOrder: result));
    } catch (e) {
      final errorMessage = e is Failure ? e.message : 'Произошла ошибка';
      emit(state.copyWith(stateStatus: StateStatus.failure(message: errorMessage!)));
    }
  }

  Future<void> _getEquipmentDetailed(
    _GetEquipmentDetailed event,
    Emitter<AnnouncementState> emit,
  ) async {
    emit(state.copyWith(stateStatus: const StateStatus.loading()));
    try {
      final result = await getEquipmentDetailedByIdUseCase.call(event.id!);
      emit(state.copyWith(stateStatus: const StateStatus.success(false), detailedEquipment: result));
    } catch (e) {
      final errorMessage = e is Failure ? e.message : 'Произошла ошибка';
      emit(state.copyWith(stateStatus: StateStatus.failure(message: errorMessage!)));
    }
  }

  Future<void> _getServiceDetailed(
    _GetServiceDetailed event,
    Emitter<AnnouncementState> emit,
  ) async {
    emit(state.copyWith(stateStatus: const StateStatus.loading()));
    try {
      final result = await getServiceDetailedByIdUseCase.call(event.id!);
      emit(state.copyWith(stateStatus: const StateStatus.success(false), detailedService: result));
    } catch (e) {
      final errorMessage = e is Failure ? e.message : 'Произошла ошибка';
      emit(state.copyWith(stateStatus: StateStatus.failure(message: errorMessage!)));
    }
  }
}
