part of 'purchases_bloc.dart';

@freezed
class PurchasesEvent with _$PurchasesEvent {
  const factory PurchasesEvent.getPurchasesList() = _GetPurchasesList;
  const factory PurchasesEvent.loadMoreElements() = _LoadMoreElements;
}
