part of 'service_detail_bloc.dart';

@freezed
class ServiceDetailState with _$ServiceDetailState {
  const factory ServiceDetailState({
    required final StateStatus stateStatus,
    required final ServiceDetailEntity service,
  }) = _ServiceDetailState;
}
