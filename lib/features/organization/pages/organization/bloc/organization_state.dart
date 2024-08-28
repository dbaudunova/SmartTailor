part of 'organization_bloc.dart';

@freezed
class OrganizationState with _$OrganizationState {
  const factory OrganizationState(
      {required final StateStatus stateStatus,
      final OrganizationInfoEntity? organizationInfo,
      required final bool organizationHasLoaded}) = _OrganizationState;
}
