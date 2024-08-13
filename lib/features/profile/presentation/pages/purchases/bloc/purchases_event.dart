part of 'purchases_bloc.dart';

@freezed
class PurchasesEvent with _$PurchasesEvent {
  const factory PurchasesEvent.getPurchasesList({required int pageNumber}) = _GetPurchasesList;
}
