part of 'purchases_bloc.dart';

@freezed
class PurchasesState with _$PurchasesState {
  const factory PurchasesState({
    required final StateStatus stateStatus,
    required final List<PurchasesEntity>? purchases,
    required final int totalCount,
    required final bool isLast,
    required final int page,
  }) = _PurchasesState;
}
