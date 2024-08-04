import 'package:neobis_smart_tailor/features/marketplace/data/models/general_model/general_model.dart';

abstract class MarketplaceDataSource {
  Future<List<GeneralOrderModel>> getEquipments({required int pageNumber});
  Future<List<GeneralOrderModel>> getOrders({required int pageNumber});
  Future<List<GeneralOrderModel>> getServices({required int pageNumber});
}
