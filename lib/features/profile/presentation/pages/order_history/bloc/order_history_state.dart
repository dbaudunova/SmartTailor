part of 'order_history_bloc.dart';

@freezed
class OrderHistoryState with _$OrderHistoryState {
  const factory OrderHistoryState({
    required final StateStatus stateStatus,
    required final List<HistoryEntity>? currentPurchases,
    required final List<HistoryEntity>? completedPurchases,
    required final int totalCount,
    required final bool isLastforCurrent,
    required final bool isLastforCompleted,
    required final int pageCurrent,
    required final int pageCompleted,
  }) = _OrderHistoryState;
}
