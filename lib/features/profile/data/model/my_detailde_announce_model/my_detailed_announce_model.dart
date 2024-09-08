import 'package:neobis_smart_tailor/features/profile/domain/entitys/equipment_detailed_entity.dart';
import 'package:neobis_smart_tailor/features/profile/domain/entitys/order_detailed_entity.dart';

abstract class MyDetailedAnnounceModel {
  int get id;
  String get name;
  String get description;
  double get price;
  String get contactInfo;
  String get authorImage;
  String get authorFullName;
  List<String> get images;
  String? get dateOfExecution;
  String? get ordersStatus;
  List<OrderItems>? get orderItems;
  List<OrderCandidates>? get orderCandidates;
  OrganizationExecutor? get executor;
  List<EquipmentBuyers>? get equipmentBuyers;
  List<EquipmentBuyers>? get serviceApplicants;
}
