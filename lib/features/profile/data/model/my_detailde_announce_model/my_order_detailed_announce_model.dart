import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:neobis_smart_tailor/features/profile/data/model/my_detailde_announce_model/my_detailed_announce_model.dart';
import 'package:neobis_smart_tailor/features/profile/domain/entitys/equipment_detailed_entity.dart';
import 'package:neobis_smart_tailor/features/profile/domain/entitys/order_detailed_entity.dart';

part 'my_order_detailed_announce_model.g.dart';

// class OrderAnnounceDetaileModel extends MyDetailedAnnounceModel {
//   final int _id;
//   final String _name;
//   final String _description;
//   final double _price;
//   final String _contactInfo;
//   final String _authorImage;
//   final String _authorFullName;
//   final List<String> _orderImages;
//   final String? _dateOfExecution;
//   final String? _ordersStatus;
//   final List<OrderItems>? _orderItems;
//   final List<OrderCandidates>? _orderCandidates;
//   final OrganizationExecutor? _executor;

//   OrderAnnounceDetaileModel({
//     required int id,
//     required String name,
//     required String description,
//     required double price,
//     required String contactInfo,
//     required String authorImage,
//     required String authorFullName,
//     required List<String> orderImages,
//     String? dateOfExecution,
//     String? status,
//     List<OrderItems>? items,
//     List<OrderCandidates>? candidates,
//     OrganizationExecutor? executor,
//   })  : _id = id,
//         _name = name,
//         _description = description,
//         _price = price,
//         _contactInfo = contactInfo,
//         _authorImage = authorImage,
//         _authorFullName = authorFullName,
//         _orderImages = orderImages,
//         _dateOfExecution = dateOfExecution,
//         _ordersStatus = status,
//         _orderItems = items,
//         _orderCandidates = candidates,
//         _executor = executor;

//   @override
//   int get id => _id;

//   @override
//   String get name => _name;

//   @override
//   String get description => _description;

//   @override
//   double get price => _price;

//   @override
//   String get contactInfo => _contactInfo;

//   @override
//   String get authorImage => _authorImage;

//   @override
//   String get authorFullName => _authorFullName;

//   @override
//   List<String> get images => _orderImages;

//   @override
//   String? get dateOfExecution => _dateOfExecution;

//   @override
//   String? get ordersStatus => _ordersStatus;

//   @override
//   List<OrderItems>? get orderItems => _orderItems;

//   @override
//   List<OrderCandidates>? get orderCandidates => _orderCandidates;

//   @override
//   OrganizationExecutor? get executor => _executor;

//   @override
//   List<EquipmentBuyers>? get equipmentBuyers => null;

//   @override
//   List<EquipmentBuyers>? get serviceApplicants => null;
// }

@JsonSerializable()
class MyOrderAnnounceDetaileModel extends MyDetailedAnnounceModel {
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
  final List<String> orderImages;
  @override
  final String? dateOfExecution;
  @override
  final String? ordersStatus;
  @override
  final List<OrderItems>? orderItems;
  @override
  final List<OrderCandidates>? orderCandidates;
  @override
  final OrganizationExecutor? executor;

  MyOrderAnnounceDetaileModel({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.contactInfo,
    required this.authorImage,
    required this.authorFullName,
    required this.orderImages,
    this.dateOfExecution,
    this.ordersStatus,
    this.orderItems,
    this.orderCandidates,
    this.executor,
  });

  factory MyOrderAnnounceDetaileModel.fromJson(Map<String, dynamic> json) =>
      _$MyOrderAnnounceDetaileModelFromJson(json);

  Map<String, dynamic> toJson() => _$MyOrderAnnounceDetaileModelToJson(this);

  @override
  List<EquipmentBuyers>? get equipmentBuyers => null;

  @override
  List<String> get images => orderImages;

  @override
  List<EquipmentBuyers>? get serviceApplicants => null;
}
