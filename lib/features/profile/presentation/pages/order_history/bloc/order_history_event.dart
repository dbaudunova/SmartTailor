part of 'order_history_bloc.dart';

@freezed
class OrderHistoryEvent with _$OrderHistoryEvent {
  const factory OrderHistoryEvent.getCurrentHistory() = _GetCurrentHistory;
  const factory OrderHistoryEvent.loadMoreCurrent() = _LoadMoreCurrent;
  const factory OrderHistoryEvent.getComletedHistory() = _GetCompletedHistory;
  const factory OrderHistoryEvent.loadMoreCompleted() = _LoadMoreCompleted;
}
