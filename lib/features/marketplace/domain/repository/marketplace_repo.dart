import 'package:neobis_smart_tailor/features/marketplace/domain/entitys/equipment_entity.dart';
import 'package:neobis_smart_tailor/features/marketplace/domain/entitys/order_entity.dart';
import 'package:neobis_smart_tailor/features/marketplace/domain/entitys/service_entity.dart';

abstract class MarketplaceRepo {
  Future<List<EquipmentEntity>> getEquipments();
  Future<List<OrderEntity>> getOrders();
  Future<List<ServiceEntity>> getServices();
}
