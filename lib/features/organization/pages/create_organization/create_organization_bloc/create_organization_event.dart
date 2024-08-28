part of 'create_organization_bloc.dart';

@freezed
class CreateOrganizationEvent with _$CreateOrganizationEvent {
  // const factory OrganizationEvent.getOrganization() = _GetOrganization;
  const factory CreateOrganizationEvent.createOrganization({required CreateOrganizationModel createModel}) =
      _CreateOrganization;
  const factory CreateOrganizationEvent.addImage({required File image}) = _AddImage;
  const factory CreateOrganizationEvent.resetState() = _ResetState;
  const factory CreateOrganizationEvent.selectPhoto() = _SelectPhoto;
  const factory CreateOrganizationEvent.capturePhots() = _CapturePhoto;
}
