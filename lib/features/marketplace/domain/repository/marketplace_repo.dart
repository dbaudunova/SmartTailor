import 'package:neobis_smart_tailor/features/marketplace/domain/entitys/general_responce_entity.dart';
import 'package:neobis_smart_tailor/features/marketplace/domain/entitys/search_entity.dart';

abstract class MarketplaceRepo {
  Future<GeneralResponceEntity> getEquipments({required int pageNumber});
  Future<GeneralResponceEntity> getOrders({required int pageNumber});
  Future<GeneralResponceEntity> getServices({required int pageNumber});
  Future<AdvertisementResponseEntity> getSearchServices({required int pageNumber, required String query});
  Future<AdvertisementResponseEntity> getSearchEquipment({required int pageNumber, required String query});
  Future<AdvertisementResponseEntity> getSearchOrder({required int pageNumber, required String query});
}
