import 'package:neobis_smart_tailor/features/marketplace_detail_screens/service_detail_screen/data/models/service_detail_model/service_detail_model.dart';

abstract class ServiceDetailDataSource {
  Future<ServiceDetailModel> getDetailService({int id});
  Future<void> sendRequestToService({required int id});
}
