import 'package:neobis_smart_tailor/features/marketplace/domain/entitys/common_entity.dart';

abstract class MarketplaceRepo {
  Future<List<GeneralEntity>> getEquipments();
  Future<List<GeneralEntity>> getOrders();
  Future<List<GeneralEntity>> getServices();
}
