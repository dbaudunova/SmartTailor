import 'package:neobis_smart_tailor/features/marketplace/data/models/general_model/general_model.dart';

abstract class MarketplaceDataSource {
  Future<List<GeneralOrderModel>> getEquipments();
  Future<List<GeneralOrderModel>> getOrders();
  Future<List<GeneralOrderModel>> getServices();
}
