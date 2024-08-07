part of 'organization_bloc.dart';

@freezed
class OrganizationState with _$OrganizationState {
  const factory OrganizationState({
    required final StateStatus stateStatus,
    required final OrganizationInfoEntity organizationInfo,
  }) = _OrganizationState;
}
