import 'package:neobis_smart_tailor/features/marketplace/data/models/equipment_model/equipment_model.dart';
import 'package:neobis_smart_tailor/features/marketplace/data/models/order_model/order_model.dart';
import 'package:neobis_smart_tailor/features/marketplace/data/models/service_model/service_model.dart';

abstract class MarketplaceDataSource {
  Future<List<EquipmentModel>> getEquipments();
  Future<List<OrderModel>> getOrders();
  Future<List<ServiceModel>> getServices();
}
