import 'package:freezed_annotation/freezed_annotation.dart';

part 'confirmation_model.freezed.dart';
part 'confirmation_model.g.dart';

@freezed
class ConfirmationModel with _$ConfirmationModel {
  const factory ConfirmationModel({
    required String email,
    required String code,
  }) = _ConfirmationModel;

  factory ConfirmationModel.initial() {
    return const ConfirmationModel(email: '', code: '');
  }

  factory ConfirmationModel.fromJson(Map<String, dynamic> json) => _$ConfirmationModelFromJson(json);
}
