import 'package:freezed_annotation/freezed_annotation.dart';

part 'confirmation_model.freezed.dart';
part 'confirmation_model.g.dart';

@freezed
class ConfirmationModel with _$ConfirmationModel {
  const factory ConfirmationModel({
    required bool repeatCode,
  }) = _ConfirmationModel;

  factory ConfirmationModel.initial() {
    return const ConfirmationModel(repeatCode: false);
  }

  factory ConfirmationModel.fromJson(Map<String, dynamic> json) => _$ConfirmationModelFromJson(json);
}
