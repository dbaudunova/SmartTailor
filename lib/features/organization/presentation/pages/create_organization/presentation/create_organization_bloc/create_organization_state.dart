part of 'create_organization_bloc.dart';

@freezed
class CreateOrganizationState with _$CreateOrganizationState {
  const factory CreateOrganizationState({
    required File? image,
    required final StateStatus stateStatus,
  }) = _CreateOrganizationState;
}
