import 'package:neobis_smart_tailor/features/marketplace_detail_screens/service_detail_screen/domain/entitys/service_detail_entity.dart';

abstract class ServiceDetailRepo {
  Future<ServiceDetailEntity> getDetailService({int id});
  Future<void> sendRequestToService({required int id});
}
