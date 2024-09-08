import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:neobis_smart_tailor/features/profile/domain/entitys/equipment_detailed_entity.dart';
import 'package:neobis_smart_tailor/features/profile/domain/entitys/order_detailed_entity.dart';

part 'my_detailed_annoucement_entity.freezed.dart';
part 'my_detailed_annoucement_entity.g.dart';

@freezed
class MyDetailedAnnounceEntity with _$MyDetailedAnnounceEntity {
  const factory MyDetailedAnnounceEntity({
    required int id,
    required String name,
    required String description,
    required double price,
    required String contactInfo,
    required String authorImage,
    required String authorFullName,
    required List<String> images,
    String? dateOfExecution,
    String? ordersStatus,
    List<OrderItems>? orderItems,
    List<OrderCandidates>? orderCandidates,
    OrganizationExecutor? executor,
    List<EquipmentBuyers>? equipmentBuyers,
    List<EquipmentBuyers>? serviceApplicants,
  }) = _MyDetailedAnnounceEntity;

  factory MyDetailedAnnounceEntity.fromJson(Map<String, dynamic> json) => _$MyDetailedAnnounceEntityFromJson(json);
}
