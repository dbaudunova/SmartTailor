import 'package:freezed_annotation/freezed_annotation.dart';

part 'registration_model.freezed.dart';
part 'registration_model.g.dart';

@freezed
class RegistrationModel with _$RegistrationModel {
  const RegistrationModel._();

  const factory RegistrationModel({
    required String email,
    required String name,
    required String surname,
    required String patronymic,
    required String phoneNumber,
  }) = _RegistrationModel;

  factory RegistrationModel.initial() {
    return const RegistrationModel(
      name: '',
      surname: '',
      patronymic: '',
      email: '',
      phoneNumber: '',
    );
  }

  factory RegistrationModel.fromJson(Map<String, dynamic> json) =>
      _$RegistrationModelFromJson(json);
}
