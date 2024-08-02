import 'package:freezed_annotation/freezed_annotation.dart';

part 'equipment_detail_model.freezed.dart';
part 'equipment_detail_model.g.dart';

@freezed
class EquipmentDetailModel with _$EquipmentDetailModel {
  factory EquipmentDetailModel({
    required int id,
    required String name,
    required String description,
    required int price,
    required String contactInfo,
    required String authorImage,
    required String authorFullName,
    required List<String> equipmentImages,
    required int quantity,
  }) = _EquipmentDetailModel;

  factory EquipmentDetailModel.initial() {
    return EquipmentDetailModel(
        id: 0,
        name: '',
        description: '',
        price: 0,
        contactInfo: '',
        authorImage: '',
        authorFullName: '',
        equipmentImages: [],
        quantity: 0);
  }

  factory EquipmentDetailModel.fromJson(Map<String, dynamic> json) => _$EquipmentDetailModelFromJson(json);
}
