import 'package:freezed_annotation/freezed_annotation.dart';

part 'position_model.freezed.dart';
part 'position_model.g.dart';

@freezed
class PositionModel with _$PositionModel {
  factory PositionModel({
    required String? positionName,
    required int? weight,
    required List<String>? accessRights,
  }) = _PositionModel;

  factory PositionModel.initial() {
    return PositionModel(
      positionName: '',
      accessRights: [],
      weight: 0,
    );
  }

  factory PositionModel.fromJson(Map<String, dynamic> json) => _$PositionModelFromJson(json);
}
