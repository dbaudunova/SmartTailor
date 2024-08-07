import 'package:neobis_smart_tailor/features/marketplace/domain/entitys/general_responce_entity.dart';

abstract class MarketplaceRepo {
  Future<GeneralResponceEntity> getEquipments({required int pageNumber});
  Future<GeneralResponceEntity> getOrders({required int pageNumber});
  Future<GeneralResponceEntity> getServices({required int pageNumber});
}
