import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:neobis_smart_tailor/core/network/entity/failure.dart';
import 'package:neobis_smart_tailor/core/network/entity/state_status.dart';
import 'package:neobis_smart_tailor/features/profile/domain/entitys/my_history_entity.dart';
import 'package:neobis_smart_tailor/features/profile/domain/use_case/get_order_history_for_user_use_case.dart';

part 'order_history_event.dart';

part 'order_history_state.dart';

part 'order_history_bloc.freezed.dart';

@injectable
class OrderHistoryBloc extends Bloc<OrderHistoryEvent, OrderHistoryState> {
  final GetOrderHistoryForUserUseCase getOrderHistoryForUserUseCase;

  OrderHistoryBloc(
    this.getOrderHistoryForUserUseCase,
  ) : super(
          const OrderHistoryState(
            stateStatus: StateStatus.initial(),
            currentPurchases: [],
            completedPurchases: [],
            isLastforCompleted: false,
            isLastforCurrent: false,
            totalCount: 0,
            pageCompleted: 0,
            pageCurrent: 0,
          ),
        ) {
    on<_GetCurrentHistory>(_getCurrentHistory);
    on<_GetCompletedHistory>(_getCompletedHistory);
    on<_LoadMoreCurrent>(_loadMoreCurrent);
    on<_LoadMoreCompleted>(_loadMoreCompleted);
    on<_LoadCurrent>(_loadCurrent);
    on<_LoadCompleted>(_loadCompleted);
  }

  Future<void> _loadCompleted(
    _LoadCompleted event,
    Emitter<OrderHistoryState> emit,
  ) async {
    emit(state.copyWith(stateStatus: const StateStatus.loading()));
    try {
      var entity = await getOrderHistoryForUserUseCase.call(page: event.page, stage: 'completed');

      emit(state.copyWith(
        stateStatus: const StateStatus.success(),
        completedPurchases: entity.advertisement,
        isLastforCompleted: entity.isLast!,
      ));
    } catch (e) {
      final errorMessage = e is Failure ? e.message : 'Произошла ошибка';
      emit(state.copyWith(stateStatus: StateStatus.failure(message: errorMessage!)));
    }
  }

  Future<void> _loadCurrent(
    _LoadCurrent event,
    Emitter<OrderHistoryState> emit,
  ) async {
    emit(state.copyWith(stateStatus: const StateStatus.loading()));
    try {
      var entity = await getOrderHistoryForUserUseCase.call(page: event.page, stage: 'current');
      print(entity.advertisement!.length);
      print(entity.isLast);
      emit(state.copyWith(
        stateStatus: const StateStatus.success(),
        currentPurchases: entity.advertisement,
        isLastforCurrent: entity.isLast!,
      ));
    } catch (e) {
      final errorMessage = e is Failure ? e.message : 'Произошла ошибка';
      emit(state.copyWith(stateStatus: StateStatus.failure(message: errorMessage!)));
    }
  }

  Future<void> _loadMoreCurrent(
    _LoadMoreCurrent event,
    Emitter<OrderHistoryState> emit,
  ) async {
    if (state.isLastforCurrent) {
      return;
    } else {
      emit(state.copyWith(stateStatus: const StateStatus.loading()));
      try {
        var entity = await getOrderHistoryForUserUseCase.call(page: state.pageCurrent, stage: 'current');
        final updatedCurrent = List<HistoryEntity>.from(state.currentPurchases ?? [])
          ..addAll(entity.advertisement ?? []);

        emit(state.copyWith(
            stateStatus: const StateStatus.success(),
            currentPurchases: updatedCurrent,
            isLastforCurrent: entity.isLast ?? false,
            totalCount: entity.totalCount!,
            pageCompleted: state.pageCompleted + 1));
      } catch (e) {
        final errorMessage = e is Failure ? e.message : 'Произошла ошибка';
        emit(state.copyWith(stateStatus: StateStatus.failure(message: errorMessage!)));
      }
    }
  }

  Future<void> _loadMoreCompleted(
    _LoadMoreCompleted event,
    Emitter<OrderHistoryState> emit,
  ) async {
    if (state.isLastforCurrent) {
      return;
    } else {
      emit(state.copyWith(stateStatus: const StateStatus.loading()));
      try {
        var entity = await getOrderHistoryForUserUseCase.call(page: state.pageCurrent, stage: 'completed');
        final updatedCompleted = List<HistoryEntity>.from(state.completedPurchases ?? [])
          ..addAll(entity.advertisement ?? []);

        emit(state.copyWith(
            stateStatus: const StateStatus.success(),
            completedPurchases: updatedCompleted,
            isLastforCurrent: entity.isLast ?? false,
            totalCount: entity.totalCount!,
            pageCompleted: state.pageCompleted + 1));
      } catch (e) {
        final errorMessage = e is Failure ? e.message : 'Произошла ошибка';
        emit(state.copyWith(stateStatus: StateStatus.failure(message: errorMessage!)));
      }
    }
  }

  Future<void> _getCurrentHistory(
    _GetCurrentHistory event,
    Emitter<OrderHistoryState> emit,
  ) async {
    emit(state.copyWith(stateStatus: const StateStatus.loading()));
    try {
      var entity = await getOrderHistoryForUserUseCase.call(page: 0, stage: 'current');

      emit(state.copyWith(
          stateStatus: const StateStatus.success(),
          currentPurchases: entity.advertisement,
          isLastforCurrent: entity.isLast!,
          totalCount: entity.totalCount!,
          pageCurrent: 1));
    } catch (e) {
      final errorMessage = e is Failure ? e.message : 'Произошла ошибка';
      emit(state.copyWith(stateStatus: StateStatus.failure(message: errorMessage!)));
    }
  }

  Future<void> _getCompletedHistory(
    _GetCompletedHistory event,
    Emitter<OrderHistoryState> emit,
  ) async {
    emit(state.copyWith(stateStatus: const StateStatus.loading()));
    try {
      var entity = await getOrderHistoryForUserUseCase.call(page: 0, stage: 'completed');
      emit(state.copyWith(
          stateStatus: const StateStatus.success(),
          completedPurchases: entity.advertisement,
          isLastforCompleted: entity.isLast!,
          totalCount: entity.totalCount!,
          pageCompleted: 1));
    } catch (e) {
      final errorMessage = e is Failure ? e.message : 'Произошла ошибка';
      emit(state.copyWith(stateStatus: StateStatus.failure(message: errorMessage!)));
    }
  }
}
