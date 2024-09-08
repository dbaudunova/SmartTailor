import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:neobis_smart_tailor/features/profile/data/model/my_detailde_announce_model/my_detailed_announce_model.dart';
import 'package:neobis_smart_tailor/features/profile/domain/entitys/equipment_detailed_entity.dart';
import 'package:neobis_smart_tailor/features/profile/domain/entitys/order_detailed_entity.dart';

// class MyServiceDetailedAnnounceModel extends MyDetailedAnnounceModel {
//   final int _id;
//   final String _name;
//   final String _description;
//   final double _price;
//   final String _contactInfo;
//   final String _authorImage;
//   final String _authorFullName;
//   final List<String> _serviceImages;
//   final List<EquipmentBuyers>? _serviceApplicants;

//   MyServiceDetailedAnnounceModel({
//     required int id,
//     required String name,
//     required String description,
//     required double price,
//     required String contactInfo,
//     required String authorImage,
//     required String authorFullName,
//     required List<String> serviceImages,
//     List<EquipmentBuyers>? serviceApplicants,
//   })  : _id = id,
//         _name = name,
//         _description = description,
//         _price = price,
//         _contactInfo = contactInfo,
//         _authorImage = authorImage,
//         _authorFullName = authorFullName,
//         _serviceImages = serviceImages,
//         _serviceApplicants = serviceApplicants;

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
//   List<String> get images => _serviceImages;

//   @override
//   String? get dateOfExecution => null; // Не используется в этом классе

//   @override
//   String? get ordersStatus => null; // Не используется в этом классе

//   @override
//   List<OrderItems>? get orderItems => null; // Не используется в этом классе

//   @override
//   List<OrderCandidates>? get orderCandidates => null; // Не используется в этом классе

//   @override
//   OrganizationExecutor? get executor => null; // Не используется в этом классе

//   @override
//   List<EquipmentBuyers>? get equipmentBuyers => null; // Не используется в этом классе

//   @override
//   List<EquipmentBuyers>? get serviceApplicants => _serviceApplicants;
// }

part 'my_services_detailed_announce_model.g.dart';

@JsonSerializable()
class MyServiceDetailedAnnounceModel extends MyDetailedAnnounceModel {
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
  final List<String> serviceImages;
  @override
  final List<EquipmentBuyers>? serviceApplicants;

  MyServiceDetailedAnnounceModel({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.contactInfo,
    required this.authorImage,
    required this.authorFullName,
    required this.serviceImages,
    this.serviceApplicants,
  });

  factory MyServiceDetailedAnnounceModel.fromJson(Map<String, dynamic> json) =>
      _$MyServiceDetailedAnnounceModelFromJson(json);

  Map<String, dynamic> toJson() => _$MyServiceDetailedAnnounceModelToJson(this);

  @override
  String? get dateOfExecution => null;

  @override
  List<EquipmentBuyers>? get equipmentBuyers => null;

  @override
  OrganizationExecutor? get executor => null;

  @override
  List<String> get images => serviceImages;

  @override
  List<OrderCandidates>? get orderCandidates => null;

  @override
  List<OrderItems>? get orderItems => null;

  @override
  String? get ordersStatus => null;
}
