import 'package:neobis_smart_tailor/features/marketplace/data/models/general_responce/general_responce.dart';

abstract class MarketplaceDataSource {
  Future<GeneralResponceModel> getEquipments({required int pageNumber});
  Future<GeneralResponceModel> getOrders({required int pageNumber});
  Future<GeneralResponceModel> getServices({required int pageNumber});
}
