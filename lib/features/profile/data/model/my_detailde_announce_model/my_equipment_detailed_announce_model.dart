import 'package:json_annotation/json_annotation.dart';
import 'package:neobis_smart_tailor/features/profile/data/model/my_detailde_announce_model/my_detailed_announce_model.dart';
import 'package:neobis_smart_tailor/features/profile/domain/entitys/equipment_detailed_entity.dart';
import 'package:neobis_smart_tailor/features/profile/domain/entitys/order_detailed_entity.dart';

part 'my_equipment_detailed_announce_model.g.dart';

@JsonSerializable()
class MyEquipmentDetailedAnnounceModel extends MyDetailedAnnounceModel {
  @override
  final int id;
  @override
  final String name;
  @override
  final String description;
  @override
  final double price;
  @override
  final String contactInfo;
  @override
  final String authorImage;
  @override
  final String authorFullName;
  final List<String> equipmentImages;
  @override
  final List<EquipmentBuyers>? equipmentBuyers;

  MyEquipmentDetailedAnnounceModel({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.contactInfo,
    required this.authorImage,
    required this.authorFullName,
    required this.equipmentImages,
    this.equipmentBuyers,
  });

  factory MyEquipmentDetailedAnnounceModel.fromJson(Map<String, dynamic> json) =>
      _$MyEquipmentDetailedAnnounceModelFromJson(json);

  Map<String, dynamic> toJson() => _$MyEquipmentDetailedAnnounceModelToJson(this);

  @override
  String? get dateOfExecution => null;

  @override
  OrganizationExecutor? get executor => null;

  @override
  List<String> get images => equipmentImages;

  @override
  List<OrderCandidates>? get orderCandidates => null;

  @override
  List<OrderItems>? get orderItems => null;

  @override
  String? get ordersStatus => null;

  @override
  List<EquipmentBuyers>? get serviceApplicants => null;
}
