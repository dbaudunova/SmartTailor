import 'package:neobis_smart_tailor/features/marketplace/data/models/general_responce/general_responce.dart';
import 'package:neobis_smart_tailor/features/marketplace/data/models/search_model/advertisement_model.dart';

abstract class MarketplaceDataSource {
  Future<GeneralResponceModel> getEquipments({required int pageNumber});
  Future<GeneralResponceModel> getOrders({required int pageNumber});
  Future<GeneralResponceModel> getServices({required int pageNumber});
  Future<AdvertisementResponseModel> getSearchServices({required int pageNumber, required String query});
  Future<AdvertisementResponseModel> getSearchEquipment({required int pageNumber, required String query});
  Future<AdvertisementResponseModel> getSearchOrder({required int pageNumber, required String query});
}
