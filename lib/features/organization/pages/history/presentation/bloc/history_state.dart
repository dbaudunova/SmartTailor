part of 'history_bloc.dart';

@freezed
class HistoryState with _$HistoryState {
  const factory HistoryState({
    required final StateStatus stateStatus,
    required final List<HistoryEntity> history,
    required final int totalCount,
    required final bool isLast,
  }) = _HistoryState;
}
