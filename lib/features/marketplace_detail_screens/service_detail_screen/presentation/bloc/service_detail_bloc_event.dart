part of 'service_detail_bloc.dart';

@freezed
class ServiceDetailEvent with _$ServiceDetailEvent {
  const factory ServiceDetailEvent.getService({int? id}) = _GetService;
}
