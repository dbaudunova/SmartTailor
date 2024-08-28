part of 'history_bloc.dart';

@freezed
class HistoryEvent with _$HistoryEvent {
  const factory HistoryEvent.getHistory() = _GetHistory;
  const factory HistoryEvent.getDetailedHistoryOrder({required int id}) = _GetDetailedHistoryOrder;
  const factory HistoryEvent.loadMoreHistory({required int id}) = _GetDetailsOrder;
}
