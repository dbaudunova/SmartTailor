import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_detailed_entity.g.dart';

class OrderDetailedEntity {
  final int? id;
  final String? name;
  final String? description;
  final double? price;
  final String? contactInfo;
  final String? authorImage;
  final String? authorFullName;
  final List<String>? orderImages;
  final String? dateOfExecution;
  final String? ordersStatus;
  final List<OrderItems>? orderItems;
  final List<OrderCandidates>? orderCandidates;
  final OrganizationExecutor? executor;

  OrderDetailedEntity({
    this.id,
    this.name,
    this.description,
    this.price,
    this.contactInfo,
    this.authorImage,
    this.authorFullName,
    this.orderImages,
    this.dateOfExecution,
    this.ordersStatus,
    this.orderItems,
    this.orderCandidates,
    this.executor,
  });
}

@JsonSerializable()
class OrganizationExecutor {
  final int? employeeId;
  final String? employeeFullName;
  final String? employeeEmail;
  final String? employeePhoneNumber;
  final String? organizationName;

  OrganizationExecutor({
    this.employeeId,
    this.employeeFullName,
    this.employeeEmail,
    this.employeePhoneNumber,
    this.organizationName,
  });

  factory OrganizationExecutor.fromJson(Map<String, dynamic> json) =>
      _$OrganizationExecutorFromJson(json);

  Map<String, dynamic> toJson() => _$OrganizationExecutorToJson(this);
}

@JsonSerializable()
class OrderItems {
  final String? size;
  final int? quantity;

  OrderItems({
    this.size,
    this.quantity,
  });

  factory OrderItems.fromJson(Map<String, dynamic> json) =>
      _$OrderItemsFromJson(json);

  Map<String, dynamic> toJson() => _$OrderItemsToJson(this);
}

@JsonSerializable()
class OrderCandidates {
  final int? employeeId;
  final String? employeeFullName;
  final String? employeeEmail;
  final String? employeePhoneNumber;
  final String? organizationName;

  OrderCandidates({
    this.employeeId,
    this.employeeFullName,
    this.employeeEmail,
    this.employeePhoneNumber,
    this.organizationName,
  });

  factory OrderCandidates.fromJson(Map<String, dynamic> json) =>
      _$OrderCandidatesFromJson(json);

  Map<String, dynamic> toJson() => _$OrderCandidatesToJson(this);
}
