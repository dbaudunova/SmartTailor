part of 'purchases_bloc.dart';

@freezed
class PurchasesEvent with _$PurchasesEvent {
  const factory PurchasesEvent.getMyPurchases() = _GetMyPurchases;
  const factory PurchasesEvent.loadMoreElements() = _LoadMoreElements;
  const factory PurchasesEvent.getDetail({required int id, required AnnouncementType type}) = _GetDetail;
}
