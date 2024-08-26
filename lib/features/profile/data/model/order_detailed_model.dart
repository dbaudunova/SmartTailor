import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:neobis_smart_tailor/features/profile/domain/model/order_detailed_entity.dart';

part 'order_detailed_model.g.dart';

@JsonSerializable()
class OrderDetailedModel extends OrderDetailedEntity {
  OrderDetailedModel({
    super.id,
    super.name,
    super.description,
    super.authorFullName,
    super.authorImage,
    super.contactInfo,
    super.dateOfExecution,
    super.orderCandidates,
    super.orderImages,
    super.orderItems,
    super.ordersStatus,
    super.price,
    super.executor,
  });

  factory OrderDetailedModel.fromJson(Map<String, dynamic> json) =>
      _$OrderDetailedModelFromJson(json);

  Map<String, dynamic> toJson() => _$OrderDetailedModelToJson(this);
}
