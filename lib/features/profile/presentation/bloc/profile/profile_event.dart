part of 'profile_bloc.dart';

@freezed
class ProfileEvent with _$ProfileEvent {
  const factory ProfileEvent.signOut() = _SignOut;
  const factory ProfileEvent.getProfileInfo() = _GetProfileInfo;
  const factory ProfileEvent.editProfileInfo(ProfileEntity profileEntity) = _EditProfileInfo;
  const factory ProfileEvent.sendSubscription() = _SendSubscription;
  const factory ProfileEvent.uploadImage(File imageFile) = _UploadImage;
  const factory ProfileEvent.getOrders() = _GetOrders;
  const factory ProfileEvent.getEquipments() = _GetEquipments;
  const factory ProfileEvent.getServices() = _GetServices;
  const factory ProfileEvent.getAll() = _GetAll;
  const factory ProfileEvent.loadMoreOrders() = _LoadMoreOrders;
  const factory ProfileEvent.loadMoreEquipments() = _LoadMoreEquipments;
  const factory ProfileEvent.loadMoreServices() = _LoadMoreServices;
}
