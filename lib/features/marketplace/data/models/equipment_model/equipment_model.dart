import 'package:freezed_annotation/freezed_annotation.dart';

part 'equipment_model.freezed.dart';
part 'equipment_model.g.dart';

@freezed
class EquipmentModel with _$EquipmentModel {
  factory EquipmentModel(
      {required int equipmentId,
      required String equipmentPhotoUrl,
      required String name,
      required int price,
      required String authorImageUrl,
      required String authorFullName,
      required String description}) = _EquipmentModel;

  factory EquipmentModel.initial() {
    return EquipmentModel(
      // type: '',
      equipmentId: 0,
      equipmentPhotoUrl: '',
      name: '',
      price: 0,
      authorImageUrl: '',
      authorFullName: '',
      description: '',
    );
  }

  factory EquipmentModel.fromJson(Map<String, dynamic> json) => _$EquipmentModelFromJson(json);
}
