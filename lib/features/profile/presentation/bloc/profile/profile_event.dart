part of 'profile_bloc.dart';

@freezed
class ProfileEvent with _$ProfileEvent {
  const factory ProfileEvent.signOut() = _SignOut;
  const factory ProfileEvent.getProfileInfo() = _GetProfileInfo;
  const factory ProfileEvent.editProfileInfo(ProfileEntity profileEntity) = _EditProfileInfo;
  const factory ProfileEvent.sendSubscription() = _SendSubscription;
  const factory ProfileEvent.uploadImage() = _UploadImage;
  const factory ProfileEvent.getImage(ImageSource source, {int? imageQuality}) = _GetImage;
  // const factory ProfileEvent.captureImage() = _CaptureImage;
}
